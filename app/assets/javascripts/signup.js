$(function () {
  $('#signupForm').on('submit', function() {
    var signupForm = $('#signupForm');
    $.ajax({
      url: '/users',
      method: 'post',
      dataType: 'json',
      data: signupForm.serialize(),
      success:function(data){
        console.log(data);
        $('#secondModal').foundation('reveal', 'close');
        userGreeting(data.first_name);
      },
      error:function(e) {
        console.log('error');
      }
    });
  return false;
  });

  function userGreeting(userName){
    $('#user-login-button').text("Welcome "+ userName);
    $('#logout-button').show();
    $('#user-signup-button').hide();
  };
});