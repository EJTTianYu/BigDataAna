clear
%�ֱ���ͬ����ƽ������
cate1=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate1.csv");
cate2=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate2.csv");
cate3=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate3.csv");
cate4=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate4.csv");
cate5=load("/Users/tianyu/PycharmProjects/BigDataAna/data/cate5.csv");

ex1=zscore(cate1);
ex2=zscore(cate2);
ex3=zscore(cate3);
ex4=zscore(cate4);
ex5=zscore(cate5);

%������Ŷ���0.05�µĸ�����������Ƿ�������̬�ֲ�
h1=kstest(ex1,[],0.05)
h2=kstest(ex2,[],0.05)
h3=kstest(ex3,[],0.05)
h4=kstest(ex4,[],0.05)
h5=kstest(ex5,[],0.05)