$.fn.timedKeyup = function(handler, timeout){
  $(this).keyup(function(){
      $(this).stopTime("keyup")
      $(this).oneTime(timeout, "keyup", handler, 100);
    })
}
