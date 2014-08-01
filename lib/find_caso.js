$(document).ready(function(){
	$("#find_caso").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      caso_id: {
        validators: {
          notEmpty: {
            message: "Ingresar el nro. de caso"
          }
        }
      },

    }
  });
});