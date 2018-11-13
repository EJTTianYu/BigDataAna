clear
%读取excel的表格数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%将第五列数据取出保存在变量density中
density= exceldata(:,5);
%分别取出不同类别的稠密度，保存在density[1-5]中
density1 = density(1:484,:);
density2 = density(485:784,:);
density3 = density(785:980,:);
density4 = density(981:1405,:);
density5 = density(1406:2040,:);
%绘制稠密度的概率密度函数
[f, x] = ksdensity(density);
plot(x, f);
%将五类的分别的方差分别保存到矩阵的五列
VarNo = [var(density1),var(density2),var(density3),var(density4),var(density5);]
%数据分析之前先标准化数据
N1 = zscore(density1);
N2 = zscore(density2);
N3 = zscore(density3);
N4 = zscore(density4);
N5 = zscore(density5);
%判断在0.05条件下是否满足零假设
H1 = kstest(N1,[],0.05)
H2 = kstest(N2,[],0.05)
H3 = kstest(N3,[],0.05)
H4 = kstest(N4,[],0.05)
H5 = kstest(N5,[],0.05)

Nlog1 = zscore(log2(density1));
Nlog2 = zscore(log2(density2));
Nlog3 = zscore(log2(density3));
Nlog4 = zscore(log2(density4));
Nlog5 = zscore(log2(density5));
logH1 = kstest(Nlog1,[],0.05)
logH2 = kstest(Nlog2,[],0.05)
logH3 = kstest(Nlog3,[],0.05)
logH4 = kstest(Nlog4,[],0.05)
logH5 = kstest(Nlog5,[],0.05)
