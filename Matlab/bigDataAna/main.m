clear
%��ȡ����õ�csv�ļ���ԭʼ���ݵ������У�
col7=load("/Users/tianyu/PycharmProjects/BigDataAna/data/col7.csv");

ex=zscore(col7);
%���Ƹ����ܶ�����
[f,x]=ksdensity(ex);
plot(x,f)
xlabel("age");
title("�����ܶ�����")

%ʹ��normplot��ϣ������ж��Ƿ�������̬�ֲ�
normplot(ex)

%�����Ƿ�����̬�ֲ�,Ĭ�����Ŷ�Ϊ0.05
[h,p]=kstest(ex,[],0.05)

