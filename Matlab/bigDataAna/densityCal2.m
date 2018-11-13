clear
%获取表格中的数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%取出其中的第五列稠密度
density = exceldata(:,5);
group = exceldata(:,2);
%使用该函数判断在非高斯分布情况下的单因素方差分析
[p,tbl,stats] = kruskalwallis(density,group)
