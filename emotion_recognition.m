%% Voice record of speech mood analysis
clc
clear all
close all
fs = 8000; %sampling frequency
t=7; %the record duration
time = linspace(0,t,t*fs); %vector of time
recorder = audiorecorder; % creates an 8000 Hz, 8-bit, 1-channelaudiorecorder object
disp('Start speaking.'); %notice when the recorderstarts
recordblocking(recorder, t);%stop recording with the setting time
disp('End of Recording.');%notice the end of the recording
play(recorder);% Play back the recording
y = getaudiodata(recorder);%Store data in y %plot(y);
plot(time, y, 'LineWidth',0.5); set(gca,'FontSize',12)% Plot the waveform
xlabel('Time [s]','fontsize',13); ylabel('Amplitude','fontsize',13);
%legend('Theory','Measurement')
grid on
audiowrite('F:\btech elc\sem5\edsp\project\project resources\sample audio\sample.wav',y,8000);%Put the voice in wavefile

