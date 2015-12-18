class Speech

  Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
    puts "You said: #{speech}"
  end



end