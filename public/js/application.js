$(document).ready(function() {

  $( "form" ).on( "submit", function( event ) {

    event.preventDefault();

    var url = $( this ).attr( "action" );

    // send as object
    var data = { "long_url": $( this['url'] ).val() };

    // post request
    $.post( url, data, function( response ) {

      // parse from json
      parsedResponse = eval('(' + response + ')');

      var short_url = parsedResponse.url.short_url;

      var click_count = parsedResponse.url.click_count;

      // DOM insertion
      $( "<li><a href=" + short_url + ">" + short_url + "</a>" + "   " + click_count + "</li>" ).prependTo( ".shortlinks" );

    });
  });
  // click update 
});
