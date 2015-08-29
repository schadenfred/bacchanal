 window.onload = function() {
    try {
      TagCanvas.textColour = 'grey';
      TagCanvas.outlineColour = 'grey';
      TagCanvas.textFont = "Special+Elite"
      TagCanvas.Start('wineryTags');
    } catch(e) {
      // something went wrong, hide the canvas container
      document.getElementById('wineryCanvasContainer').style.display = 'none';
    }
  };