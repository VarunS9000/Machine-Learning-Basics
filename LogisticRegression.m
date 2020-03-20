function[jVal,gradient]=LogisticRegression(theta)
x=[1 2 6;1 3 8;1 4 10];
y=[1;0;1];
m=3;
t=(theta)'*x;
a=exp(-t)
hx=(1+a).^(-1)
error=(hx)'-y;
jVal1=-1*(log(hx)*y+log(1-hx)*(1-y))
jVal=jVal1/m
gradient=[0 0 0]
psi=x'*error;
gradient=psi/m
