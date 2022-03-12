function mfps=pitchs(Sig)
[Sig,fs]=audioread('F:\btech elc\sem5\edsp\project\project resources\sample audio\sample.wav');
disp(Sig)
fs=8000;%
FrameLen = 240;
FrameInc = 200;
fSig=enframe(Sig,hamming(FrameLen,'periodic'),FrameInc);
for i=1:279 
 x=fSig(i,:);
 rxx=xcorr(x);
 y=rxx(255:end);
 [k,I]=max(y);

 if I<30 
     fps(i)=0;
 elseif I>160
     fps(i)=0;
 else
     fps(i)=fs/(I+14);
 end
end
stem(fps)
ind=find(fps);
mfps=fps(ind);
end