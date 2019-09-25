function [y]=rhs_IRS(x);
y=6*cos(x);
fun=2*(x+1);
h=e^x;
xini=0;
xfin=1;
hini=1;
hfin=e;
