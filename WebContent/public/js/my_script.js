function slideMenu() {
	var e = 240;
	var t = $("#menu").css("display");
	if (t != "none") {
		$("#container").animate({
			left : 0
		}, 100);
		$("#menu").show();
		$("#menu").animate({
			left : "-120"
		}, 100);
		setTimeout(function() {
			$("#menu").hide()
		}, 100);
		$("#slideicon").html('<i class="icon-reorder"></i>')
	} else {
		$("#slideicon").html('<i class="icon-remove"></i>');
		$("#container").animate({
			left : e
		}, 100);
		$("#menu").show();
		$("#menu").animate({
			left : 0
		}, 100)
	}
}
$(function() {
	$("table").footable();
	$("#change-page-size").change(function(e) {
		e.preventDefault();
		var t = $(this).val();
		$(".footable").data("page-size", t);
		$(".footable").trigger("footable_initialized")
	})
});

$(document).ready(function() {
	$("#back").click(function() {
		window.history.go(-1)
	})
})