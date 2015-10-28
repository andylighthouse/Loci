$(function() {
  var currentUserId = $('div[data-current-user]').attr('data-current-user');
  console.log('currentUserId', currentUserId);
  // // Open a connection to Pusher
  if ( window.location.pathname.indexOf('chats') > -1 ) {
    var pusher = new Pusher("0303fab2c74ca55f8a33"); //hide this later
    var pusherChannel = pusher.subscribe(window.room);
    
    pusherChannel.bind("message", function(message) {
      console.log('received a message!', message);
      var usersMessage = (message.user_id === currentUserId) ? 'users-message' : null;
      var messageHtml = '<p class="' + usersMessage + '"><em>'+ message.from + '</em>: ' + message.message + '</p>';
      $('#show-chat').append(messageHtml);
      $('#show-chat').scrollTop($("#show-chat")[0].scrollHeight);  
    });
  }
});