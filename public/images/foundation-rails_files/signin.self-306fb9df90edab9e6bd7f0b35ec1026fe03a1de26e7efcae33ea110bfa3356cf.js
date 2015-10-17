$(function(){
  // $('#login-button').hover( function() {  
  //   $('#login-form').addClass("clicked")
  // }, function() {
  //   $('#login-form').removeClass("clicked")
  // });

  $('#login-button').on('mouseenter', function() {
    $('#login-form').addClass("clicked");
  });

  $('#login-form').on('mouseleave', function() {
    $(this).removeClass("clicked");
  })
});



// $('#login-button').hover(
//   function() {
//     console.log('mouse enter')
//     // $( this ).addClass( "hover" );
//   }, function() {
//     console.log('mouse leave')
//     // $( this ).removeClass( "hover" );
//   }
// );
