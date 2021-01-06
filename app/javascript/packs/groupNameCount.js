if (document.URL.match( "groups/new" )) {
  $(function(){
    var MAX = 70
    $('.group-name-input-text').on('keyup', function(){
      var len = textLength($(this).val());
      var color = len > MAX ? "red" : ""
      $(".group-name-input-count").css("color", color);
       $('.group-name-input-count').text(MAX - len);
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