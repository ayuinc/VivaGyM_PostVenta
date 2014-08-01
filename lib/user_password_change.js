$(document).ready(function(){
	$("#user-password-change-form").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      password: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      password_confirm: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      current_password: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      }
    }
  });
});