clear
%��ȡ�������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%���������2040���ڵ�200�����ظ������
k=randperm(2040,200);
%��ȡ��200�����ݴ洢��excel��
excel=[];
for i=1:1:200
    excel=[excel;exceldata(k(i),:)];
end
%��ȡ��7������
age = excel(:,7);
%��ȡ�ڶ�����Ϊ��
group = excel(:,2);
%������һ�������ݵ�anova
[p,tbl,stats] = anova1(age,group);
%ʹ��multcopare�ȽϹ���ֵ�Ƿ������Բ���
%multcompare(stats);
