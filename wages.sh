#script for exercise 5 
#bash wages.sh



#part 2:

echo "The highest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -r -n | head -n 1)"
echo "The lowest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -n | head -n 1)" 
echo "The number of females in the top ten earners is: $(cat wages.csv | sed '1d' | sort -t "," -k 4 -r -n | head -n 10 | grep -c "female")"

#part 3:
val1=$(cat wages.csv | cut -d "," -f 3,4 | grep "16," | cut -d "," -f 2 | sort -n | head -n 1)
val2=$(cat wages.csv | cut -d "," -f 3,4 | grep "12," | cut -d "," -f 2 | sort -n | head -n 1)
# he wants 16minimum-12minimum
val3=$(echo "$val1 - $val2" | bc)
echo "The difference in minimum wage between a high school and college education is $val3 dollars" 
