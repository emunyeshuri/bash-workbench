number_of_files=$(ls -1| wc -w)
function users{
	excon=1
	user_answer = 0
	while [ $excon -eq 1 ]
  	do
	 	echo "How many files do you think are in the directory?"
	 	read user_answer
		if [ $user_answer -eq $number_of_files ]
			then
			echo "Conglaturations you guessed right"
			exit_condition=0
		elif[ $user_answer -lt $number_of_files ]
			then
			echo " Please try again,your guess is below the number of files"
		else
			echo "Please try again , your guess is above the number of files"
		fi
	done
}
users
