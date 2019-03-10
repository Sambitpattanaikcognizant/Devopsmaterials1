head unirank.csv
head -n 25 unirank.csv
yum install python3-csvkit
head  unirank.csv | csvlook
head -n 25 unirank.csv | csvlook
grep -i "college" unirank.csv | csvlook
wc -l unirank.csv
grep -i "college" unirank.csv | wc -l
grep "CA" unirank.csv | csvlook

