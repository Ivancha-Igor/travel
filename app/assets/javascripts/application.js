// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var input_selector = 'input[type=text], input[type=password], input[type=email], input[type=url], input[type=tel], input[type=number], input[type=search], textarea';
$(document).ready(function() {
    $(input_selector).each(function(index, element) {
        if($(element).val().length > 0) {
            $(this).siblings('label, i').addClass('active');
        }
    });
});
$('document').ready(function(){
    var flashInfo = $('.flash').first();
    if(flashInfo.length) {
        var type = flashInfo.data('type');
        var message = flashInfo.data('message');
        Materialize.toast(message, 3000, 'alert ' + type);
    }
});
