clear
%��ȡexcel�ı������
[exceldata] = xlsread('/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx');
%������������ȡ�������ڱ���density��
density= exceldata(:,5);
%�ֱ�ȡ����ͬ���ĳ��ܶȣ�������density[1-5]��
density1 = density(1:484,:);
density2 = density(485:784,:);
density3 = density(785:980,:);
density4 = density(981:1405,:);
density5 = density(1406:2040,:);
%���Ƴ��ܶȵĸ����ܶȺ���
[f, x] = ksdensity(density);
plot(x, f);
%������ķֱ�ķ���ֱ𱣴浽���������
VarNo = [var(density1),var(density2),var(density3),var(density4),var(density5);]
%���ݷ���֮ǰ�ȱ�׼������
N1 = zscore(density1);
N2 = zscore(density2);
N3 = zscore(density3);
N4 = zscore(density4);
N5 = zscore(density5);
%�ж���0.05�������Ƿ����������
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
