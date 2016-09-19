#!/bin/bash
#awk 'NR%3==1{for(i=2;i<=NF;i++){a[tolower($i)]++;}}END{for(i in a){print i,a[i]}}' ijcai.txt |sort -n -k 2
awk 'NR==FNR&&NR%3==1{for(i=2;i<=NF;i++){a[tolower($i)]++;}}NR>FNR{b[$1]=1;}END{for(i in a){if(b[i]!=1)print i,a[i]}}' $1 stopwords.dat|sort -nr -k 2 

