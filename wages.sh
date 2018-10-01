#script to 
#usage cat wages.csv | bash  wages.sh



#part 2:

echo "The highest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -r -n | head -n 1)"
echo "The lowest earner is: $(cat wages.csv | sed '1d' | cut -d "," -f 1,2,4 | sort -t "," -k 3 -n | head -n 1)" 
echo "The number of females in the top ten earners is: $(cat wages.csv | sed '1d' | sort -t "," -k 4 -r -n | head -n 10 | grep -c "female")"
