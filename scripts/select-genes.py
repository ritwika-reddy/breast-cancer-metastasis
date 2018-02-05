import csv

with open('../EntrezGeneIds-wang.csv', 'rb') as csvfile:
    reader = csv.reader(csvfile, delimiter=",")
    for row in reader:
        print ', '.join(row)
