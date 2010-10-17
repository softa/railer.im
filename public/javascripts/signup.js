$('form#signup input').focus(function(){
  $(this).parent('.input_wrapper').addClass('focused')
})
$('form#signup input').blur(function(){
  $(this).parent('.input_wrapper').removeClass('focused')
})
$('form#signup input').keyup(function(){
  if( $(this).val() ){
	$('form#signup .message_wrapper').slideDown()
	if(last_login_sent && last_login_sent != $(this).val())
	  $('form#signup .message_wrapper').html("You'll try again. Fine.")
  }
	
})
$('form#signup .button').click(function(){
  $('form#signup').submit()
})
$('form#signup .message_wrapper').ajaxError(function(e, xhr, settings, exception) {
  // This handles signup errors
  if(settings.url == '/users'){
    $(this).fadeIn()
	var json = $.parseJSON(xhr.responseText)
	var base = json['base']
	var login = json['login']
	var email = json['email']
	if(base){
     $(this).html(base)
	}else if(login){
      $(this).text('Profile ' + login)
	}else if(email){
      $(this).text("Your GitHub account doesn't seems to have a valid email address. Please change it. We'll be waiting for you.")
	}
    $('#github_name_signup').attr('disabled', false)
    $('#signup_loader').fadeOut()
  }
})
last_login_sent = null
$('form#signup').submit(function(){
  var url = $(this).attr('action')
  var data = $(this).serialize()
  if( ! $('#github_name_signup').val() ){
    $('#github_name_signup').focus()
    $('form#signup .message_wrapper').slideDown().html("Please enter your GitHub account.")
    return false
  }
  $('form#signup .message_wrapper').html("Contacting GitHub...")
  last_login_sent = $('#github_name_signup').val()
  $('#github_name_signup').attr('disabled', true)
  $('#signup_loader').fadeIn()
  $.post(url, data, function(result){
    $('#signup_loader').hide()
	$('form#signup .input_wrapper').slideUp()
	$('form#signup .message_wrapper').slideUp()
	$('form#signup .success_wrapper').slideDown().find('.email').html(result['user']['email'].replace(/.{1,3}@.{1,3}/, '...@...'))
  }, 'json')
  return false
})


