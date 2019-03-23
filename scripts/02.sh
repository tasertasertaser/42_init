# 02 [SCRIPT]
# Write a script which delete an ACTIVE user on the VM.

if [ ! $1 ]
then
	echo 'need username'
fi
if [ $(whoami) != 'root' ]
then
	echo 'Only the root user may execute this script'
else
	userdel $1
fi

