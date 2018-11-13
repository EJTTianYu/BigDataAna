#coding=utf-8

import csv
#建立两个文件流，输入文件为原始数据，输出文件为第7列的数值数据，表头被删除
inF="/Users/tianyu/PycharmProjects/BigDataAna/data/data.csv"
outF="/Users/tianyu/PycharmProjects/BigDataAna/data/col7.csv"

def exCol7():
    with open(inF,'r') as fin,open(outF,'w',encoding='utf-8') as fout:
        #读取inF中的数据
        lines=csv.reader(fin)
        #写入文件
        writer=csv.writer(fout)

        for line in lines:
            try:
                col7=float(line[6])
                writer.writerow([line[6]])
            except:
                print(line)

if __name__=="__main__":
    exCol7()

