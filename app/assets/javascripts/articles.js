var divClone = $(".comments").clone();

$('.comment-reply-cancel').hide();

$('.comment-reply-cancel').click(function( event ) {
  event.preventDefault()
  $(this).hide();
  $(this).closest(".comment").find(".comment-actions").show();
  $(this).closest(".comment").find(".comment-form").remove();
});

