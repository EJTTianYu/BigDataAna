clear
%��ȡ����
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%��ȡ������3-14
Attr = exceldata(1:784,3:14);
%��ȡ�ڶ��е����
group = exceldata(1:784,2);
%��logistic�ع�ת��Ϊ����ʽ
id=find(group==2);
group(id)=0;
%logistic�ع�
[b,dev,stats] = glmfit(Attr,group,'binomial', 'link', 'logit');
%ͨ��ѧ����ģ��Ԥ����
pre = glmval(b,Attr, 'logit');
k = [1:784];
plot(k,pre);
%�������0.5λ�ֽ��߷�Ϊ����
pre(pre>0.5)=1;
pre(pre<=0.5)=0;
%ͳ��Ԥ��������ȷ����ĸ���
total = sum(pre==group);
accu = total / 784