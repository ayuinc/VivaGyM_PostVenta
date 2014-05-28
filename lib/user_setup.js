$(document).ready(function(){
	var btnSubmit = $('#user-setup .button-submit'),
			dtInq = $('#user-setup .datos-inquilino'),
			select = $('#user-setup .option-select'),
			slctOpt = $("#user-setup .option-select option")[0];

	console.log(slctOpt);
	$(select).change(function(){
    if(slctOpt['selected'] === true) {
      console.log("Sí tiene cónyuge");
      $(dtInq).removeClass('hidden');
    } else {
      $(btnSubmit).removeClass('hidden');
    }
  });

});