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
	json = $.parseJSON(xhr.responseText)
	base = json['base']
	if(base){
     $(this).text(base)
	}else{
	  login = json['login']		
      $(this).text('Profile ' + login)
	}

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
	$('form#signup .message_wrapper').slideUp()
	$('form#signup .success_wrapper').slideDown().find('.email').html(result['user']['email'].replace(/.{1,3}@.{1,3}/, '...@...'))
	
  }, 'json')
  return false
})


