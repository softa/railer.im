$('form#signup input').focus(function(){
  $(this).parent('.input_wrapper').addClass('focused')
})
$('form#signup input').blur(function(){
  $(this).parent('.input_wrapper').removeClass('focused')
})
$('form#signup input').keyup(function(){
  if( $(this).val() )
	$('form#signup .message_wrapper').slideDown()
})
$('form#signup .button').click(function(){
  $('form#signup').submit()
})

$('form#signup .message_wrapper').ajaxError(function(e, xhr, settings, exception) {
  // This handles signup errors
  if(settings.url == '/users'){
    $(this).fadeIn()
    $(this).text($.parseJSON(xhr.responseText)['base'])
  }
})
$('form#signup').submit(function(){
  var url = $(this).attr('action')
  var data = $(this).serialize()
  if( ! $('#github_name_signup').val() ){
    $('#github_name_signup').focus()
   	//TODO focar e o q mais???
    return false
  }
  $.post(url, data, function(result){
	$('form#signup .input_wrapper').slideUp()
	//alert(result['user']['id'])
    // successfull login!
    //location.href = '/'+result['login']
  }, 'json')
  return false
})


