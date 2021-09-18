///// いいね！用のJavaScript

$(function(){   //←HTML要素の読み込み完了後、jQuery実行
  //いいね！の画像周辺（.like)がクリックされたとき
  $('.like').click(function(){
    const this_obj = $(this);  //$(this)には、クリックされたクラス名js-likeの要素が入る
    const like_id = $(this).data('like-id'); //like_idの値の有無で、処理変化する。→data属性のlike-idから要素取得
    
    const like_count_obj = $(this).parent().find('.js-like-count'); //いいね！の数字部分の要素を取得
    let like_count = Number(like_count_obj.html()); //上で取得したhtml要素のうち、要素内部にある数字を取得

    // like_count_obj.html(13);  クリックすると数字部分が、13になる
    
    if(like_id){
      //いいね！取り消し
      //いいね！カウントを減らす
      like_count --;
      like_count_obj.html(like_count); //いいね！の数字部分の要素を更新したいいね！数に置き換える
      this_obj.data('like-id', null); //クリックされたクラス名js-likeのデータ属性のlike_idの値をnullにする
      
      // いいね！ボタンの色をグレーに変更
      $(this).find('img').attr('src','../Views/img/icon-heart.svg');
    }else{
      //いいね！付与
      //いいね！カウントを増やす
      like_count ++;
      like_count_obj.html(like_count); //いいね！の数字部分の要素を更新したいいね！数に置き換える
      this_obj.data('like-id', true); //クリックされたクラス名js-likeの要素のlike_idをtrueにする
      
      // いいね！ボタンの色を青に変更
      $(this).find('img').attr('src','../Views/img/icon-heart-twitterblue.svg');
    }
  });
})

