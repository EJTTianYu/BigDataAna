clear
%��ȡexcel�ı������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%���ڰ�������ȡ�������ڱ���ageC��
ageC= exceldata(:,8);
%�ֱ�ȡ����ͬ��������������ageC[1-5]��
ageC1 = ageC(1:484,:);
ageC2 = ageC(485:784,:);
ageC3 = ageC(785:980,:);
ageC4 = ageC(981:1405,:);
ageC5 = ageC(1406:2040,:);
%���������ĸ����ܶȺ���
[f, x] = ksdensity(ageC);
plot(x, f);
%������ķֱ�ķ���ֱ𱣴浽���������
VarNo = [var(ageC1),var(ageC2),var(ageC3),var(ageC4),var(ageC5);]
%���ݷ���֮ǰ�ȱ�׼������
N1 = zscore(ageC1);
N2 = zscore(ageC2);
N3 = zscore(ageC3);
N4 = zscore(ageC4);
N5 = zscore(ageC5);
%�ж���0.05�������Ƿ����������
H1 = kstest(N1,[],0.05)
H2 = kstest(N2,[],0.05)
H3 = kstest(N3,[],0.05)
H4 = kstest(N4,[],0.05)
H5 = kstest(N5,[],0.05)

Nlog1 = zscore(log2(ageC1));
Nlog2 = zscore(log2(ageC2));
Nlog3 = zscore(log2(ageC3));
Nlog4 = zscore(log2(ageC4));
Nlog5 = zscore(log2(ageC5));
logH1 = kstest(Nlog1,[],0.05)
logH2 = kstest(Nlog2,[],0.05)
logH3 = kstest(Nlog3,[],0.05)
logH4 = kstest(Nlog4,[],0.05)
logH5 = kstest(Nlog5,[],0.05)

