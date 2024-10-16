#Script to send the report to mail
export Email=$1
export Pass=$2

echo "Test email body" | mutt -s "Test Subject" -a ~/Executions/Temp/BashTest/target/surefire-reports/emailable-report.html -- chandunagasudheer215@gmail.com

if [ $? -eq 0 ]; then
	echo "Mail sent Successfully"
else
	echo "Mail not sent"
fi

unset Email
unset Pass


