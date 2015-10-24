(function() {
  $(function() {
    $('.demo-chat-input').on('click', 'button', function() {
      var msg = $(this).siblings('#new-msg').val();
      // var room_id = $(this).siblings('input').data('id');


      // How are you going to determine the room name?
      // using the current user id and the recipient id,
      // sort by lowest first. generate a room name

      console.log(msg);
      console.log('sending message to '+ window.room);
      $.ajax({
        url: '/send_message',
        method: 'POST',
        data: {message: msg, room: window.room}
      });
    });
  });
})();