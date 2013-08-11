
// () → Null
// Updates the image shown by the one in the given position
ProductImagesLightbox.prototype.updateImage = function(){

  var img = $('<img>');
  this.currentImageHeight = this.imagesOriginalSizes[this.position];
  img.attr('src', this.imagesOriginalUrls[this.position]);  
  img.css("max-height", $(window).height());

  $('div.photo_zoom_main').html(img);
  this.updatePaginators();
  var that = this;

  $('nav.photo_zoom_gallery li').each(function(pos){
    if(pos == that.position){
      $(this).addClass('selected');
    } else {
      $(this).removeClass('selected');
    }
  });
  this.setImagePosition();
}

// () → Null
// Hides the the Dock 
ProductImagesLightbox.prototype.hideDock = function(){
  if(this.dockVisible == null || this.dockVisible == false || this.dockVisible == "invisibleOnProgress") {
    return;
  }
  if(this.dockVisible == true){
    this.dockVisible = "invisibleOnProgress";
  }
  $('nav.photo_zoom_gallery ul').animate({height:'0px'}, 180, null, function(){ 
    $(this).hide();
  });
  this.dockVisible = false;
}

// () → Null
// Shows the the Dock 
ProductImagesLightbox.prototype.showDock = function(){
  if(this.dockVisible == null || this.dockVisible == true || this.dockVisible == "visibleOnProgress") {
    return;
  }
  if(this.dockVisible == false){
    this.dockVisible = "visibleOnProgress";
  }
  $('nav.photo_zoom_gallery ul').show().animate({height:'112px'}, 250);
  this.dockVisible = true;
}

// (src:String) → Null
// Updates the current image and the current position
// by an image with the src indicated
ProductImagesLightbox.prototype.updateFromImage = function(src){
  var that = this;
  $(this.imagesThumbSize).each(function(pos, image_src){
    if(image_src == src){
      that.updatePosition(pos);
    }
  });
}

// () → Null
// Shows the lightbox and hides the Dock 
ProductImagesLightbox.prototype.showLightBox = function(){
  $(window).scrollTop(0);
  $("html").css("overflow", "hidden");
  $('nav.photo_zoom_gallery ul').css('height','112px').show();
  $('div.ui-widget-overlay').show();
  $('div.photo_zoom').show();
  this.updateImage();
  that = this;
  setTimeout(function(){
    that.dockVisible = true;
    that.hideDock();
  },1000);
  if(this.imagesPreloaded == false){
    this.imagesPreloaded = true;
    var img;
    $(this.imagesOriginalUrls).each(function(pos, i){
      img = new Image();
      img.src = i;
    });
  }
}

// () → Null
// Hides the lightbox
ProductImagesLightbox.prototype.hideLightBox = function(){
  $('div.ui-widget-overlay').hide();
  $('div.photo_zoom').hide();
  $("html").css("overflow", "auto");
}

// () → Null
// Updates paginators, showing or hidding them
// depending on the position
ProductImagesLightbox.prototype.updatePaginators = function(){
  if(this.position == this.leftLimit()){
    $('div.photo_zoom a.prev').hide();
  } else {
    $('div.photo_zoom a.prev').show();
  }

  if(this.position == this.rightLimit()){
    $('div.photo_zoom a.next').hide();
  } else {
    $('div.photo_zoom a.next').show();
  }
}

// (new_position:Integer) → Null
// Updates the current image to the position given by new_position, 
// updating also the paginator and the position pointer
ProductImagesLightbox.prototype.updatePosition = function(new_position){
  if(new_position <= this.rightLimit() && new_position >= this.leftLimit()){
    this.position = new_position;
    this.updateImage();
  }
}

// () → Null
// Updates the current image by the next one, 
// updating also the paginator and the position pointer
ProductImagesLightbox.prototype.nextImage = function(){
  if(this.position < this.rightLimit()){
    this.position++;
    this.updateImage();
  }
}

// () → Null
// Updates the current image by the previous one, 
// updating also the paginator and the position pointer
ProductImagesLightbox.prototype.previousImage = function(){
  if(this.position > this.leftLimit()){
    this.position--;
    this.updateImage();
  }
}

// () → Integer
// Returns the right limit for the paginator
ProductImagesLightbox.prototype.rightLimit = function(){
  return this.imagesOriginalSizes.length - 1;
}

// () → Integer
// Returns the left limit for the paginator
ProductImagesLightbox.prototype.leftLimit = function(){
  return 0;
}

// () → Integer
// Set the position of the paginators
ProductImagesLightbox.prototype.setPaginatorsPosition = function(){
  // Set the paginators to the proper height
  $('div.photo_zoom a.next').css("top", ($(window).height() / 2) - 30);
  $('div.photo_zoom a.prev').css("top", ($(window).height() / 2) - 30);
}

// () → Integer
// Center the image
ProductImagesLightbox.prototype.setImagePosition = function(){
  if($(window).height() >= this.currentImageHeight && this.currentImageHeight > 0){
    $('div.photo_zoom_main img').css("margin-top", ($(window).height() - this.currentImageHeight)/2);
  } else {
    $('div.photo_zoom_main img').css("margin-top", 0);
  }
}

// (imagesOriginalSizes:Array, imagesOriginalUrls:Array, imagesThumbSize:Array) → Null
// Constructor for the Prototype ProductImagesLightbox
function ProductImagesLightbox(imagesOriginalSizes, imagesOriginalUrls, imagesThumbSize){

  this.imagesOriginalSizes = imagesOriginalSizes;
  this.imagesOriginalUrls = imagesOriginalUrls;
  this.imagesThumbSize = imagesThumbSize;
  this.position = 0;
  this.dockVisible = null;
  this.currentImageHeight;
  this.setPaginatorsPosition();
  this.imagesPreloaded = false;
}

function initProductImagesLightbox(imagesOriginalSizes, imagesOriginalUrls, imagesThumbSize){

  var lightbox = new ProductImagesLightbox(imagesOriginalSizes, imagesOriginalUrls, imagesThumbSize);

  // zoom link on the image
  $('div.image-container').on({
    click: function(e){
      lightbox.showLightBox();
      lightbox.updateFromImage($(this).find("img").attr('src'));
      e.preventDefault();e.stopPropagation();
    }
  });

  // close link on the lightbox
  $('div.photo_zoom a.photo_zoom_close').on({
    click: function(e){
      lightbox.hideLightBox();
      e.preventDefault(); e.stopPropagation();
    }
  });

  // handle keyboard strokes
  $(document).keyup(function(e) {
    // escape key
    if (e.keyCode == 27) {
      lightbox.hideLightBox();
      e.preventDefault(); e.stopPropagation();
    }
    // left arrow
    if (e.keyCode == 37){
      lightbox.previousImage();
      e.preventDefault(); e.stopPropagation();
    }
    // right arrow
    if (e.keyCode == 39){
      lightbox.nextImage();
      e.preventDefault(); e.stopPropagation();
    }
  });

  // Click on the previous link of the lightbox
  $('div.photo_zoom a.prev').on({
    click: function(e){
      lightbox.previousImage();
      e.preventDefault(); e.stopPropagation();
    }
  });

  // Click on the next link of the lightbox
  $('div.photo_zoom a.next').on({
    click: function(e){
      lightbox.nextImage();
      e.preventDefault(); e.stopPropagation();
    }
  });

  // Click on the big image in the lightbox
  $('div.photo_zoom_main').on('click', 'img', function(e) {
    lightbox.nextImage();
    e.preventDefault();e.stopPropagation();
  });

  $('nav.photo_zoom_gallery a').on({
    click: function(e){
      lightbox.updateFromImage($(this).find("img").attr('src'));
      e.preventDefault();e.stopPropagation();
    }
  });

  $(document).mousemove(function(e){
    var diff = $(window).height() - e.pageY ;
    if(diff < 112){
      lightbox.showDock();
    } else {
      lightbox.hideDock();
    }
  });

  $(window).resize(function() {
    lightbox.setPaginatorsPosition();
    lightbox.setImagePosition();
  });

  // clicks outside elements
  $('body').bind('click', function(e) {
    lightbox.hideLightBox();
  });
}
