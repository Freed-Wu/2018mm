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
for i=1:21
    l3singal(i).name=txt4_4(i+1,1);
%     l3singal(i).l11=digit4_4(i,1);
%     l3singal(i).l12=digit4_4(i,2);
    l3singal(i).l13=digit4_4(i,3);
end
[digit5_1 txt5_1]=xlsread('555.xlsx',1);
[digit5_2 txt5_2]=xlsread('555.xlsx',2);
[digit5_3 txt5_3]=xlsread('555.xlsx',3);
[digit5_4 txt5_4]=xlsread('555.xlsx',4);
rtl1=digit5_2(:,4:6);
rtl2=digit5_3(:,4:6);
rtl3=digit5_4(:,6);
for i=1:13
flagr1=1;
flagr2=1;
flagr3=1;
flagr4=1;
    trsingal(i).goalnum= digit5_1(i,1);
    trsingal(i).signum=digit5_1(i,2);
    trsingal(i).ra11=digit5_1(i,4);
    for j=5:8
        if  isnan(digit5_1(i,j))
        else
             trsingal(i).ra12(flagr1)=digit5_1(i,j);
             flagr1=flagr1+1;
             
        end
    end
    trsingal(i).ra21=digit5_1(i,9);
    for j=10:13
        if  isnan(digit5_1(i,j))
        else
             trsingal(i).ra22(flagr2)=digit5_1(i,j);
             flagr2=flagr2+1;
             
        end
    end
     trsingal(i).ra31=digit5_1(i,14);
         for j=15:18
        if  isnan(digit5_1(i,j))
        else
             trsingal(i).ra32(flagr3)=digit5_1(i,j);
             flagr3=flagr3+1;
             
        end
         end
    trsingal(i).ra41=digit5_1(i,19);
    for j=20:24
        if  isnan(digit5_1(i,j))
        else
             trsingal(i).ra42(flagr4)=digit5_1(i,j);
             flagr4=flagr4+1;
             
        end
    end
    
end
for i=1:4
    tl1singal(i).goalnum= digit5_2(i,1);
    tl1singal(i).signum=digit5_2(i,2);
    tl1singal(i).l11=digit5_2(i,4);
    tl1singal(i).l12=digit5_2(i,5);
    tl1singal(i).l13=digit5_2(i,6);
end

    tl2singal.goalnum= digit5_3(1,1);
    tl2singal.signum=digit5_3(1,2);
    tl2singal.l11=digit5_3(1,4);
    tl2singal.l12=digit5_3(1,5);
    tl2singal.l13=digit5_3(1,6);
    tl3singal.goalnum= digit5_4(1,1);
    tl3singal.signum=digit5_4(1,2);
%     tl3singal.l11=digit5_4(1,4);
%     tl3singal.l12=digit5_4(1,5);
    tl3singal.l13=digit5_4(1,6);
    
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%结构体封装%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i=1:13
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
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     for i=1:13
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
%        for i=1:13
%         for j=1:25
%  if trsingal(i).ra21>rsingal(i).ra21
 
coml1=compare11(rtl1,rl1,4,21,3);
comsum1=coml1(:,:,1).*coml1(:,:,2).*coml1(:,:,3);
coml2=compare11(rtl2,rl2,1,21,3);
comsum2=coml2(:,:,1).*coml2(:,:,2).*coml2(:,:,3);
for i=1:45
    if rtl3==rl3(i)
        comsum3(i)=1;
    else
        comsum3(i)=0;
    end
end

   for i=1:13
        for j=1:25
           r2wucha(i,j,1)= spcompare11(trsingal(i).ra12,rsingal(j).ra12,length(trsingal(i).ra12),length(rsingal(j).ra12));
        end
   end
      for i=1:13
        for j=1:25
           r2wucha(i,j,2)= spcompare11(trsingal(i).ra22,rsingal(j).ra22,length(trsingal(i).ra22),length(rsingal(j).ra22));
        end
      end
      for i=1:13
        for j=1:25
           r2wucha(i,j,3)= spcompare11(trsingal(i).ra32,rsingal(j).ra32,length(trsingal(i).ra32),length(rsingal(j).ra32));
        end
      end
      for i=1:13
        for j=1:25
           r2wucha(i,j,4)= spcompare11(trsingal(i).ra42,rsingal(j).ra42,length(trsingal(i).ra42),length(rsingal(j).ra42));
        end
   end
 rsumwucha=zhunquewucha.*zhunquewucha1.*r2wucha;
 rsum2wucha=rsumwucha(:,:,1).*rsumwucha(:,:,2).*rsumwucha(:,:,3).*rsumwucha(:,:,4);
 for i=1:13
maxr(i)=max(rsum2wucha(i,:));
 end
for i=1:13
    [m n]=find(maxr(i)==rsum2wucha(i,:));
    for j=1:length(n)
        rce(i,j)=n(j);
    end
end

 for i=1:4
maxl1(i)=max(comsum1(i,:));
 end

for i=1:4
    [m n]=find(maxl1(i)==comsum1(i,:));
    for j=1:length(n)
        l1ce(i,j)=n(j);
    end
end

maxl2(1)=max(comsum2(1,:));

[m n]=find(maxl2(1)==comsum2(1,:));
    for j=1:length(n)
        l2ce(1,j)=n(j);
    end
[m n]=find( comsum3==1);
l3ce=n;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag111=1;
goal(flag111)=trsingal(1).goalnum;
flag111=flag111+1;
for i=2:13
    if trsingal(i-1).goalnum~=trsingal(i).goalnum
        goal(flag111)=trsingal(i).goalnum;
        flag111=flag111+1;
        goal2(flag111-1)=i;
    end
end
goal2(1)=1;
defen=0;
flag333=1;
for w=1:4
        flag222=1;
for i=goal2(w):goal2(w+1)-1

  for m=3:5
    for j=1:length(txt3(:,3))-1
        if strcmp(char(chuanganqir(i)),char(txt3(j+1,m)))
            defen1(w,flag222)=j+1;
            flag222=flag222+1;
        end
    end
  end
end
end
w=w+1;
flag222=1;
for m=3:5
     for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqir(13)),char(txt3(j+1,m)))
        defen1(w,flag222)=j+1;
        flag222=flag222+1;
    end
     end
end
% for i=1:4
%          for j=1:length(txt3(:,3))-1
%     if strcmp(char(chuanganqil1(i)),char(txt3(j+1,6)))
%         defen2(i)=j+1;
%     end
%          end
% end
for i=1:4
    flag444=1;
         for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil1(i)),char(txt3(j+1,6)))
        defen2(i,flag444)=j+1;
        flag444=flag444+1;
    end
         end
end
flag444=1;
 for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil2(1)),char(txt3(j+1,7)))
        defen3(1,flag444)=j+1;
        flag444=flag444+1;
    end
 end
flag444=1;
 for j=1:length(txt3(:,3))-1
    if strcmp(char(chuanganqil3(1)),char(txt3(j+1,8)))
        defen4(1,flag444)=j+1;
        flag444=flag444+1;
    end
 end

 for i=1:5
     for j=1:25
     if defen1(i,j)==0
         qq(i)=j-1;
         break;
     else
         qq(i)=25;
     end
     end
 end
 for i=1:5
     chuan(i)=mode(defen1(i,1:qq(i)));
 end
 for i=1:length(chuan)
 chuanjieguo(i)=ship(chuan(i)).name;
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[jieguo]= compare11(juzhen1,juzhen2,m,n,maxnumber) %矩阵为列矩阵 m,n分别为各行行数
for k=1:maxnumber
   for i=1:m
      for j=1:n
          if juzhen1(i,k)<=juzhen2(j,k)
              jieguo(i,j,k)=juzhen1(i,k)/juzhen2(j,k);
          else
              jieguo(i,j,k)=juzhen2(j,k)/juzhen1(i,k);
          end
      end
   end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[jieguo]= spcompare11(arry1,array2,m,n) %m为length1 n为length2
jieguo=1;
 if m~=n
     jieguo=0;
 else
     for k=1:m
         jieguo=min(arry1(k),array2(k))/max(arry1(k),array2(k))*jieguo;
     end
 end
end
