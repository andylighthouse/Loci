$(function() {
  $('#login-form').on('submit', function() {
    $.ajax({
      url: '/session',
      method: 'post',
      dataType: 'json',
      data: $('#login-form').serialize(),
      success:function(user){
        console.log(user);
        alert('helo')
        $('#firstModal').foundation('reveal', 'close');
        userGreeting(user.first_name);
      },
      error:function(e){
        console.log(e);
      }
    });
  return false;
  });

   function userGreeting(userName){
    $('#user-login-button').text("Welcome "+ userName);
    $('#profile-button').show();
    $('#logout-button').show();
    $('#user-signup-button').hide();
  };
});
