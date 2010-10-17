$('form.edit_user').submit(function(){
  if( $('#user_password').val().length < 6 ){
    $('#user_password').focus()
    $('#user_password_required').slideDown()
    return false
  }else{
    $('#user_password_required').slideUp()
  }

  if( $('#user_password').val() != $('#user_password_confirmation').val() ){
    $('#user_password_confirmation').focus()
    $('#user_password_confirmation_must_match').slideDown()
    return false
  }else{
    $('#user_password_confirmation_must_match').slideUp()
  }

  var url = $(this).attr('action')
  var data = $(this).serialize()

  $.post(url, data, function(result){
    // successfull login!
	if(result['ok']){
	  $('form.edit_user').html('Ok!')
	  location.reload()
	}
  }, 'json')
  return false
})

$('#password_error').ajaxError(function(e, xhr, settings, exception) {
  // This handles login errors
  alert(settings.url)
  if(settings.url == '/user_sessions'){
    $(this).fadeIn()
    $(this).text('Incorrect login or password.')
  }
})

$('.close').click(function(){
  $('.page_overlay').fadeOut('slow')
  $('#password_form').hide()
})