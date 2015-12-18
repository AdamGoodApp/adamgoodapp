$( document ).ready(function() {
  if (!('webkitSpeechRecognition' in window)) {
    alert('Speech recognition not available');
  } else {
    var recognition = new webkitSpeechRecognition();
    recognition.continuous = true;
    recognition.interimResults = true;
    recognition.lang = "en-GB";
    recognition.maxAlternatives = 1;

    recognition.onstart = function() {
    };

    recognition.onend = function() {
    };

    recognition.onresult = function(event) {
      if (typeof(event.results) === 'undefined') {
        recognition.stop();
        return;
      }

      for (var i = event.resultIndex; i < event.results.length; ++i) {
        if (event.results[i].isFinal) {

        } else {
          test(event.results[i][0].transcript);
        }
      }
    };

    $('#start_img').on('click', function(){
      recognition.start();
    });
  }

  function test(speech) {
    console.log(speech);
    if (speech.indexOf('boy') > -1 ) {
      alert('poor old boy');
    }
  }

});