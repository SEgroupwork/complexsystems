#!/bin/sh
running=1
while [ $running -eq 1 ]
do
	echo "-------------------------------------------------------------"
	echo "				Main Menu"
	echo "-------------------------------------------------------------"
	echo "0)Quit program"
	echo "1)Compute number of reviews with specificed rating"
	echo "2)Compute number of places for every price range"
	echo "3)Create subset of users with job IT Specialist"	
	echo "5)Retrieve all places that have more than 3 reviews"
	echo "6)Retrieve all reviews that are written by IT Specialist users"
	echo "7)Compute number of closed places"
	echo "9)Compute average rating for each category from the reviews table"
	echo "10)Find top 5 categories with highest average rating"
	echo "11)Computer number of places for every price range that are still operating"
	echo "12)Compute the average rating for each price range"
	echo "13)Compute the number of reviews for each price range"
	echo "14)Compute the average length of reviews for each rating"
	echo "15)Find place with largest number of reviews"
	echo
	read -p "Enter your option:" option

	if [ $option -eq 0 ]; then
		running=0
	elif [ $option -eq 1 ]; then 
		read -p "Enter rating:" rating
		#--quiet configuration disables the verbose output, and
		#-B configuration disables art boxes output, and instead
		#its output is only the value required
		output=$(impala-shell --quiet -B -f funcone.sql --var=userinput=$rating)
		echo
		echo "Number of reviews with rating" $rating "is:" $output
		echo
	elif [ $option -eq 2 ]; then
		impala-shell --quiet -f functwo.sql
	elif [ $option -eq 3 ]; then
		#saves output into output.txt file --print_header configuration
		#makes it so column headers are included in the output
		#-B configuration disables art boxes output
		impala-shell --quiet -B -f functhree.sql -o output.txt --print_header
	elif [ $option -eq 5 ]; then
		impala-shell --quiet -f funcfive.sql
		echo
	elif [ $option -eq 6 ] ; then
		impala-shell --quiet -B --print_header -f funcsix.sql
		echo
	elif [ $option -eq 7 ]; then
		impala-shell --quiet -f funcseven.sql
		echo
	elif [ $option -eq 9 ]; then
		impala-shell --quiet -f funcnine.sql
		echo
	elif [ $option -eq 10 ]; then
		impala-shell --quiet -f functen.sql
		echo
	elif [ $option -eq 11 ]; then
		impala-shell --quiet -f funceleven.sql
		echo
	elif [ $option -eq 12 ]; then
		impala-shell --quiet -f functwelve.sql
		echo
	elif [ $option -eq 13 ]; then
		impala-shell --quiet -f functhirteen.sql
		echo
	elif [ $option -eq 14 ]; then
		impala-shell --quiet -f funcfourteen.sql
		echo
	elif [ $option -eq 15 ]; then
		impala-shell --quiet -B -f  funcfifteen.sql
		echo
	fi

	if [ $option -ne 0 ]; then
		read -p "Do you wish to do another task?(y/n):" optiontwo
		if [ $optiontwo = 'n' ]; then
			running=0
		fi
	fi
done
