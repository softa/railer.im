$(function(){
  var latlng = new google.maps.LatLng(ls[0][0],ls[0][1]);
  var options = {
    zoom: 3,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById("map"), options);
  for(var i=0;i<ls.length;i++){
    var latlng = new google.maps.LatLng(ls[i][0], ls[i][1])
    var m = new google.maps.Marker({title:ls[i][2], icon:'http://gravatar.com/avatar/'+ls[i][3]+'?s=24',position:latlng,map:map,page:'/'+ls[i][4]});
    google.maps.event.addListener(m, 'click', function() {
      location.href = this.page 
    });
  }
})