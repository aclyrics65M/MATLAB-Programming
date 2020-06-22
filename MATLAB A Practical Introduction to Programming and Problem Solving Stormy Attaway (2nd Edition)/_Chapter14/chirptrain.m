% Display the soound signals from chirp and train
load chirp
subplot(2,1,1)
plot(y)
ylabel('Amplitude')
title('Chirp')
subplot(2,1,2)
load train
plot(y)
ylabel('Amplitude')
title('Train')