clear
%读取处理好的csv文件（原始数据的年龄列）
col7=load("/Users/tianyu/PycharmProjects/BigDataAna/data/col7.csv");

ex=zscore(col7);
%绘制概率密度曲线
[f,x]=ksdensity(ex);
plot(x,f)
xlabel("age");
title("概率密度曲线")

%使用normplot拟合，初步判断是否满足正态分布
normplot(ex)

%检验是否是正态分布,默认置信度为0.05
[h,p]=kstest(ex,[],0.05)

