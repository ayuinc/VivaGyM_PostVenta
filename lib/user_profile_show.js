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
    if ($('#user-profile-form input').hasClass('input-blank')) {
      $('#user-profile-form input').removeClass('input-blank');
      $('#user-profile-form .submit-form').removeClass('hidden');
      $('.edit-form-trigger').addClass('hidden');
      $('.edit-form-cancel').removeClass('hidden');
      var x=document.getElementById("mySelect")
      x.disabled=false;

    } else {
      $('#user-profile-form input').addClass('input-blank');
      $('#user-profile-form .submit-form').addClass('hidden');
      $('.edit-form-trigger').removeClass('hidden');
      $('.edit-form-cancel').addClass('hidden');
      var x=document.getElementById("mySelect")
      x.disabled=true;      
    }
  }

  $("#user-profile-form").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    submitButtons: 'button[type="submit"]',
    fields: {
      nombre_propietario: {
        validators: {
          notEmpty: {
            message: "Nombre no puede estar vacío"
          }
        }
      },
      ap_mat: {
        validators: {
          notEmpty: {
            message: "Apellido materno no puede estar vacío"
          }
        }
      },
      ap_pat: {        
        validators: {
          notEmpty: {
            message: "Apellido paterno no puede estar vacío"
          }
        }
      },
      t_cel: {
        validators: {
          notEmpty: {
            message: "Teléfono celular no puede estar vacío"
          },
          digits: {
            message: "Teléfono debe ser numérico (sin espacios ni guiones)"
          }
        }
      },
      email_propietario: {
        validators: {
          notEmpty: {
            message: "Email no puede estar vacío"
          },
          emailAddress: {
            message: "Email debe ser una dirección real"
          }
        }
      }
    }
  });

});