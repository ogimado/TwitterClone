<?php

// notificationコントローラ

// 設定読み込み
include_once '../config.php';
// 便利な関数読み込み
include_once '../util.php';
// 通知データ操作モデル（notifications.php）を読み込む
include_once '../Models/notifications.php';

// TODO:ログインチェック
$user = getUserSession();

// 「値がない＝ログインしていない」➡ログイン画面に遷移
if(!$user){
  header('Location:'.HOME_URL.'Controllers/sign-in.php');
  exit;
} 

// 表示用の変数
$view_user = $user;

//////// 通知一覧 ////////
// TO DO：モデルから取得
$view_notifications = findNotifications($user['id']);

// 画面表示
include_once '../Views/notification.php';