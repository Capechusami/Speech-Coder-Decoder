%%
[speechSignal, Fs] = audioread('ahem_x.wav');
%%
downSampleFactor = 2;
compressedSignal = downsample(speechSignal, downSampleFactor);
compressedFs = Fs / downSampleFactor;
%%
reconstructedSignal = upsample(compressedSignal, downSampleFactor);

lpFilter = designfilt('lowpassfir', ...
    'PassbandFrequency', 0.4, ...
    'StopbandFrequency', 0.5, ...
    'DesignMethod', 'kaiserwin');

reconstructedSignal = filter(lpFilter, reconstructedSignal);
%%
sound(speechSignal, Fs);
pause(length(speechSignal)/Fs + 1);

sound(reconstructedSignal, Fs);
%%
t1 = (0:length(speechSignal)-1)/Fs;
t2 = (0:length(reconstructedSignal)-1)/Fs;
% {to show the second output of figure%}
figure;
subplot(2,1,1);
plot(t1, speechSignal);
title('Original Speech Signal');
% {to show the reconstructed output of audio%}
subplot(2,1,2);
plot(t2, reconstructedSignal);
title('Reconstructed Speech Signal');
%%
audiowrite('reconstructed_speech.wav', reconstructedSignal, Fs);
%%
figure;
plot(t1, speechSignal, 'b');
hold on;
plot(t2, reconstructedSignal, 'r');
hold off;

legend('Original', 'Reconstructed');
title('Comparison of Speech Signals');
xlabel('Time (s)');
ylabel('Amplitude');


