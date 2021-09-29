<?php

// ユーザーデータを作成

/** ユーザーを作成
 * @param array $data
 * @return bool
 */

function createUser(array $data)
{
  // DBに接続
  $mysqli = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

  // 接続エラーがある場合 -> 処理停止
  if($mysqli->connect_errno){
    echo 'MySQLの接続に失敗しました。：' . $mysqli->connect_error . "\n";
    exit;
  }

  // 新規登録のSQLクエリ作成
  $query = 'INSERT INTO users (email,name,nickname,password) VALUES (?,?,?,?)';

  // プリペアドステートメントに、作成したクエリを登録
  $statement = $mysqli->prepare($query);

  // パスワードをハッシュ値に変更
  $data['password'] = password_hash( $data['password'] , PASSWORD_DEFAULT );

  // プリペアードステートメントにセットしたクエリのプレースフォルダの（?の部分）にカラム値を紐づける
  //               ➡ $quelyに値となる変数を入れる
  // 'ssss'でstring指定してある→エスケープ処理実行後、クエリに組み込める
  // 「エスケープ処理」・・・特殊文字を別の文字列に置き換える
  // 『SQLインジェクション対策』
  $statement -> bind_param('ssss',$data['email'],$data['name'],$data['nickname'],$data['password']);
  //              第一引数 'ssss'＝stringが４つ。値の型をセット。そのあと第２引数、第３引数…。

  // クエリを実行
  $response = $statement->execute();

  // 実行に失敗した場合 -> エラー表示
  if($response === false){
    echo 'エラーメッセージ：'.$mysqli->error."\n";
  }

  // DB接続を開放
  // ステートメントと接続を閉じる
  $statement -> close();
  // 接続を閉じる
  $mysqli -> close();

  return $response;
}