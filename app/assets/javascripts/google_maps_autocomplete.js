$(document).ready(function() {
  var market_address = $('#market_address').get(0);

  if (market_address) {
    var autocomplete = new google.maps.places.Autocomplete(market_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(market_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
