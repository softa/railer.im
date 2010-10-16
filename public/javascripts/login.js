$('#new_user_session').submit(function(){
  var url = $(this).attr('action')
  var data = $(this).serialize()
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
  $.post(url, data, function(result){
    // successfull login!
    location.reload()
    //location.href = '/'+result['login']
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
