(function() {
  $(function() {
    $('#input-form').on('submit', function() {
      console.log('hello')
      var msg = $('#new-msg').val();
      var currentUserId = $('div[data-current-user]').attr('data-current-user');
      console.log('currentUserIdnew', currentUserId);
      // var room_id = $(this).siblings('input').data('id');


      // How are you going to determine the room name?
      // using the current user id and the recipient id,
      // sort by lowest first. generate a room name

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
})();