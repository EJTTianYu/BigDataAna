clear
%��ȡ�������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%��ȡ��7�����ݵ�ǰ784�У�����һ��������
age = exceldata(1:784,7);
%��ȡ�ڶ�����Ϊ��
group = exceldata(1:784,2);
%������һ�������ݵ�anova
[p,tbl,stats] = anova1(age,group)
%ʹ��multcopare�ȽϹ���ֵ�Ƿ������Բ���
multcompare(stats)
