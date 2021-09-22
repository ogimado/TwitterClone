<?php
// エラー表示設定
ini_set('display_errors',1);
// 日本時間にタイムゾーン設定
date_default_timezone_set('Asia/Tokyo');
// URLディレクトリ設定：「../」をHOME_URL（定数）置換→ファイルの場所変更時、この場所のみ変更で全反映。
define('HOME_URL','/TwitterClone/');