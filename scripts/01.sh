# 01 [SCRIPT]
# Write a script which displays only the login, UID and Path of each entry of the /etc/passwd file.

cat /etc/passwd | while read line
do
	echo "$line" | cut -d ":" -f1,3,6
done

