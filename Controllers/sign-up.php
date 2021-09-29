<?php

// サインアップコントローラー

//設定関連ファイル（config.php）を読み込む
include_once '../config.php';
//便利な関数（util.php）を読み込む
include_once '../util.php';
//ユーザーデータ操作モデル
include_once '../Models/users.php';

//登録項目がすべて入力（真）されたとき
if(isset($_POST['nickname']) && isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password'])){

  //入力されたデータを1つの配列にまとめる
  $data = [
    'nickname' => $_POST['nickname'],
    'name' => $_POST['name'],
    'email' => $_POST['email'],
    'password' => $_POST['password'],
  ];

  //ユーザーを作成・成功した時の処理

  if(createUser($data)){
    //ログイン画面に移動
    header('Location:' . HOME_URL . 'Controllers/sign-in.php');
    exit; //忘れがち！
  }
}

//画面表示
include_once '../Views/sign-up.php';