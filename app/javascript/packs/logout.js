$(function(){
  $(document).on('click', '#logout-open', function(){
    $('#logout-modal').show();
  });
  $(document).on('click', '#logout-btn-cancel', function(){
    $('#logout-modal').hide();
  });
  $(document).on('click', '#logout-modal', function(){
    $('#logout-modal').hide();
  });
});