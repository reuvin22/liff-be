<?php

namespace App\Services;

use Kreait\Firebase\Factory;
use Kreait\Firebase\Storage;
use Illuminate\Support\Facades\Log;

class FirebaseStorageService
{
    protected $storage;
    protected $bucket;

    public function __construct()
    {
        $serviceAccountPath = storage_path('app/chatbot.json');

        if (!file_exists($serviceAccountPath)) {
            Log::error("Firebase Service Account JSON file not found: " . $serviceAccountPath);
            throw new \Exception("Firebase Service Account JSON file not found: " . $serviceAccountPath);
        }

        $factory = (new Factory)->withServiceAccount($serviceAccountPath);
        $this->storage = $factory->createStorage();
        $this->bucket = $this->storage->getBucket();
    }

    public function listFiles($folder)
    {
        $files = $this->bucket->objects(['prefix' => $folder]);

        $fileDetails = [];
        foreach ($files as $file) {
            $object = $this->bucket->object($file->name());

            if (substr($file->name(), -1) === '/') {
                continue;
            }

            $fileDetails[] = [
                'name' => $file->name(),
                'url' => $this->getSignedUrl($file->name()),
                'mime_type' => $object->info()['contentType'] ?? 'unknown',
            ];
        }

        if (empty($fileDetails)) {
            return null;
        }

        return $fileDetails[array_rand($fileDetails)];
    }

    public function getSignedUrl($fileName)
    {
        $object = $this->bucket->object($fileName);
        return $object->signedUrl(new \DateTime('+1 day'));
    }
}
