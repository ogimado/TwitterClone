<?php

// ホームコントローラ

// 設定読み込み
include_once '../config.php';
// 便利な関数読み込み
include_once '../util.php';


// TODO:ログインチェック
$user = getUserSession();
if(!$user){
  // 「値がない＝ログインしていない」➡ログイン画面に遷移
  header('Location:'.HOME_URL.'Controllers/sign-in.php');
  exit;
} 

// 表示用の変数
$view_user = $user;

//////// ツイート一覧：データ ////////
// TO DO：モデルから取得
$view_tweets = [
  [ 'user_id' => 1,
    'user_name' => 'taro',
    'user_nickname' => '太郎',
    'user_image_name' => 'sample-person.jpg',
    'tweet_body' => '入力内容<script>alert("スクリプトタグ使えちゃった？")</script>',
    'tweet_image_name' => null,
    'tweet_created_at' => '2021-09-01 19:00:00',
    'like_id' => null,
    'like_count' => 0
],
  [ 'user_id' => 2,
  
    'user_name' => 'jiro',
    'user_nickname' => '次郎',
    'user_image_name' => null,
    'tweet_body' => 'コワーキングスペースをオープンしました！',
    'tweet_image_name' => 'sample-post.jpg',
    'tweet_created_at' => '2021-03-14 14:00:00',
    'like_id' => 1,
    'like_count' => 1
    ]
];

// 画面表示
include_once '../Views/home.php';