$(function () {
  $('#secondModal').on('submit', function() {
    var signup = $('#secondModal')
    $.ajax({
      url: signup.attr('action'),
      method: signup.attr('method'),
      dataType: 'json',
      data: signup.serialize(),
      
    });
  return false;
  });
});