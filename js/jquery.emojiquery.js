(function ($) {
  $.fn.emojify = function(options) {
    var settings = $.extend({
      emoji_dir: "http://localhost/images/emoji",
      width: "64px",
      height: "64px"
    },options);

    var html_replaced = this.html().replace(/:(\w+):/g,"<img width='" + settings.width + "' height='" + settings.heights + "' src='" + settings.emoji_dir + "/$1.png'/>");
    this.html(html_replaced);
  }
})(jQuery);
