<?php
//設定関連ファイル（config.php）を読み込む
include_once('../config.php');
//便利な関数（util.php）を読み込む
include_once('../util.php');
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <?php include_once('../Views/common/head.php'); ?>
    <title>会員登録画面 / Twitterクローン</title>
    <meta name="description" content="会員登録画面です">
</head>

<body class="signup text-center">
  <main class="form-signup">
    <form action="sign-up.php" method="post">
      <img src="<?php echo HOME_URL; ?>Views/img/logo-white.svg" alt="" class="logo-white">
      <h1>アカウントを作る</h1>
      <input type="text" class="form-control" name="nickname" placeholder="ニックネーム" maxlength="50" required autofocus>
      <input type="text" class="form-control" name="username" placeholder="ユーザー名、例）techis132" maxlength="50" required autocomplete="off">
      <input type="email" class="form-control" name="email" placeholder="メールアドレス" maxlength="254" required autocomplete="off">
      <input type="password" class="form-control" name="password" placeholder="パスワード" minlength="4" maxlength="128" required autocomplete="off">
      <button type="submit" class="w-100 btn btn-lg">登録する</button>
      <p class="mt-3 mb-2"><a href="sign-in.php">ログインする</a></p>
      <p class="mt-3 mb-2 text-muted">© 2021</p>
    </form>
  </main>
  <?php include_once('../Views/common/foot.php'); ?>
</body>

</html>