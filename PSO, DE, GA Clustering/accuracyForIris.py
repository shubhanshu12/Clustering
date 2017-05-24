import csv
cluster = []
label= []
counts= []
with open('ir.csv', 'rb') as myfile:    
    reader = csv.reader(myfile, delimiter="\t")
    for val in reader:
        cluster.append(val[0])

with open('irislabel.csv', 'rb') as myfile:    
    reader = csv.reader(myfile, delimiter="\t")
    for line in reader:
        label.append(line[0])

lab=['setosa','versicolor','virginica']
from itertools import permutations
l = list(permutations(lab))
print l
for i in l:
 word1 = [w.replace('1', i[0]) for w in cluster]
 word2 = [w.replace('2', i[1]) for w in word1]
 word3 = [w.replace('3', i[2]) for w in word2]
 count=0
 for x,y in zip(word3,label):
   if x==y:
    count=count+1
 counts.append(count)
 print count
 
m=max(counts)
print ("Max:",max(counts))
print ("Index:",counts.index(max(counts)))


accuracy=float(float((float(m)/float(150)))*float(100))
print ("Accuracy:",accuracy)
