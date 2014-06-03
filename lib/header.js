$(document).ready(function(){
	$("#user-notifications").popover({
		html: true,
		content: function	(){
			return $(".notifications-popover-content").html();
		},
		placement: "auto top"
	});
});