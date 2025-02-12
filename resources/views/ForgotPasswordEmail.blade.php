<p>We received a request to reset your password. Click the button below to reset it:</p>
<p>
    <a href="{{ url('/reset-password?token=' . $token . '&email=' . urlencode($email)) }}"
       style="display: inline-block; background-color: #3490dc; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">
       Reset Password
    </a>
</p>
