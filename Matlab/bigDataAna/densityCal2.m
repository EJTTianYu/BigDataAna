clear
%��ȡ����е�����
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%ȡ�����еĵ����г��ܶ�
density = exceldata(:,5);
group = exceldata(:,2);
%ʹ�øú����ж��ڷǸ�˹�ֲ�����µĵ����ط������
[p,tbl,stats] = kruskalwallis(density,group)
