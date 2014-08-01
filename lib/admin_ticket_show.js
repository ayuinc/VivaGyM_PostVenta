$(document).ready(function(){

  $('.edit-form-trigger').click(function(e){
    e.preventDefault();

    toggleEdit();

  });

  $('.edit-form-cancel').click(function(e){
    e.preventDefault();

    toggleEdit();

  });

  function toggleEdit() {
    if ($('.admin-ticket-show input').hasClass('input-blank')) {
      $('.admin-ticket-show input').removeClass('input-blank');
      $('.admin-ticket-show .submit-form').removeClass('hidden');
      $('.edit-form-trigger').addClass('hidden');
      $('.edit-form-cancel').removeClass('hidden');
    } else {
      $('.admin-ticket-show input').addClass('input-blank');
      $('.admin-ticket-show .submit-form').addClass('hidden');
      $('.edit-form-trigger').removeClass('hidden');
      $('.edit-form-cancel').addClass('hidden');
    }
  }

});