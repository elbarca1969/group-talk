if (document.URL.match( "groups/new" ) || document.URL.match(/groups\/\d+\/edit/)) {
  $(function(){
    var MAX = 200
    $('.group-content-input-text').on('keyup', function(){
      var len = textLength($(this).val());
      var color = len > MAX ? "red" : ""
      $(".group-content-input-count").css("color", color);
       $('.group-content-input-count').text(MAX - len);
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