// Activate  the AJAX search on target element
$.fn.search = function(results) {
  $(this).timedKeyup(function(){
      if($(this).val() != '')
      {
        $('#search_panel_loader').show();
        $.get('/search/index?query=' + $(this).val(), function(data){
            results.show_results(data);
          });
        $('#search_panel').slideDown();
      }
      else
      {
        $('#search_panel').slideUp();
      }
    }, 300)
}

var search_panel = {
  tophit: {"rank" : -1},
  html_tables: {"users": "", "rubygems" : "", "teams" : "", "companies": "", "locations" : "", "best" : "" },

  icons: {"rubygems": "icons/ruby.png", "teams" : "rumble_small.png", "companies": "icons/briefcase.png", "locations" : "icons/marker.png"},
  json2html: function(table_name, entries){
    var self = this;
    self.html_tables[table_name] = "";
    $.each(entries, function(key, row){
        self.tophit = (row["rank"] > self.tophit["rank"] ? row : self.tophit);
        if(table_name == "users")
          img = '<img src="http://gravatar.com/avatar/' + row["gravatar_id"] + '?s=16" />';
        else 
          img = '<img src="/images/' + self.icons[table_name] + '" />';
        self.html_tables[table_name] += '<li>' + img + ' ' + row["label"] + '</li>';
      });
  },

  show_results: function(data){
    var self = this;
    $.each(this.html_tables, function(k,v){
        if(k != "best")
          self.json2html(k, data[k]);
      });
    this.html_tables["best"] = (this.tophit["rank"] < 0 ? "" : '<li><img src="/images/icons/star.png"><strong> ' + this.tophit["label"] + '</strong></li>');
    $.each(this.html_tables, function(k,v){
        $('#' + k + '_search_list').html((v == '' ? '<li>None found</li>' : v));
      });
    $('#search_panel_loader').hide();
  }
}

$('#search').search(search_panel)

$('.close_search').click(function(){
    $('#search_panel').slideUp()
  })
