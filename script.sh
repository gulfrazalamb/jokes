var jokeElement = document.getElementById("joke");

function getJoke() {
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://official-joke-api.appspot.com/random_joke");
  xhr.onload = function () {
    if (xhr.status === 200) {
      var joke = JSON.parse(xhr.responseText);
      jokeElement.innerHTML = joke.setup + " " + joke.punchline;
    }
  };
  xhr.send();
}
