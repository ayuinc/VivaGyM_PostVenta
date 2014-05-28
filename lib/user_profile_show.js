Template.userProfileShow.rendered = function(){

  $('.edit-form-trigger').click(function(e){
    e.preventDefault();

    toggleEdit();

  });

  $('.edit-form-cancel').click(function(e){
    e.preventDefault();

    toggleEdit();

  });

  function toggleEdit() {
    if ($('#user-profile-form input').hasClass('input-blank')) {
      $('#user-profile-form input').removeClass('input-blank');
      $('#user-profile-form .submit-form').removeClass('hidden');
      $('.edit-form-trigger').addClass('hidden');
      $('.edit-form-cancel').removeClass('hidden');
    } else {
      $('#user-profile-form input').addClass('input-blank');
      $('#user-profile-form .submit-form').addClass('hidden');
      $('.edit-form-trigger').removeClass('hidden');
      $('.edit-form-cancel').addClass('hidden');
    }
  }

};