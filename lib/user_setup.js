$(document).ready(function(){
	
	$(".option-select").change(function() {
    console.log("change");
    if($(this).val() == "Si") {
      $(".datos-inquilino").removeClass("hidden");
    } else {
      $(".datos-inquilino").addClass("hidden");
    }
  });

  $("#user-setup-form").bootstrapValidator({
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