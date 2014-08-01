$(document).ready(function(){
	$("#gym_write_agente").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      username: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      screen_name: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      ap_pat: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },

      ap_mat: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      email: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      dni: {        
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
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

    }
  });


$("#gym_find_agente").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      screen_name: {
        validators: {
          notEmpty: {
            message: " "
          }
        }
      },
      ap_pat: {
        validators: {
          notEmpty: {
            message: " "
          }
        }
      },
      ap_mat: {        
        validators: {
          notEmpty: {
            message: " "
          }
        }
      },

    }
  });
});