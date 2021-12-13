<?php

// ホームコントローラ

// 設定読み込み
include_once '../config.php';
// 便利な関数読み込み
include_once '../util.php';
// ツイートデータ操作モデル（Model tweets）を読み込む
include_once '../Models/tweets.php';
// フォローデータ操作モデルを読み込む
include_once '../Models/follows.php';

// TODO:ログインチェック
$user = getUserSession();

// 「値がない＝ログインしていない」➡ログイン画面に遷移
if(!$user){
  header('Location:'.HOME_URL.'Controllers/sign-in.php');
  exit;
} 

// 自分がフォローしているユーザーIDを取得
$following_user_ids = findFollowimgUserIds($user['id']);
// 自分のツイートを表示したい➡自分のユーザーIDも追加
$following_user_ids[] = $user['id'];

// 表示用の変数
$view_user = $user;

//////// ツイート一覧：データ ////////
// TO DO：モデルから取得
$view_tweets = findTweets($user, null, $following_user_ids);

// 画面表示
include_once '../Views/home.php';