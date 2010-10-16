$('#new_user_session').submit(function(){
  var url = $(this).attr('action')
  var data = $(this).serialize()
  $.post(url, data, function(result){
    // successfull login!
    location.href = '/'+result['login']
  }, 'json')
  return false
})

$('#login_error h2').ajaxError(function(e, xhr, settings, exception) {
  // This handles login errors
  if(settings.url == '/user_sessions'){
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