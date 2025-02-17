<p>こんにちは、</p>

<p>パスワードリセットのリクエストを受け取りました。ご自身でリクエストされた場合は、以下のボタンをクリックしてパスワードをリセットしてください。</p>

<p>
    <a href="{{ url('/reset-password?token=' . $token . '&email=' . urlencode($email)) }}"
       style="display: inline-block; background-color: #3490dc; color: white; padding: 12px 24px; text-decoration: none; font-size: 16px; border-radius: 5px;">
       パスワードをリセット
    </a>
</p>

<p>このメールに心当たりがない場合は、無視していただいて問題ありません。アカウントは引き続き安全です。</p>

<p>ご不明な点がございましたら、サポートチームまでお問い合わせください。</p>

<p>よろしくお願いいたします。<br><strong>Mirabo AIチーム</strong></p>
