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
$.fn.show_results = function(data) {
  /*
              <table class="best_match">
                <tr>
                  <th>
                    Best match
                  </th>
                  <td>
                    <img alt="Star" src="/images/icons/star.png?1287204302">
                    <strong>lorem ipsum</strong>
                  </td>
                </tr>
              </table>
              */
/*
                <tr>
                  <th>
                    User
                  </th>
                  <td>
                    <table>
                      <tr>
                        <td>
                          <img alt="User-silhouette" src="/images/icons/user-silhouette.png?1287204302">
                        </td>
                        <td>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <th>Gems</th>
                  <td>
                    <table>
                      <tr>
                        <td>
                          <img alt="Ruby" src="/images/icons/ruby.png?1287204302">
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <th>Teams</th>
                  <td>
                    <table>
                      <tr>
                        <td>
                          <img alt="Rumble_small" height="16" src="/images/rumble_small.png?1287242283" width="16">
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <th>Companies</th>
                  <td>
                    <table>
                      <tr>
                        <td>
                          <img alt="Briefcase" src="/images/icons/briefcase.png?1287204302">
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <th>Location</th>
                  <td>
                    <table>
                      <tr>
                        <td>
                          <img alt="Marker" src="/images/icons/marker.png?1287204302">
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
              '
              */
  var tophit = {"rank" : -1};
  var html_tables = {"users": "", "rubygems" : "", "teams" : "", "companies": "", "locations" : "", "best" : "" };
  $.each(data["users"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["users"] += '<tr><td><img src="http://gravatar.com/avatar/' + row["gravatar_id"] + '?s=16" /></td><td>' + row["label"] + '</td></tr>';
    })
  $.each(data["rubygems"], function(key, row){
      tophit = (row["rubygems"] > tophit["rank"] ? row : tophit);
      html_tables["rubygems"] += '<tr><td><img src="/images/icons/ruby.png" /></td><td>' + row["label"] + '</td></tr>';
    })
  $.each(data["teams"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["teams"] += '<tr><td></td><td>' + row["label"] + '</td></tr>';
    })
  $.each(data["companies"], function(key, row){
      tophit = (row["rank"] > tophit["rank"] ? row : tophit);
      html_tables["companies"] += '<tr><td></td><td>' + row["label"] + '</td></tr>';
    })

  html_tables["best"] = (tophit["rank"] < 0 ? "" : '<tr><td><img src="/images/icons/star.png"><strong> ' + tophit["label"] + '</strong></tr>');
  $.each(html_tables, function(k,v){
      $('#' + k + '_search_list').html((v == '' ? '<tr><td>None found</td></tr>' : v));
    })
}

$('#search').search('#search_panel')

$('.close_search').click(function(){
    $('#search_panel').slideUp()
  })
