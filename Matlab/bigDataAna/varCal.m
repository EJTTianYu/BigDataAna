clear
%分别处理不同类别的平均年龄
cate1=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate1.csv");
cate2=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate2.csv");
cate3=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate3.csv");
cate4=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate4.csv");
cate5=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate5.csv");


%分别计算方差
var(cate1);
var(cate2);
var(cate3);
var(cate4);
var(cate5);

%分别计算齐次方差
v12=vartest2(cate1,cate2)
v13=vartest2(cate1,cate3)
v14=vartest2(cate1,cate4)
v15=vartest2(cate1,cate5)
v23=vartest2(cate2,cate3)
v24=vartest2(cate2,cate4)
v25=vartest2(cate2,cate5)
v34=vartest2(cate3,cate4)
v35=vartest2(cate3,cate5)
v45=vartest2(cate4,cate5)