function cc=mfcc(Sig);
[Sig,fs]=audioread('F:\btech elc\sem5\edsp\project\project resources\sample audio\sample.wav');
bank=melbankm(32,256,8000,0,00.5,'m');
ban=full(bank);
bank=bank/max(bank(:));
for k=1:16 %DCT coefficient
n=0:31;
coef(k,:)=cos((2*n+1)*k*pi/(2*32));
end
w=1+8*sin(pi*[1:16]./16);
w=w/max(w);
x=double(Sig);
x=filter([1-0.9375],1,x);
x=enframe(x,256,80);
for i=1:size(x,1) 
y=x(i,:);
s=y'.*hamming(256);
t=abs(fft(s));
t=t.^2;
c1=coef*log(bank*t(1:129));
c2=c1.*w';
m(i,:)=c2';
end
dtm=zeros(size(m));
for i=3:size(m,1)-2
dtm(i,:)=-2*m(i-2,:)-m(i-1,:)+m(i+1,:)+m(i+2,:);
end
dtm=dtm/3;
cc=[m dtm];
plot(cc(5,1:32))
cc=cc(3:size(m,1)-2,:);
cc(isnan(cc))=0;
end

