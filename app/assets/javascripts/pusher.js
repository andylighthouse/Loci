$(function() {
  $('#input-form').on('submit', function() {
    console.log('hello')
    var msg = $('#new-msg').val();
    var currentUserId = $('div[data-current-user]').attr('data-current-user');  //.data('current-user')
    console.log('currentUserIdnew', currentUserId);
    console.log(msg);
    console.log('sending message to '+ window.room);
    $.ajax({
      url: '/send_message',
      method: 'POST',
      data: {message: msg, room: window.room, user_id: currentUserId}
    }).done(function(){
      $('#new-msg').val('');
    });
    return false;
  });
});
