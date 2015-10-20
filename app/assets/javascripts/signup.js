$(function () {
  console.log('javascriptasdfsdf')
  $('#signupForm').on('submit', function() {
    console.log('helloooooo')
    var signupForm = $('#signupForm')
    $.ajax({
      url: '/users',
      method: 'post',
      dataType: 'json',
      data: signupForm.serialize(),
      success:function(data){
        console.log(data)
        console.log('success')
      },
      error:function() {
        console.log(e)
        console.log('error')
      }

    });
  return false;
  });
});