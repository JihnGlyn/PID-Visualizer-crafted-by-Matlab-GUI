function OUTPUT=PIDtest(KP,KI,KD,a,b,c,in)
syms s
%TF means Transfer_Function
GTF=(KP+KI/s+KD*s)/(c*s^2+b*s+a);
Output_TF=10*GTF/((1+GTF)*s^in);
OUTPUT=ilaplace(Output_TF);
end

