var divClone = $(".comments").clone(); 

$('.comment-reply-cancel').hide();

$('.comment-reply-cancel').click(function( event ) {
  event.preventDefault()
  $(this).hide();
  $(this).closest(".comment").find(".comment-actions").show();
  $(this).closest(".comment").find(".comment-form").remove();
  // (".comment").find("comment-actions").hide();
  // $(".comments").replaceWith(divClone.clone());
  // $('.comment-reply-cancel').toggle();

  // $('.comment-actions').toggle();
  // $('.comment-reply').hide();
  // $('.comment-reply-cancel').hide();
});

