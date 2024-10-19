#Script to send the report to mail
let Email_name=$1
let Password=$2
export Email=$Email_name;
export Pass=$Password
echo "Test email body" | mutt -s "Test Subject" -a ~/Executions/Temp/BashTest/target/surefire-reports/emailable-report.html -- chandu@qlg8.onmicrosoft.com

if [ $? -eq 0 ]; then
	echo "Mail sent Successfully"
else
	echo "Mail not sent"
fi

unset Email
unset Pass


