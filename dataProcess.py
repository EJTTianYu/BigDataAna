#coding=utf-8

import xlrd
import csv

def xlrd2csv():
    workbook=xlrd.open_workbook("/Users/tianyu/PycharmProjects/BigDataAna/data/data.xlsx");
    table=workbook.sheet_by_index(0)
    with open("/Users/tianyu/PycharmProjects/BigDataAna/data/data.csv",'w',encoding="utf-8") as f:
        writer=csv.writer(f);
        for row in range(table.nrows):
            row_value=table.row_values(row);
            writer.writerow(row_value);

if __name__=='__main__':
    xlrd2csv()


