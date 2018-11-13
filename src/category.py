#coding=utf-8

import csv
#建立输入输出流，将不同类别的平均年龄分类以便之后做进一步的处理
inF="/Users/tianyu/PycharmProjects/BigDataAna/data/data.csv"
outFs=["/Users/tianyu/PycharmProjects/BigDataAna/data/cate1.csv","/Users/tianyu/PycharmProjects/BigDataAna/data/cate2.csv","/Users/tianyu/PycharmProjects/BigDataAna/data/cate3.csv","/Users/tianyu/PycharmProjects/BigDataAna/data/cate4.csv","/Users/tianyu/PycharmProjects/BigDataAna/data/cate5.csv"]

def exCol7():
    with open(inF,'r') as fin,open(outFs[0],'w',encoding='utf-8') as fout0, \
        open(outFs[1], 'w', encoding='utf-8') as fout1,open(outFs[2],'w',encoding='utf-8') as fout2, \
        open(outFs[3], 'w', encoding='utf-8') as fout3,open(outFs[4],'w',encoding='utf-8') as fout4:
        #读取inF中的数据
        lines=csv.reader(fin)
        #写入文件
        writer0 = csv.writer(fout0)
        writer1 = csv.writer(fout1)
        writer2 = csv.writer(fout2)
        writer3 = csv.writer(fout3)
        writer4 = csv.writer(fout4)
        for line in lines:
            try:
                col7=float(line[6])
                if(line[1]=='1.0'):
                    writer0.writerow([line[6]])
                if (line[1]=='2.0'):
                    writer1.writerow([line[6]])
                if (line[1]=='3.0'):
                    writer2.writerow([line[6]])
                if (line[1]=='4.0'):
                    writer3.writerow([line[6]])
                if (line[1]=='5.0'):
                    writer4.writerow([line[6]])
            except:
                print(line)

if __name__=="__main__":
    exCol7()