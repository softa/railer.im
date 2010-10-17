out_error = function(){ $('#login_error').fadeOut() }
$('#user_session_login').keyup(out_error)
$('#user_session_password').keyup(out_error)

$('#new_user_session').submit(function(){
  if( ! $('#user_session_login').val() ){
    $('#user_session_login').focus()
    $('#user_session_login_required').slideDown()
    return false
  }else{
    $('#user_session_login_required').slideUp()
  }
  if( ! $('#user_session_password').val() ){
    $('#user_session_password').focus()
    $('#user_session_password_required').slideDown()
    return false
  }else{
    $('#user_session_password_required').slideUp()
  }
  var url = $(this).attr('action')
  var data = $(this).serialize()
  $.post(url, data, function(result){
    // successfull login!

	if(result['ok'])
      location.href = result['redirect']
	else
      $('#login_error').fadeIn().text('Incorrect login or password.')
  }, 'json')
  return false
})

$('#login_error').ajaxError(function(e, xhr, settings, exception) {
  // This handles login errors
  if(settings.url == '/user_sessions'){
    $(this).fadeIn()
    $(this).text('Incorrect login or password.')
  }
})

$('#open_login_form').click(function(){
  $('.page_overlay').show()
  $('#login_form').fadeIn('slow')
})

$('.close').click(function(){
  $('.page_overlay').fadeOut('slow')
  $('#login_form').hide()
})


$('.forgot_password').click(function(){
  $('#login_form').hide()
  $('#amnesia_form').show()
})

$('.back_to_login').click(function(){
  $('#login_form').show()
  $('#amnesia_form').hide()
})