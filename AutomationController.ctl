ksh -x ~/Scripts_Storage/Automation.ksh https://github.com/ChanduNagaSudheer/BashTest.git

exit_status=$?;
echo "Exit status is $exit_status";

cd
if [ exit_status -eq 0 ]; then
	echo "Automation Completed $(date '+%y-%m-%d %H:%M:%S')" >> file.log
else
	echo "Automation failed $(date '+%y-%m-%d %H:%M:%S')" >> file.log;
fi
