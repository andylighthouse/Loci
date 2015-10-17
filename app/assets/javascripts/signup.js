$(function() {
  $('#signup-button').on('click', function() {
    console.log('ethan')
    $('#signup-form').toggleClass('clicked');
  });

  $('#filter').on('click', function() {
    $('#signup-form').removeClass('clicked')
  });


});