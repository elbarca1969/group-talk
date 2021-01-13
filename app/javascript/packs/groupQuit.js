$(function(){
  $(document).on('click', '#group-quit-open', function(){
    $('#group-quit-modal').show();
  });
  $(document).on('click', '#group-quit-btn-cancel', function(){
    $('#group-quit-modal').hide();
  });
  $(document).on('click', '#group-quit-modal', function(){
    $('#group-quit-modal').hide();
  });
});