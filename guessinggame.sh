#!/mnt/c/Users/admin/Desktop
#File: guessinggame.sh
function how_many {
 echo "how many files are in the current directory?"
}
how_many
read count 
count_files=$(ls | wc -l)
while [[ $count -ne $count_files ]]
do
  if [[ $count -gt $count_files ]]
  then
    echo "Wrong give a lower number of files"
	how_many
	read count
  elif [[ $count -lt $count_files ]]
  then
    echo "Wrong give a highter number of files"
	how_many
	read count
  fi
done 
echo "You find it congratulations, the number of files are $count_files "