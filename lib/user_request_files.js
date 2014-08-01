$(document).ready(function(){
	$("#user-request-files-form").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      email: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          },
          emailAddress: {
            message: "Email debe ser una dirección real"
          }
        }
      }
    }
  });
});