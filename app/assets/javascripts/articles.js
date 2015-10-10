$(".comment-form").hide();
$(".reply-to").show();
$(".reply-to").click(function (){
  $("#comment-" + this.id).find(".reply-to").hide();
  $("#comment-" + this.id).find(".comment-form").show();
  $("#comment-" + this.id).find(".cancel-btn").show();
});
$(".cancel-btn").click(function (){
  $("#comment-" + this.id).find(".reply-to").show();
  $("#comment-" + this.id).find(".comment-form").hide();
});