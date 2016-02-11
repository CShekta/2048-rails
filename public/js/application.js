// Wait till the browser is ready to render the game (avoids glitches)
window.requestAnimationFrame(function () {
var game = new GameManager(4, KeyboardInputManager, HTMLActuator, LocalStorageManager);

var gId = window.location.search.slice(5);

  if (gId.length > 0) {
    var url = "http://localhost:3000/play_game/" + gId;
    $.get(url)
      .done(function(data) {
        game.loader(data);
      });
  }

});
