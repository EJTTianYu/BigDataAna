clear
%读取数据
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%提取属性列3-14
Attr = exceldata(1:784,3:14);
%提取第二列的类别
group = exceldata(1:784,2);
%将logistic回归转化为二项式
id=find(group==2);
group(id)=0;
%logistic回归
[b,dev,stats] = glmfit(Attr,group,'binomial', 'link', 'logit');
%通过学到的模型预测结果
pre = glmval(b,Attr, 'logit');
k = [1:784];
plot(k,pre);
%将结果以0.5位分界线分为两类
pre(pre>0.5)=1;
pre(pre<=0.5)=0;
%统计预测结果中正确分类的个数
total = sum(pre==group);
accu = total / 784