<?php

// ホームコントローラー

// 設定読み込み
include_once '../config.php';
// 便利な関数読み込み
include_once '../util.php';
// ツイートデータ操作モデル（Model tweets）を読み込む
include_once '../Models/tweets.php';

// TODO:ログインチェック
$user = getUserSession();
// 「値がない＝ログインしていない」➡ログイン画面に遷移
if(!$user){
  header('Location:'.HOME_URL.'Controllers/sign-in.php');
  exit;
} 

// 検索キーワードを取得
$keyword = null;
if(isset($_GET['keyword'])){
  $keyword = $_GET['keyword'];
}

// 表示用の変数
$view_user = $user;
$view_keyword = $keyword;

//////// ツイート一覧：データ ////////
// TO DO：モデルから取得
$view_tweets = findTweets($user,$keyword);

// 画面表示
include_once '../Views/search.php';