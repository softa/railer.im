$('form#signup input').focus(function(){
  $(this).parent('.input_wrapper').addClass('focused')
})
$('form#signup input').blur(function(){
  $(this).parent('.input_wrapper').removeClass('focused')
})


