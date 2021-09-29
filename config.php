<?php
// エラー表示設定
ini_set('display_errors',1);
// 日本時間にタイムゾーン設定
date_default_timezone_set('Asia/Tokyo');
// URLディレクトリ設定：「../」をHOME_URL（定数）置換→ファイルの場所変更時、この場所のみ変更で全反映。
define('HOME_URL','/TwitterClone/');

// DB接続情報
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASSWORD','');
define('DB_NAME','twitter_clone');