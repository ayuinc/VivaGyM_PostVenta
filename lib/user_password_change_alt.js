$(document).ready(function(){
	$("#user-password-change-form").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      password_alt: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      password_confirm_alt: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      current_password_alt: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      }
    }
  });
});