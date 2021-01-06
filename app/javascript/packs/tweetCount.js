if (document.URL.match( "tweets/new" ) || document.URL.match(/groups\/\d+\/tweets\/\d+\/edit/)) {
  $(function(){
    var MAX = 400
    $('.input-text').on('keyup', function(){
      var len = textLength($(this).val());
      var color = len > MAX ? "red" : ""
      $(".input-text-count").css("color", color);
       $('.input-text-count').text(MAX - len);
    });
  })
  
  var regexp = /[\x01-\x7E\u{FF65}-\u{FF9F}]/mu;
  function textLength(text){
    var count = 0;
    for(i = 0; i < text.length; i++){
      var ch = text[i];
      count += regexp.test(new String(ch)) ? 1 : 2;
    }
    return count
  }  
}