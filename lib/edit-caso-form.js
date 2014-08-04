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
    if ($('#edit-caso-form input').hasClass('input-blank')) {
      $('#edit-caso-form input').removeClass('input-blank');
      $('#edit-caso-form .submit-form').removeClass('hidden');
      $('.edit-form-trigger').addClass('hidden');
      $('.edit-form-cancel').removeClass('hidden');

      document.getElementById('tipo_problema_select').style.display="none";

    } else {
      $('#edit-caso-form input').addClass('input-blank');
      $('#edit-caso-form .submit-form').addClass('hidden');
      $('.edit-form-trigger').removeClass('hidden');
      $('.edit-form-cancel').addClass('hidden');

      var x=document.getElementById("mySelect");
      x.disabled=true;
    }
  }

  $("#edit-caso-form").bootstrapValidator({
    feedbackIcons: {
      valid: 'icon-checkmark',
      invalid: 'icon-cross',
      validating: 'icon-cw'
    },
    fields: {
      persona_asignada_gym: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      persona_asignada_viva: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      inspector_asignado: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },
      constructor_asignado: {
        validators: {
          notEmpty: {
            message: "Campo no puede estar vacío"
          }
        }
      },

    }
  });

});