define :levi do
  # this is the random
  use_synth :chipbass
  play rrand(30,90) , amp:10
  sleep 0.1
  use_synth :chipbass
  play rrand(30,90) , attack: 0.1
  sleep 0.1
end


in_thread do
  live_loop :foo do
    levi
  end
end


#this is If else statement
in_thread do
  loop do
    if one_in(2)
      sample :vinyl_rewind
    else
      sample :vinyl_backspin
    end
    sleep 1
  end
  sleep 2
end

loop do
  sample "C:/Users/levi.douty/downloads/scream-what.wav"
    wait 5
end


