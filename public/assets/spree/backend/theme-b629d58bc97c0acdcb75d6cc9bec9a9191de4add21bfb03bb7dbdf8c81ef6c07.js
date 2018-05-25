function Theme() {

  this.init = function() {
    this.upload();
  }

  this.upload = function() {
    $('#theme_template_file').on('change', function() {
      $('#new_theme').submit();
    });
  }

}

$(document).ready(function() {
  new Theme().init();
});
