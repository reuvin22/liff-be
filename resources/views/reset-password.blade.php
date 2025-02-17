<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>パスワードをリセット</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #3490dc;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #2779bd;
        }
        .error {
            color: red;
            font-size: 14px;
        }
        .success {
            color: green;
            font-size: 14px;
        }
        .countdown {
            font-size: 16px;
            margin-top: 15px;
            font-weight: bold;
            color: #333;
        }

        .toast {
            visibility: hidden;
            min-width: 250px;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 5px;
            z-index: 1000;
        }

        .toast.show {
            visibility: visible;
            animation: fadein 0.5s, fadeout 0.5s 4.5s;
        }

        @keyframes fadein {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeout {
            from { opacity: 1; }
            to { opacity: 0; }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>パスワードをリセットする</h2>

        @if(session('success'))
            <p class="success">{{ session('success') }}</p>
            <p class="countdown">リダイレクト中 <span id="countdown">5</span> 秒...</p>
        @endif

        <form action="{{ route('password.update') }}" method="POST">
            @csrf
            <input type="hidden" name="token" value="{{ request()->query('token') }}">
            <input type="hidden" name="email" value="{{ request()->query('email') }}">

            <label for="password">新しいパスワード</label>
            <input type="password" name="password" id="password" required>

            <label for="password_confirmation">パスワードを認証する</label>
            <input type="password" name="password_confirmation" id="password_confirmation" required>

            @if(session('error'))
                <p class="error">{{ session('error') }}</p>
            @endif

            <button type="submit">パスワードをリセット</button>
        </form>
    </div>

    <div id="toast" class="toast">ダッシュボードにリダイレクトしています...</div>

    <script>
        @if(session('success'))
            let timeLeft = 5;

            function updateCountdown() {
                document.getElementById("countdown").innerText = timeLeft;
                
                if (timeLeft === 3) {
                    showToast("Redirecting in 3 seconds...");
                }
                
                if (timeLeft <= 0) {
                    showToast("Redirecting now...");
                    setTimeout(() => {
                        window.location.href = "http://localhost:5173";
                    }, 500);
                }

                timeLeft--;
            }

            function showToast(message) {
                let toast = document.getElementById("toast");
                toast.innerText = message;
                toast.classList.add("show");
                setTimeout(() => {
                    toast.classList.remove("show");
                }, 5000);
            }

            showToast("パスワードのリセットに成功しました。すぐにリダイレクトします...");
            setInterval(updateCountdown, 1000);
        @endif
    </script>

</body>
</html>