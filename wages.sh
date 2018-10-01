<<<<<<< HEAD
#script to return unique gender-yearsExperience for wages.csv
#usage bash wages.sh wages.csv
cat $1 | cut -d , -f 1,2 | sort -u -t "," -k1,1 -k2n,2 | tr "," " " 

=======
#usage cat wages.csv | bash  wages.sh



#part 2:

echo "The highest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -r -n | head -n 1)"
echo "The lowest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -n | head -n 1)" 
echo "The number of females in the top ten earners is: $(cat wages.csv | sed '1d' | sort -t "," -k 4 -r -n | head -n 10 | grep -c "female")"
>>>>>>> 2008913cc75e48d1afb4a07a70645704c56e26bd
