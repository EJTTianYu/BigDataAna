clear
%��ȡ�����е�����
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%ȡ�����еĵ�����Ⱥ����
perNo = exceldata(:,3);
group = exceldata(:,2);
%ʹ�øú����ж��ڷǸ�˹�ֲ�����µĵ����ط������
[p,tbl,stats] = kruskalwallis(perNo,group)