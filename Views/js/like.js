///// いいね！用のJavaScript

$(function(){   //←HTML要素の読み込み完了後、jQuery実行
  //いいね！の画像周辺（.like)がクリックされたとき
  $('.like').click(function(){
    const this_obj = $(this);  //$(this)には、クリックされたクラス名likeの要素が入る
    const tweet_id = $(this).data('tweet-id');
    const like_id = $(this).data('like-id');     
    const like_count_obj = $(this).parent().find('.js-like-count'); //いいね！の数字部分の要素を取得
    let like_count = Number(like_count_obj.html()); //上で取得したhtml要素のうち、要素内部にある数字を取得

    // like_count_obj.html(13);  クリックすると数字部分が、13になる
    
    if(like_id){
      // いいね！取り消し
      // 非同期通信 jqueryのajaxメソッド使用
      $.ajax({
        url:'like.php',
        type: 'POST',
        data:{
          'like_id':like_id
        },
        timeout:10000
      })
      // 取り消しが成功したときの処理を「登録」。実際はサーバー通信を待たず裏で実行。
      .done(() => {
      // いいね！カウントを減らす
        like_count --;
        like_count_obj.html(like_count); //いいね！の数字部分の要素を更新したいいね！数に置き換える
        this_obj.data('like-id', null); //クリックされたクラス名js-likeのデータ属性のlike_idの値をnullにする

        // いいね！ボタンの色をグレーに変更
        $(this).find('img').attr('src','../Views/img/icon-heart.svg');
      })
      // 通信に失敗したときの処理を「登録」。実際はサーバー通信を待たず裏で実行。
      .fail((data)=>{
        alert('処理中にエラーが発生しました。');
        console.log(data);
      });
    }else{
      // いいね！付与
      // 非同期通信
      $.ajax({
        url:'like.php',
        type:'POST',
        data:{
          'tweet_id':tweet_id
        },
        timeout:10000
      })
      // いいね！が成功したときの処理を「登録」。実際はサーバー通信を待たず裏で実行。
      .done((data)=>{
        // いいね！カウントを増やす
        like_count ++;
        like_count_obj.html(like_count); //いいね！の数字部分の要素を更新したいいね！数に置き換える
        this_obj.data('like-id', data['like_id']); //クリックされたクラス名js-likeの要素のlike_idを書き換え
        
        // いいね！ボタンの色を青に変更
        $(this).find('img').attr('src','../Views/img/icon-heart-twitterblue.svg');
      })
      // いいね！が失敗したときの処理を「登録」。実際はサーバー通信を待たず裏で実行。
      .fail((data)=>{
        alert('処理中にエラーが発生しました。');
        console.log(data);
      });
    }
  });
})

