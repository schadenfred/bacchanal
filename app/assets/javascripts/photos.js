$(document).ready(function(){
  // disable auto discover
  Dropzone.autoDiscover = false;

  // grap our upload form by its id
  $("#new_photo").dropzone({
    // restrict image size to a maximum 1MB
    maxFilesize: 1,
    // changed the passed param to one accepted by
    // our rails app
    paramName: "photo[image]",
    // show remove links on each image upload
    addRemoveLinks: true
  });
});