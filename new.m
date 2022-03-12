clear;
clc;
close all;

Emotion = input("Enter your current Emotion: ");
if Emotion == "calm"
    k=randperm(3);
    FileList = dir(fullfile('F:\btech elc\sem5\edsp\project\project resources\aud_file\calm', '*.mp3'));
    for i=1:1
        [a, fs] = audioread(strcat('F:\btech elc\sem5\edsp\project\project resources\aud_file\calm\',FileList(k(i)).name));
        plot(a(1:1000000,1))
    p = audioplayer(a, fs);
    audiowrite('F:\btech elc\sem5\edsp\project\project resources\sample audio/samplemusic.wav',a,fs);
    p.play()
    end   
elseif Emotion == "energetic"
    k=randperm(3);
    FileList = dir(fullfile('F:\btech elc\sem5\edsp\project\project resources\aud_file\energetic', '*.mp3'));
    for i=1:1
        [a, fs] = audioread(strcat('F:\btech elc\sem5\edsp\project\project resources\aud_file\energetic\',FileList(k(i)).name));
        plot(a(1:1000000,1))
    p = audioplayer(a, fs);
    audiowrite('F:\btech elc\sem5\edsp\project\project resources\sample audio/samplemusic.wav',a,fs);
    p.play()
    end
elseif Emotion == "happy"
    k=randperm(3);
    FileList = dir(fullfile('F:\btech elc\sem5\edsp\project\project resources\aud_file\happy', '*.mp3'));
    for i=1:1
        [a, fs] = audioread(strcat('F:\btech elc\sem5\edsp\project\project resources\aud_file\happy\',FileList(k(i)).name));
        plot(a(1:1000000,1))
    p = audioplayer(a, fs);
    audiowrite('F:\btech elc\sem5\edsp\project\project resources\sample audio/samplemusic.wav',a,fs);
    p.play()
    end  
else
    k=randperm(3);
    FileList = dir(fullfile('F:\btech elc\sem5\edsp\project\project resources\aud_file\sad', '*.mp3'));
    for i=1:1
        [a, fs] = audioread(strcat('F:\btech elc\sem5\edsp\project\project resources\aud_file\sad\',FileList(k(i)).name));
        plot(a(1:1000000,1))
    p = audioplayer(a, fs);
    audiowrite('F:\btech elc\sem5\edsp\project\project resources\sample audio/samplemusic.wav',a,fs);
    p.play()
    end
end
    