$(function(){
  $(document).on('click', '#tweet-delete-open', function(){
    $('#tweet-delete-modal').show();
  });
  $(document).on('click', '#tweet-delete-btn-cancel', function(){
    $('#tweet-delete-modal').hide();
  });
  $(document).on('click', '#tweet-delete-modal', function(){
    $('#tweet-delete-modal').hide();
  });
});