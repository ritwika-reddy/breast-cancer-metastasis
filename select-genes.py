import pandas as pd

van = pd.read_csv('vanDeVijver.csv')
names = van.ix[:, 1]
print list(names.index)

wang_genes = pd.read_csv("EntrezGeneIds-wang.csv")
col1 = wang_genes.ix[:, 1]
print col1

wang = wang_genes.ix[:, 0]
print wang

van = list(names.index)

names = [value for value in wang if value in van]
print names

van_genes = pd.read_csv("EntrezGeneIds-van.csv")
col2 = van_genes.iloc[:, 0]
print col2

common_genes = [value for value in col1 if value in col2]
print common_genes

thefile = open('scripts/col1', 'w')
for item in col1:
    thefile.write("%s\n" % item)

thefile = open('scripts/col2', 'w')
for item in col2:
    thefile.write("%s\n" % item)


def Remove(duplicate):
    final_list = []
    for num in duplicate:
        if num not in final_list:
            final_list.append(num)
    return final_list


common_genes = Remove(common_genes)
print len(common_genes)

thefile = open('scripts/col3', 'w')
for item in common_genes:
    thefile.write("%s\n" % item)

print(set(common_genes))
