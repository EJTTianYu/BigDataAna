clear
%��ȡ�������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
excel=[]
for i=10:10:2010
    excel=[excel;exceldata(i,:)];
end
%��ȡ��7������
age = excel(:,7);
%��ȡ�ڶ�����Ϊ��
group = excel(:,2);
%������һ�������ݵ�anova
[p,tbl,stats] = anova1(age,group);
%ʹ��multcopare�ȽϹ���ֵ�Ƿ������Բ���
%multcompare(stats);