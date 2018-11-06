graphics_toolkit("gnuplot");
Nz=100;
dt=1;
dz=1;
c0=3*10^8;
Hy=[1:Nz]*0;
Ex=[1:Nz]*0;
ER=ones(1,Nz);
%ER=[1 1 1 1 1 1.5 1.5 1.5 1.5 1.5];
HR=ones(1,Nz);
mEx=(c0*dt)./ER;
mHy=(c0*dt)./HR;
t=1:1:100;
h1=figure;
%h2=figure;
hold on;
for T=1:1:100
    Ex(1)=exp(-(T-20)*(T-20)/100);
    for nz=1:Nz-2
        %if(nz==Nz)
           % break;
       % end
        Hy(nz)=Hy(nz)-mHy(nz)*(Ex(nz+1)-Ex(nz))/dz;
    end
    
    
    
    for nz=2:Nz-1
        %if(nz==1)
            %continue;
        %end
        Ex(nz)=Ex(nz)-mEx(nz)*(Hy(nz)-Hy(nz-1))/dz;
    end
  
h1=plot(t,Hy,'-b','linewidth',2); 
%axis([0 100 ]);   
    
end


%figure(h1);
%h1=plot(t,Hy);
 %   hold on
%figure(h1);
%h1=plot(t,Ex);
 %   hold on