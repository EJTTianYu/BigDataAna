clear
%��ȡexcel�ı������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%������������ȡ�������ڱ���perNum��
perNum= exceldata(:,3);
%�ֱ�ȡ����ͬ����Ⱥ������������perNum[1-5]��
perNum1 = perNum(1:484,:);
perNum2 = perNum(485:784,:);
perNum3 = perNum(785:980,:);
perNum4 = perNum(981:1405,:);
perNum5 = perNum(1406:2040,:);
%����Ⱥ�����ĸ����ܶȺ���
[f, x] = ksdensity(perNum);
plot(x, f);
%������ķֱ�ķ���ֱ𱣴浽���������
VarNo = [var(perNum1),var(perNum2),var(perNum3),var(perNum4),var(perNum5);]
%���ݷ���֮ǰ�ȱ�׼������
N1 = zscore(perNum1);
N2 = zscore(perNum2);
N3 = zscore(perNum3);
N4 = zscore(perNum4);
N5 = zscore(perNum5);
%�ж���0.05�������Ƿ����������
H1 = kstest(N1,[],0.05)
H2 = kstest(N2,[],0.05)
H3 = kstest(N3,[],0.05)
H4 = kstest(N4,[],0.05)
H5 = kstest(N5,[],0.05)

Nlog1 = zscore(log2(perNum1));
Nlog2 = zscore(log2(perNum2));
Nlog3 = zscore(log2(perNum3));
Nlog4 = zscore(log2(perNum4));
Nlog5 = zscore(log2(perNum5));
logH1 = kstest(Nlog1,[],0.05)
logH2 = kstest(Nlog2,[],0.05)
logH3 = kstest(Nlog3,[],0.05)
logH4 = kstest(Nlog4,[],0.05)
logH5 = kstest(Nlog5,[],0.05)
