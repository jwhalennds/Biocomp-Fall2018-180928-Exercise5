#script to return unique gender-yearsExperience for wages.csv
cat $1 | cut -d , -f 1,2 | sort -u -t "," -k1,1 -k2n,2 | tr "," " " 
