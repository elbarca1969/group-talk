$(function(){
  $(document).on('click', '#group-delete-open', function(){
    $('#group-delete-modal').show();
  });
  $(document).on('click', '#group-delete-btn-cancel', function(){
    $('#group-delete-modal').hide();
  });
  $(document).on('click', '#group-delete-modal', function(){
    $('#group-delete-modal').hide();
  });
});