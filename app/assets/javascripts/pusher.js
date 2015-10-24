(function() {
  $(function() {
    $('.demo-chat-input').on('click', 'button', function() {
      var msg = $(this).siblings('#new-msg').val();
      var room_id = $(this).siblings('input').data('id');
      console.log(msg);
      console.log('id', room_id);
      $.ajax({
        url: '/send_message',
        method: 'POST',
        data: {message: msg}
      });
    });
  });
})();