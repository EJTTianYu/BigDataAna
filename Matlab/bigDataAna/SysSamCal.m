clear
%读取表格数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
excel=[]
for i=10:10:2010
    excel=[excel;exceldata(i,:)];
end
%读取第7列数据
age = excel(:,7);
%读取第二列作为组
group = excel(:,2);
%分析第一二组数据的anova
[p,tbl,stats] = anova1(age,group);
%使用multcopare比较估计值是否有明显差异
%multcompare(stats);