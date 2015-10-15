$(".comment-edit-form").hide();

$( ".comment-body" ).click(function() {
  $( this ).hide().after("<%= j render "comments/form"%>");
  // $( this ).slideUp();
  // $( this ).sli("<%= j render "comments/form"%>");
});
// $(".comment-body").click(function (){

//   $("#comment-" + this.id).find("p").hide();

// });

// $(".cancel-reply").click(function (){
//   $(".comment").find(".comment-form").hide();
//   $("#comment-" + this.id).find(".comment-form").show();
//   $("#comment-" + this.id).find(".cancel-btn").show();



// $(".cancel-reply").hide();
// $(".reply-to").show();
// $(".reply-to").click(function (){
//   $("#comment-" + this.id).find(".reply-to").hide();
//   $("#comment-" + this.id).find(".comment-form").show();
//   $("#comment-" + this.id).find(".cancel-btn").show();
// });
// $(".cancel-btn").click(function (){
//   $("#comment-" + this.id).find(".reply-to").show();
//   $("#comment-" + this.id).find(".comment-form").hide();
// });