
function [nw sr]=songRate(Sig)
[Sig,fs]=audioread('F:\btech elc\sem5\edsp\project\project resources\sample audio\sample.wav');
fs=8000;
nSig = Sig / max(abs(Sig));
thr1=0.03;
thr2=0.3;
word=1;
v=find(abs(nSig)>thr1);
voicePart=length(v)/fs;
w=find(abs(nSig)>thr2);
n=length(w);
for i=1:n-1
 if w(i+1)-w(i)>800
     word=word+1;
 end
 
end
nw=word;
sr=voicePart/nw;
plot(abs(nSig))
end
