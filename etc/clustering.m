data=xlsread('222.xlsx');
time=xlsread('time.xlsx');
figure(1);
clear flag_a
for i=2:564
    if time(i)>=2018042910800000;
        time(i)=time(i)-400000;
    end
end
       
for i=2:564
    time_now(i)=time(i)-time(1);
end

        
 time_now= time_now./10000;
posi_data=[data(:,1) data(:,2)];
flag=(data(:,4))';
m=1;
for i=1:563
    if flag(i)~=flag(i+1)
        flag_a(m)=i+1;
       m=m+1;
    end
end
for i=1:12

    
if i==1
    scatter3(posi_data(1:flag_a(1)-1,1),posi_data(1:flag_a(1)-1,2),time_now(1:flag_a(1)-1));
hold on 
else
    n1=flag_a(i-1);
    n2=flag_a(i)-1;
    scatter3(posi_data(n1:n2,1),posi_data(n1:n2,2),time_now(n1:n2));
    hold on
end
end
for i=13:16

    n1=flag_a(i-1);
    n2=flag_a(i)-1;
    scatter3(posi_data(n1:n2,1),posi_data(n1:n2,2),time_now(n1:n2),'*');
    hold on
end
    i=17;
    n1=flag_a(i-1);
    n2=flag_a(i)-1;
    scatter3(posi_data(n1:n2,1),posi_data(n1:n2,2),time_now(n1:n2),'d');
    hold on   
    i=18;
    n1=flag_a(i-1);
    scatter3(posi_data(n1,1),posi_data(n1,2),time_now(n1),'pentagram');
    hold on

xlabel('经度');
ylabel('纬度');
zlabel('时间');
% chang1=length(flag_a)
% flag_a=[1 flag_a flag_a(chang1)+1];
flag_a=[1 flag_a ];
% chang2=length(flag_a);
jingdu=posi_data(:,1);
weidu=posi_data(:,2);
figure(2);
for i=1:8
%  i=i-8;
    p=polyfit(jingdu(flag_a(i):flag_a(i+1)-1),weidu(flag_a(i):flag_a(i+1)-1),1);
    pp(i,:)=p;
    x2=122:0.01:125;
    y2=polyval(p,x2);
    y22(i,1:301)=y2;

    plot(jingdu(flag_a(i):flag_a(i+1)-1),weidu(flag_a(i):flag_a(i+1)-1),'h',x2,y2)
    hold on
end
% for i=13:15
%   j=i-4;
%     p=polyfit(jingdu(flag_a(i):flag_a(i+1)-1),weidu(flag_a(i):flag_a(i+1)-1),1);
%     pp(j,:)=p;
%     x2=122:0.01:125;
%     y2=polyval(p,x2);
%     y22(j,1:301)=y2;
% 
%     plot(jingdu(flag_a(i):flag_a(i+1)-1),weidu(flag_a(i):flag_a(i+1)-1),'h',x2,y2)
%     hold on
% end
for i=1:length(pp)
    xx1(i)=pp(i,1);
end
for i=1:length(pp)
    xx2(i)=pp(i,2);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flag222=1;
data=[xx1;xx2]';
% [u,re]=KMeans(data,4) ;
% flag21=re(:,3);
% [m21,n21]=size(u);
% for i=1:m21-1
%     for j=i+1:m21
%         njuli(flag222)=jsjuli(u(i),u(j));
%         flag222=flag222+1;
%     end
% end
% panbieyinzi=max(njuli)
%         


% for i=1:n21
%     p2=re(i,1:2);
%     p1=u(flag21(i),1:2);
%     jisu(flag21(i),flag222)=jsjuli(p1,p2);
%     flag222=flag222+1;
% end
% geshu=1;
%     [m22,n22]=size(jisu);
%  for i=1:m22
%      jiashu=0;
%     for j=1:n22
%         if jisu(i,j)~=0;
%             jiashu=jiashu+1;
%         end
%         junzhi21(i)=sum(jisu(i,:))/jiashu;
%     end
%  end
%  

[cidx2,cmeans2,sumd2,D2] = kmeans(data,4,'dist','sqEuclidean');
P2 = figure;clf;
[silh2,h2] = silhouette(data,cidx2,'sqeuclidean');
[m21,n21]=size(cmeans2);
for i=1:m21-1
    for j=i+1:m21
        njuli(flag222)=jsjuli(cmeans2(i),cmeans2(j));
        flag222=flag222+1;
    end
end
panbieyinzi=max(njuli)
