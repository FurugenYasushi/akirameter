$(function(){

  $('#').masonry({ //親要素のクラスを指定
    itemSelector: '.', //整理される要素のclassを指定
    columnWidth: 235, //一列の幅サイズを指定
    isAnimated: true, //スムースアニメーション設定
    isFitWidth: true, //親要素の幅サイズがピッタリ
    isRTL: false,     //整理される要素が左右逆になる（読み言語などに）
    gutterWidth: 0,   //整理される要素間の溝の幅を指定
    containerStyle: { position: 'relative' }, //親要素にスタイルを追加できる
    isResizable: true //ウィンドウサイズが変更された時に並び替え
  });
   
});