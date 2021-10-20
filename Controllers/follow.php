<?php

// フォローコントローラー

// 設定
include_once '../config.php';
// 便利な関数
include_once '../util.php';
// フォローデータ操作モデル読み込み
include_once '../Models/follows.php';

// ---------------------------------------
// ログインチェック
// ---------------------------------------
$user = getUserSession();
if(!$user){
  header('HTTP/1.0 404 Not Found');
  exit;
}

// ---------------------------------------
// フォローする
// ---------------------------------------
$follow_id = null;
// followed_user_idがPOSTされた場合
if(isset($_POST['followed_user_id'])){
  $data = [
    'followed_user_id' => $_POST['followed_user_id'],
    'follow_user_id' => $user['id'],
  ];

  $follow_id = createFollow($data);
}

// ---------------------------------------
// フォロー解除
// ---------------------------------------

// follow_idがPOSTされた場合
if(isset($_POST['follow_id'])){
  $data = [
    'follow_id' => $_POST['follow_id'],
    'follow_user_id' => $user['id'],
  ];

  deleteFollow($data);
}


// ---------------------------------------
// JSON形式で結果を返却する
// ---------------------------------------
// 返却したいデータを配列にまとめる
$response = [
  'message' => 'succsessful',
  // フォローした時に値が入る
  'follow_id' => $follow_id,
];
// 中身（Content）のタイプがJson形式
header('Content-type: application/json; charset=utf-8');
echo json_encode($response);