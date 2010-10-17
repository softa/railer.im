$('#recommend_button').click(function(){
  if($(this).hasClass('recommend_button')) {
   if(!logged) {
     $('#open_login_form').click()
     return
   }
   $.post('/users/recommend/',{id: user_id}, function(r){
     if(r.ok){
	   $('.recommended').slideDown()
  	   $('.my_reco').fadeIn()
       $('#recommend_button').removeClass('recommend_button')
       $('#recommend_button').addClass('unrecommend_button')
       $('#recommend_button').text('Unrecommend')
       $('#recommendations_total').text(r.total)
       $('#total_recommended_by').text('Recommended by ('+r.total+')')
	   $('#user_score').countTo({
		  from: parseInt($('#user_score').text()),
		  to: r.score,
		  speed: 1000,
		  refreshInterval: 50
	   })
     }
   }) 
  } else {
    $.post('/users/unrecommend/',{id: user_id}, function(r){
      if(r.ok){
		if(r.total==0)
		  $('.recommended').slideUp()
		$('.my_reco').fadeOut()
        $('#recommend_button').removeClass('unrecommend_button')
        $('#recommend_button').addClass('recommend_button')
        $('#recommend_button').text('Recommend')
        $('#total_recommended_by').text('Recommended by ('+r.total+')')
        $('#recommendations_total').text(r.total)
	    $('#user_score').countTo({
		   from: parseInt($('#user_score').text()),
		   to: r.score,
		   speed: 1000,
		   refreshInterval: 50
	    })
      }
    })
  }
})

$('#view_all_recommendeds').click(function(){
  $('#view_all_recommendeds').fadeOut()
  $('#recommended_by_limited').hide()
  $('#recommended_by_unlimited').show()
})