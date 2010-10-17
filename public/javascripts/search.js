// Activate  the AJAX search on target element
$.fn.search = function(results) {
  $(this).timedKeyup(function(){
      if($(this).val() != '')
      {
        $.get('/search/index?query=' + $(this).val(), function(data){
            $(results).show_results(data);
          });
        $('#search_panel').slideDown();
      }
      else
      {
        $('#search_panel').slideUp();
      }
    }, 300)
}

// Here we format data to show inside the JQuery target element
// functio
$.fn.show_results = function(data) {
  var tophit = {"rank" : -1};
  var html_tables = {"users": "", "rubygems" : "", "teams" : "", "companies": "", "locations" : "", "best" : "" };
  $.each(data["users"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["users"] += '<li><img src="http://gravatar.com/avatar/' + row["gravatar_id"] + '?s=16" />' + row["label"] + '</li>';
    })
  $.each(data["rubygems"], function(key, row){
      tophit = (row["rubygems"] > tophit["rank"] ? row : tophit);
      html_tables["rubygems"] += '<li><img src="/images/icons/ruby.png" />' + row["label"] + '</li>';
    })
  $.each(data["teams"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["teams"] += '<li>' + row["label"] + '</li>';
    })
  $.each(data["companies"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["companies"] += '<li>' + row["label"] + '</li>';
    })
  $.each(data["locations"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["locations"] += '<li>' + row["label"] + '</li>';
    })

  html_tables["best"] = (tophit["rank"] < 0 ? "" : '<li><img src="/images/icons/star.png"><strong> ' + tophit["label"] + '</strong></li>');
  $.each(html_tables, function(k,v){
      $('#' + k + '_search_list').html((v == '' ? '<li>None found</li>' : v));
    })
}

$('#search').search('#search_panel')

$('.close_search').click(function(){
    $('#search_panel').slideUp()
  })
