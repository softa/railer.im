$('input').focus(function(){
  $(this).parent('.input_wrapper').addClass('focused')
})
$('input').blur(function(){
  $(this).parent('.input_wrapper').removeClass('focused')
})
