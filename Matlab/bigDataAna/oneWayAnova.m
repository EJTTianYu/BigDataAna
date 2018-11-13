clear
%读取表格数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%读取第7列数据的前784行，即第一二组数据
age = exceldata(1:784,7);
%读取第二列作为组
group = exceldata(1:784,2);
%分析第一二组数据的anova
[p,tbl,stats] = anova1(age,group)
%使用multcopare比较估计值是否有明显差异
multcompare(stats)
