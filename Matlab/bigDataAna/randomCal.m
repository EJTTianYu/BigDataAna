clear
%读取表格数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%随机生成在2040以内的200个不重复随机数
k=randperm(2040,200);
%提取这200行数据存储到excel中
excel=[];
for i=1:1:200
    excel=[excel;exceldata(k(i),:)];
end
%读取第7列数据
age = excel(:,7);
%读取第二列作为组
group = excel(:,2);
%分析第一二组数据的anova
[p,tbl,stats] = anova1(age,group);
%使用multcopare比较估计值是否有明显差异
%multcompare(stats);
