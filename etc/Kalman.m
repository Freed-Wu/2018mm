shuju1=xlsread('111.xlsx');
time1=xlsread('time1.xlsx');
  clear flag_a
for i=2:length(time1)
    if time1(i)>=2018042910800000;
        time1(i)=time1(i)-400000;
    end
end
for i=2:length(time1)
    time_now1(i)=time1(i)-time1(1);
end
flag=(shuju1(:,7))';
m=1;
for i=1:length(time1)-1
    if flag(i)~=flag(i+1)
        flag_a(m)=i+1;
       m=m+1;
    end
end
time_now1=time_now1./10000;
jingdu=shuju1(:,1);
weidu=shuju1(:,2);
for i=1:3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
if i==1
    scatter(jingdu(1:flag_a(1)-1),weidu(1:flag_a(1)-1));
hold on 
else
    n1=flag_a(i-1);
    n2=flag_a(i)-1;
    scatter(jingdu(n1:n2,1),weidu(n1:n2,1));
    hold on
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 n1=flag_a(3);
    n2=length(time1);
    scatter(jingdu(n1:n2,1),weidu(n1:n2,1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag_a=[1 flag_a 55];
figure;
    p=polyfit(jingdu(flag_a(1):flag_a(2)-1),weidu(flag_a(1):flag_a(2)-1),1);
    x2=122.5:0.01:125;
    y2=polyval(p,x2);
    juli1=abs(p(1).*jingdu(flag_a(1):flag_a(2)-1)-1.*weidu(flag_a(1):flag_a(2)-1)+p(2))/sqrt(p(1)^2+1);
    plot(jingdu(flag_a(1):flag_a(2)-1),weidu(flag_a(1):flag_a(2)-1),'h',x2,y2)
    hold on
    pp(1,:)=p;

    p=polyfit(jingdu(flag_a(2):flag_a(3)-1),weidu(flag_a(2):flag_a(3)-1),1);
    x2=122.5:0.01:125;
    y2=polyval(p,x2);
    juli2=abs(p(1).*jingdu(flag_a(2):flag_a(3)-1)-1.*weidu(flag_a(2):flag_a(3)-1)+p(2))/sqrt(p(1)^2+1);
    plot(jingdu(flag_a(2):flag_a(3)-1),weidu(flag_a(2):flag_a(3)-1),'h',x2,y2)
    hold on
    pp(2,:)=p;

    p=polyfit(jingdu(flag_a(3):flag_a(4)-1),weidu(flag_a(3):flag_a(4)-1),1);
    x2=122.5:0.01:125;
    y2=polyval(p,x2);
    juli3=abs(p(1).*jingdu(flag_a(3):flag_a(4)-1)-1.*weidu(flag_a(3):flag_a(4)-1)+p(2))/sqrt(p(1)^2+1);
    plot(jingdu(flag_a(3):flag_a(4)-1),weidu(flag_a(3):flag_a(4)-1),'h',x2,y2)
    hold on
    pp(3,:)=p;

    p=polyfit(jingdu(flag_a(4):flag_a(5)-1),weidu(flag_a(4):flag_a(5)-1),1);
    x2=122.5:0.01:125;
    y2=polyval(p,x2);
    juli4=abs(p(1).*jingdu(flag_a(4):flag_a(5)-1)-1.*weidu(flag_a(4):flag_a(5)-1)+p(2))/sqrt(p(1)^2+1);
    plot(jingdu(flag_a(4):flag_a(5)-1),weidu(flag_a(4):flag_a(5)-1),'h',x2,y2)
    pp(4,:)=p;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    junzhi(1)=mean(juli1);junzhi(2)=mean(juli2);junzhi(3)=mean(juli3);junzhi(4)=mean(juli4); 
    fangcha(1)=var(juli1);fangcha(2)=var(juli2);fangcha(3)=var(juli3);fangcha(4)=var(juli4);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    flag_ad=diff(flag_a);
    for i=1:length(time1)-1
    time_now2(i)=time1(i+1)-time1(i);
    end
    
    time_now2=time_now2./10000;
    time_diff=floor(time_now2).*60+(time_now2-floor(time_now2));
%  time_diff=time_diff./3600;   %%%%%%%%%%%%%%%%%%%%%%
    for i=1:length(time1)-1
        
    p1 = [jingdu(i) weidu(i)];
    p2 = [jingdu(i+1) weidu(i+1)];
    juli22(i)=norm(p1-p2);
    end
    for i=1:length(time1)-1
        vol(i)=juli22(i)./time_diff(i);
    end
    for i=1:length(flag_a)-1
        junzhi2(i)=mean(vol(flag_a(i):flag_a(i+1)-2));
        fangcha2(i)=var(vol(flag_a(i):flag_a(i+1)-2));
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     for i=1:4
%         fangchaka1=mapminmax(fangcha(i));fangchaka2=mapminmax(fangcha2(i));
%         [junzhika,p]=mapminmax(jingdu(flag_a(i)));junzhika2=mapminmax(junzhi2(i));
%        for i=1:4
%         fangchaka1=fangcha(i);fangchaka2=fangcha2(i);
%         [junzhika,p]=jingdu(flag_a(i));junzhika2=junzhi2(i);
%         for j=1:flag_ad(i)
%     zengyi=fangchaka1/(fangchaka1+fangchaka2);
%     fangchahou(i,j)=fangchaka1-zengyi*fangchaka2;
%     junzhihou(i,j)=junzhika+zengyi*(junzhika2-junzhika);
%     junzhika=junzhihou(i,j);
%     fangchaka1=fangchahou(i,j);
%         end
%     end
    
%     mapminmax('reverse',junzhihou,p)  
juli11=[juli1(1) juli2(1) juli3(1) juli4(1)];


       
      for i=1:4
        fangchaka1=fangcha(i);fangchaka2=fangcha2(i);
        junzhika=juli11(i);junzhika2=junzhi2(i);
        for j=1:flag_ad(i)
    zengyi=fangchaka1/(fangchaka1+fangchaka2);
    fangchahou(i,j)=fangchaka1-zengyi*fangchaka2;
    junzhihou(i,j)=junzhika+zengyi*(junzhika2-junzhika);
    junzhika=junzhihou(i,j);
    fangchaka1=fangchahou(i,j);
        end
      end