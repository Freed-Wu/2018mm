clear;
[digit3 txt3]=xlsread('333.xlsx');


for i=1:45
    ship(i).number=digit3(i);
    ship(i).name=txt3(i+1,2);
    ship(i).r1=txt3(i+1,3);
    ship(i).r2=txt3(i+1,4);
    ship(i).r3=txt3(i+1,5);
    ship(i).l1=txt3(i+1,6);
    ship(i).l2=txt3(i+1,7);
    ship(i).a=txt3(i+1,8);
end
[digit4_1 txt4_1]=xlsread('4444.xlsx',1);
[digit4_2 txt4_2]=xlsread('4444.xlsx',2);
[digit4_3 txt4_3]=xlsread('4444.xlsx',3);
[digit4_4 txt4_4]=xlsread('4444.xlsx',4);
rl1=digit4_2(:,1:3);
rl2=digit4_3(:,1:3);
rl3=digit4_4(:,3);

for i=1:25
    flagr1=1;
flagr2=1;
flagr3=1;
flagr4=1;
    rsingal(i).name= txt4_1(i+1,1);
    rsingal(i).ra11=digit4_1(i,1);
    for j=1:8
        if  isnan(digit4_1(i,j+1))
        else
             rsingal(i).ra12(flagr1)=digit4_1(i,j+1);
             flagr1=flagr1+1;
             
        end
    end
    rsingal(i).ra21=digit4_1(i,10);
    for j=11:17
        if  isnan(digit4_1(i,j))
        else
             rsingal(i).ra22(flagr2)=digit4_1(i,j);
             flagr2=flagr2+1;
             
        end
    end
     rsingal(i).ra31=digit4_1(i,18);
         for j=19:25
        if  isnan(digit4_1(i,j))
        else
             rsingal(i).ra32(flagr3)=digit4_1(i,j);
             flagr3=flagr3+1;
             
        end
         end
    rsingal(i).ra41=digit4_1(i,26);
    for j=27:32
        if  isnan(digit4_1(i,j))
        else
             rsingal(i).ra42(flagr4)=digit4_1(i,j);
             flagr4=flagr4+1;
             
        end
    end
    
end
for i=1:21
    l1singal(i).name=txt4_2(i+1,1);
    l1singal(i).l11=digit4_2(i,1);
    l1singal(i).l12=digit4_2(i,2);
    l1singal(i).l13=digit4_2(i,3);
end

for i=1:21
    l2singal(i).name=txt4_3(i+1,1);
    l2singal(i).l11=digit4_3(i,1);
    l2singal(i).l12=digit4_3(i,2);
    l2singal(i).l13=digit4_3(i,3);
end
for i=1:45
    l3singal(i).name=txt4_4(i+1,1);
%     l3singal(i).l11=digit4_4(i,1);
%     l3singal(i).l12=digit4_4(i,2);
    l3singal(i).l13=digit4_4(i,3);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[digit6_1 txt6_1]=xlsread('666.xlsx',1);
[digit6_2 txt6_2]=xlsread('666.xlsx',2);
[digit6_3 txt6_3]=xlsread('666.xlsx',3);
[digit6_4 txt6_4]=xlsread('666.xlsx',4);
[m41,n41]=size(digit6_1);
[m42,n42]=size(digit6_2);
[m43,n43]=size(digit6_3);


biaohao=digit6_1(:,36);
biaohao2=digit6_2(:,7);
biaohao3=digit6_3(:,7);
flag1=1;
for i=1:m41-1
    if biaohao(i)~=biaohao(i+1)
        flag41(flag1)=i+1;
        flag1=flag1+1;
        
    end
end
flag1=1;
for i=1:m42-1
    if biaohao2(i)~=biaohao2(i+1)
        flag42(flag1)=i+1;
        flag1=flag1+1;
        
    end
end

flag1=1;
for i=1:m43-1
    if biaohao3(i)~=biaohao3(i+1)
        flag43(flag1)=i+1;
        flag1=flag1+1;
        
    end
end
flag42=[1 flag42];
flag43=[1 flag43];
sum2=length(flag42);
sum3=length(flag43);
flag42=[flag42 165];
flag43=[flag43 13];

for i=1:sum2
    for j=4:6
        junzhi1(i,j-3)=mean(digit6_2(flag42(i):flag42(i+1)-1,j));
    end
end
for i=1:sum3
    for j=4:6
        junzhi2(i,j-3)=mean(digit6_3(flag43(i):flag43(i+1)-1,j));
    end
end




% rtl1=digit5_2(:,4:6);
% rtl2=digit5_3(:,4:6);
% rtl3=digit5_4(:,6);

for i=1:m41
flagr1=1;
flagr2=1;
flagr3=1;
flagr4=1;
    strsingal(i).num= digit6_1(i,36);

    strsingal(i).ra11=digit6_1(i,4);
    for j=5:12
        if  isnan(digit6_1(i,j))
        else
             strsingal(i).ra12(flagr1)=digit6_1(i,j);
             flagr1=flagr1+1;
             
        end
    end
    strsingal(i).ra21=digit6_1(i,13);
    for j=14:20
        if  isnan(digit6_1(i,j))
        else
             strsingal(i).ra22(flagr2)=digit6_1(i,j);
             flagr2=flagr2+1;
             
        end
    end
     strsingal(i).ra31=digit6_1(i,21);
         for j=22:28
        if  isnan(digit6_1(i,j))
        else
             strsingal(i).ra32(flagr3)=digit6_1(i,j);
             flagr3=flagr3+1;
             
        end
         end
    strsingal(i).ra41=digit6_1(i,29);
    for j=30:35
        if  isnan(digit6_1(i,j))
        else
             strsingal(i).ra42(flagr4)=digit6_1(i,j);
             flagr4=flagr4+1;
             
        end
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag41=[1 flag41];
sum1=length(flag41);
flag41=[flag41 1425];
for i=1:sum1
    for j=flag41(i):flag41(i+1)
         for k=1:length(strsingal(flag41(i)).ra12)
             r12junzhi(i,k)=mean(digit6_1(flag41(i):flag41(i+1)-1,k+4));
         end
    end
end
for i=1:sum1
    for j=flag41(i):flag41(i+1)
         for k=1:length(strsingal(flag41(i)).ra22)
             r22junzhi(i,k)=mean(digit6_1(flag41(i):flag41(i+1)-1,k+13));
         end
    end
end
for i=1:sum1
    for j=flag41(i):flag41(i+1)
         for k=1:length(strsingal(flag41(i)).ra32)
             r32junzhi(i,k)=mean(digit6_1(flag41(i):flag41(i+1)-1,k+21));
         end
    end
end
for i=1:sum1
    for j=flag41(i):flag41(i+1)
         for k=1:length(strsingal(flag41(i)).ra42)
             r42junzhi(i,k)=mean(digit6_1(flag41(i):flag41(i+1)-1,k+29));
         end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%新的检测结构体%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rtl1=junzhi1(:,1:3);
rtl2=junzhi2(:,1:3);
rtl3=digit6_4(:,6);
for i=1:sum1
flagr1=1;
flagr2=1;
flagr3=1;
flagr4=1;
    trsingal(i).signum= digit6_1(flag41(i),36);
%     trsingal(i).signum=digit5_1(i,2);
    trsingal(i).ra11=digit6_1(flag41(i),4);
    for j=5:12
        if  isnan(digit6_1(flag41(i),j))
        else
             trsingal(i).ra12(flagr1)= r12junzhi(i,j-4);
             flagr1=flagr1+1;
             
        end
    end
    trsingal(i).ra21=digit6_1(flag41(i),13);
    for j=14:20
        if  isnan(digit6_1(flag41(i),j))
        else
             trsingal(i).ra22(flagr2)=r22junzhi(i,j-13);
             flagr2=flagr2+1;
             
        end
    end
     trsingal(i).ra31=digit6_1(flag41(i),21);
         for j=22:28
        if  isnan(digit6_1(flag41(i),j))
        else
             trsingal(i).ra32(flagr3)=r32junzhi(i,j-21);
             flagr3=flagr3+1;
             
        end
         end
    trsingal(i).ra41=digit6_1(flag41(i),29);
    for j=30:35
        if  isnan(digit6_1(flag41(i),j))
        else
             trsingal(i).ra42(flagr4)=r42junzhi(i,j-29);
             flagr4=flagr4+1;
             
        end
    end
    
end
 for i=1:sum2
%     tl1singal(i).goalnum= digit5_2(i,1);
    tl1singal(i).signum=digit6_2(flag42(i),7);
    tl1singal(i).l11=junzhi1(i,1);
    tl1singal(i).l12=junzhi1(i,2);
    tl1singal(i).l13=junzhi1(i,3);
end
 for i=1:sum3
%     tl2singal.goalnum= digit5_3(1,1);
    tl2singal(i).signum=digit6_3(flag43(i),7);
    tl2singal(i).l11=junzhi2(i,1);
    tl2singal(i).l12=junzhi2(i,2);
    tl2singal(i).l13=junzhi2(i,3);
 end
 for i=1:3
%     tl3singal.goalnum= digit5_4(1,1);
    tl3singal(i).signum=digit6_4(i,7);
%     tl3singal.l11=digit5_4(1,4);
%     tl3singal.l12=digit5_4(1,5);
    tl3singal(i).l13=digit6_4(i,6);
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%0-1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
 for i=1:sum1
        for j=1:25
   if trsingal(i).ra11==rsingal(j).ra11
       zhunquewucha(i,j,1)=1;
   else
       zhunquewucha(i,j,1)=0;
   end
    if trsingal(i).ra21==rsingal(j).ra21
       zhunquewucha(i,j,2)=1;
   else
       zhunquewucha(i,j,2)=0;
   end
    if trsingal(i).ra31==rsingal(j).ra31
       zhunquewucha(i,j,3)=1;
   else
       zhunquewucha(i,j,3)=0;
    end
      if trsingal(i).ra41==rsingal(j).ra41
       zhunquewucha(i,j,4)=1;
   else
       zhunquewucha(i,j,4)=0;
      end
        end
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%0-1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i=1:sum1
        for j=1:25
   if length(trsingal(i).ra12)==length(rsingal(j).ra12);
       zhunquewucha1(i,j,1)=1;
   else
       zhunquewucha1(i,j,1)=0;
   end
    if length(trsingal(i).ra22)==length(rsingal(j).ra22);
       zhunquewucha1(i,j,2)=1;
   else
       zhunquewucha1(i,j,2)=0;
   end
    if length(trsingal(i).ra32)==length(rsingal(j).ra32);
       zhunquewucha1(i,j,3)=1;
   else
       zhunquewucha1(i,j,3)=0;
    end
      if length(trsingal(i).ra42)==length(rsingal(j).ra42);
       zhunquewucha1(i,j,4)=1;
   else
       zhunquewucha1(i,j,4)=0;
      end
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%l1、l2及l3（a）的判别%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
coml1=compare11(rtl1,rl1,sum2,21,3);
comsum1=coml1(:,:,1).*coml1(:,:,2).*coml1(:,:,3);
coml2=compare11(rtl2,rl2,sum3,21,3);
comsum2=coml2(:,:,1).*coml2(:,:,2).*coml2(:,:,3);
for j=1:3
for i=1:length(rl3)
    if rtl3(j)==rl3(i)
        comsum3(j,i)=1;
    else
        comsum3(j,i)=0;
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%r的误差矩阵%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:sum1
        for j=1:25
           r2wucha(i,j,1)= spcompare11(trsingal(i).ra12,rsingal(j).ra12,length(trsingal(i).ra12),length(rsingal(j).ra12));
        end
   end
      for i=1:sum1
        for j=1:25
           r2wucha(i,j,2)= spcompare11(trsingal(i).ra22,rsingal(j).ra22,length(trsingal(i).ra22),length(rsingal(j).ra22));
        end
      end
      for i=1:sum1
        for j=1:25
           r2wucha(i,j,3)= spcompare11(trsingal(i).ra32,rsingal(j).ra32,length(trsingal(i).ra32),length(rsingal(j).ra32));
        end
      end
      for i=1:sum1
        for j=1:25
           r2wucha(i,j,4)= spcompare11(trsingal(i).ra42,rsingal(j).ra42,length(trsingal(i).ra42),length(rsingal(j).ra42));
        end
   end
 rsumwucha=zhunquewucha.*zhunquewucha1.*r2wucha;
 rsum2wucha=rsumwucha(:,:,1).*rsumwucha(:,:,2).*rsumwucha(:,:,3).*rsumwucha(:,:,4);
 for i=1:sum1
maxr(i)=max(rsum2wucha(i,:));
 end
for i=1:sum1
    [m n]=find(maxr(i)==rsum2wucha(i,:));
    for j=1:length(n)
        rce(i,j)=n(j);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
for i=1:sum2
maxl1(i)=max(comsum1(i,:));
 end

for i=1:sum2
    [m n]=find(maxl1(i)==comsum1(i,:));
    for j=1:length(n)
        l1ce(i,j)=n(j);
    end
end
for i=1:sum3
maxl2(i)=max(comsum2(i,:));
end
for i=1:sum3
[m n]=find(maxl2(i)==comsum2(i,:));
    for j=1:length(n)
        l2ce(i,j)=n(j);
    end
end
for i=1:3
[m n]=find( comsum3(i,:)==1);
    for j=1:length(n)
        l3ce(i,j)=n(j);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
for i=1:length(rce)
       chuanganqir(i)=rsingal(rce(i)).name;
end
for i=1:length(l1ce)
       chuanganqil1(i)=l1singal(l1ce(i)).name;
end
for i=1:length(l2ce)
       chuanganqil2(i)=l2singal(l2ce(i)).name;
end
for i=1:length(l3ce)
       chuanganqil3(i)=l3singal(l3ce(i)).name;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 for i=1:sum2
    flag444=1;
         for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil1(i)),char(txt3(j+1,6)))
        defen2(i,flag444)=j+1;
        flag444=flag444+1;
    end
         end
 end
 for i=1:sum3
    flag444=1;
         for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil2(i)),char(txt3(j+1,7)))
        defen3(i,flag444)=j+1;
        flag444=flag444+1;
    end
         end
 end
  for i=1:3
    flag444=1;
         for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil3(i)),char(txt3(j+1,8)))
        defen4(i,flag444)=j+1;
        flag444=flag444+1;
    end
         end
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
data41=xlsread('666.xlsx');
time41=xlsread('time6.xlsx');
figure(1);
clear flag_a
for i=2:length(time41)
    if time41(i)>=2018042910800000;
        time41(i)=time41(i)-400000;
    else if time41(i)>=2018042911800000;
            time41(i)=time41(i)-800000;
        end
    end
end
       
for i=2:length(time41)
    time_now(i)=time41(i)-time41(1);
end

        
 time_now= time_now./10000;
posi_data=[data41(:,1) data41(:,2)];
flag_a=flag41;

for i=2:sum1+1

    

    n1=flag41(i-1);
    n2=flag41(i)-1;
    scatter3(posi_data(n1:n2,1),posi_data(n1:n2,2),time_now(n1:n2));
    hold on
end


xlabel('经度');
ylabel('纬度');
zlabel('时间');


% for i=1:length(pp)
%     xx1(i)=pp(i,1);
% end
% for i=1:length(pp)
%     xx2(i)=pp(i,2);
% end
for i=1:sum1
    haohao(i)=strsingal(flag_a(i)).num;
end
    

    
