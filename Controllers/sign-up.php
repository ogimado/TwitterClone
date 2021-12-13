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

  // バリデーション
  // // 文字数制限（すべての入力項目に対して行う）
  // $length = mb_strlen($data['nickname']);
  // if($length < 1 || $length > 10){
  //   $error_messages[] = 'ニックネームは1～10文字にしてください';
  // }
  // $length = mb_strlen($data['name']);
  // if($length < 1 || $length > 25){
  //   $error_messages[] = 'ユーザーネームは1～25文字にしてください';
  // }
  // $length = mb_strlen($data['email']);
  // if($length < 1 || $length > 25){
  //   $error_messages[] = 'メールアドレスは1～25文字にしてください';
  // }
  // $length = mb_strlen($data['password']);
  // if($length < 1 || $length > 25){
  //   $error_messages[] = 'パスワードは1～25文字にしてください';
  // }

  // //メールアドレス
  // if(!filter_var($data['email'],FILTER_VALIDATE_EMAIL)){
  //   $error_messages[] = 'メールアドレスが不正です';
  // }


  //ユーザーを作成・成功した時の処理
  if(createUser($data)){
    //ログイン画面に移動
    header('Location:' . HOME_URL . 'Controllers/sign-in.php');
    exit; //忘れがち！
  }
}

//画面表示
include_once '../Views/sign-up.php';