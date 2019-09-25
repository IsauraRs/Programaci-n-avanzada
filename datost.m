function[x,h0,dt,tf]=datost
x=1:1:11;
h0=6000:-(6000/11):0;
h(1)=6000;
h(end)=0;
dt=15;
tf=360;