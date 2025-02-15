## 3p indicate line no
sed -n '3p' test.csv   

## Last line $p
sed -n '$p' test.csv

## Range
sed -n '3,5p' test.csv

## Search
sed -n '/India/p' test.csv

## Multiple expression -e here we see line 2 and 4
sed -n -e '2p' -e '4p' test.csv

## To see user from india and germany
sed -n -e '/india/p' -e '/germany/p' test.csv

## 1st line kai baad 2 line aur dikhao
sed -n '1, +2p' test.csv

## To see odd and even line 
sed -n '1~2p' test.csv ## 1 line 3 line 5 line ...

## To read expression from external file. We can put expression in external file for example to read specific line (1p 3p 5p)
sed -n -f ex_file test.csv

## To replace s--->substitute Pol=old word Paul new world g is global 
sed 's/Pol/Paul/g' test.csv ## This command show output but don't edit the actual file

## To make change at a specific line
sed '2 s/Pol/Paul/g' test.csv ## 2 is the line number

## Except 2 change every line
sed '2! s/Pol/Paul/g' test.csv

## Use i to make edit in the actual file
sed -i '2! s/Pol/Paul/g' test.csv

## Only paul country change. /Paul/ first search Paul
sed '/Paul/s/India/US/g' test.csv

## To delete a line d--delete
sed '1d' file.txt

## To delete the last line
sed '$d' file.txt

## To delete multiple
sed '2,4d' file.txt

## To delete user from belgium
sed '/Belgium/d' file.txt

## To delete an empty line  ^$ ---> empty line
sed '/^$/d' file.txt

## Search India and w ------- write them in a new file IndianUsers
sed '/India/ w IndianUsers' file.txt

## Append a ------ append
sed '3 a Hello User' file.txt

## Add after a line
sed '/loki/ a Hello User' file.txt

## To replace a line
sed '4 c Hello User' file.txt

## To add above a line
sed '1 i Hello User' file.txt

## To see Hiden charcter
sed -n 'l' file.txt 

## To wrap a content of a file
sed -n 'l 10' file.txt ## after 10 col it start from new

## To insert data from external file to our own file 
sed '3 r externalfile' file.txt # after 3 line r------------------extrnal file data 

## To stop after we find a indian user
sed '/India/ q' file.txt

## To insert data from a linux command for example date command
sed '2 e date' file.txt

## To see line number
sed '=' file.txt

## To get name starting from v
sed -n '/^v/p' file.txt

## To get name ending at a
sed -n '/a$/p' file.txt

## To get name starting from a and c
sed -n '/[AC]/p' file.txt

## To add range
sed -n '/[A-D]/p' file.txt

## To search an file ending from an extension
ls -ltr *.txt

## Possix class digit is the class only those line print have digit with them
sed -n '/[[:digit:]]/p' possix

## lowe upper space punct alpha







