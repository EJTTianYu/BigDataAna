# BigDataAna
大数据分析第一次大作业，通过表格信息进行方差分析，实现语言：python，matlab
# 项目结构说明
原始数据：data/data.xlsx
转化的csv数据：data/data.csv
提取的第七列年龄数据：data/col7.csv
分类之后的5种类别的年龄数据：data/cate[1-5].csv
#代码说明
将表格数据转化为csv格式：src/dataProcess.py
将第7列数据提取出来：src/exCol7.py
将第7列数据分类分成不同的csv：src/category.py
题目3.1绘制概率密度曲线：Matlab/bigDataAna/main.m
题目3.2测试每一分类是否服从正态分布：Matlab/bigDataAna/Kase.m
题目3.2计算齐次方差：Matlab/bigDataAna/varCal.m
题目3.3计算单因素方差分析：Matlab/bigDataAna/oneWayAnova.m
题目4对于群人数进行分析：Matlab/bigDataAna/personNum.m
题目4对于稠密度进行分析：Matlab/bigDataAna/densityCal.m
题目4对于年龄差进行分析：Matlab/bigDataAna/AgeCal.m
题目5.2对群人数进行Kruskal-Wallis H test：Matlab/bigDataAna/perNoCal.m
题目5.2对稠密度进行Kruskal-Wallis H test：Matlab/bigDataAna/densityCal2.m
题目5.2对年龄差进行Kruskal-Wallis H test：Matlab/bigDataAna/ageCal2.m
题目6对平均年龄进行随机取样分析：Matlab/bigDataAna/randomCal.m
题目6对平均年龄进行系统取样分析：Matlab/bigDataAna/SysSamCal.m
题目7对于两种类别进行logistic回归：Matlab/bigDataAna/Acc.m
