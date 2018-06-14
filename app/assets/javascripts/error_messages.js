(function() {
  $(document).on('turbolinks:load', function() {
    $('.alert').delay(2000).slideUp(1000);
    return $('#error-explanation').delay(5000).slideUp(2000);
  });
}).call(this);