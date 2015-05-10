$(function() {

  // Resize images for mobile
  // Eventually would prefer to serve mobile optimized images.
  var imgs = $(".visible-xs-block img");
  for (i = 0; i < imgs.length; i++) { 
    var $img = $(imgs[i]);
    if(window.innerWidth < $img.width()){
      $img.attr("width", window.innerWidth - 80);
    }
  }
});
