// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function deleteSong(artistId, albumId, songId) {
  $.ajax({
    type: "DELETE",
    url: "artists" + artistId + "albums" + albumId + "songs" + ".json",
    contentType: "application/json",
    datatype: "json"})

    .done(function(data) {
      $('#song_"'+songId+'"').remove();
    });
}


$(document).ready(function() {
  $("#clean-up").bind('click'), deleteSong});
