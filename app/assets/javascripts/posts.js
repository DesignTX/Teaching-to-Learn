
// Below is the funcationality for the google maps api that deisplays a map on out show pages
// this is imported into application.js where it is ran
function initMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });
}