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

$('#search').keydown(function(event) {
  if (event.keyCode == '27') {
    $('#search').val('');
    $('#search_panel').slideUp();
   }
});

var search_panel = {
  tophit: {"rank" : -1},
  html_tables: {"users": "", "rubygems" : "", "teams" : "", "companies": "", "locations" : "", "best" : "" },
  routes: {"users": "", "rubygems" : "gems/", "teams" : "teams/", "companies": "companies/", "locations" : "locations/city/" },

  icons: {"rubygems": "icons/ruby.png", "teams" : "rumble_small.png", "companies": "icons/briefcase.png", "locations" : "icons/marker.png"},
  json2html: function(table_name, entries){
    var self = this;
    self.html_tables[table_name] = "";
    $.each(entries, function(key, row){
        if(row["rank"] > self.tophit["rank"])
        {
          self.tophit = row;
          self.tophit["route"] = self.routes[table_name];
        }
        if(table_name == "users")
          img = '<img src="http://gravatar.com/avatar/' + row["gravatar_id"] + '?s=16" />';
        else 
          img = '<img src="/images/' + self.icons[table_name] + '" />';
        self.html_tables[table_name] += '<li>' + img + ' <a href="/' + self.routes[table_name] + row["key"] + '">' + unescape(row["label"]) + '<a/></li>';
      });
  },

  show_results: function(data){
    var self = this;
    $.each(this.html_tables, function(k,v){
        if(k != "best")
          self.json2html(k, data[k]);
      });
    this.html_tables["best"] = (this.tophit["rank"] < 0 ? "" : '<li><img src="/images/icons/star.png"><strong><a href="/' + this.tophit["route"] + this.tophit["key"] + '"> ' + this.tophit["label"] + '</a></strong></li>');
    this.tophit["rank"] = -1;
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
