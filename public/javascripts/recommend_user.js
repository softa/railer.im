$('#recommend_button').click(function(){
  if($(this).hasClass('recommend_button')) {
   $.post('/users/recommend/',{id: user_id}, function(r){
     if(r.ok){
       $('#recommend_button').removeClass('recommend_button')
       $('#recommend_button').addClass('unrecommend_button')
       $('#recommend_button').text('Unrecommend')
       $('#recommendations_total').text(r.total)
     }
   }) 
  } else {
    $.post('/users/unrecommend/',{id: user_id}, function(r){
      if(r.ok){
        $('#recommend_button').removeClass('unrecommend_button')
        $('#recommend_button').addClass('recommend_button')
        $('#recommend_button').text('Recommend')
        $('#recommendations_total').text(r.total)
      }
    })
  }
})