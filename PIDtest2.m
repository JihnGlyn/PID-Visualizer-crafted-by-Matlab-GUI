function OUTPUT = PIDtest2(KP,KI,KD,p,z,in)
syms s
%TF means Transfer_Function
CTF=1;
for ii=1:length(p)
    if imag(p(ii))==0
       CTF=(1/(s-p(ii)))*CTF;
    else
       CTF=(1/(s-conj(p(ii))))*CTF;
    end
end
for jj=1:length(z)
    if imag(z(jj))==0
       CTF=(1/(s-z(jj)))*CTF;
    else
       CTF=(1/(s-conj(z(jj))))*CTF;
    end    
end
GTF=(KP+KI/s+KD*s)*CTF;
Output_TF=10*GTF/((1+GTF)*s^in);
OUTPUT=ilaplace(Output_TF);
end

