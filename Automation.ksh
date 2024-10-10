
PID_DIR="working";
WORKING_DIR="Executions";
GIT_REPO=$1;

cloning_repo(){
	cd Temp;
	git clone $GIT_REPO;
	check_status "Cloning";
}
check_status(){
	if [ $? -eq 0 ]; then
		echo "$1 completed successfully";
	else
		echo "$1 failed";
		exit 1;
	fi
}
pid_check(){
	cd
	cd $PID_DIR;
	if [ -f "Automation.pid" ]; then
		echo "PID file is present";
		exit 1;
	else
		echo "PID file is not present";
	fi
}
step1(){
	cd
	cd $WORKING_DIR;
	mkdir Temp;
	check_status "Creating dir";
	cloning_repo
}
step2(){
	cd BashTest;
	echo "Current dir - $(pwd)";
	mvn clean test;
	check_status "Testing";
}
clean(){
	cd ../..;
	rm -rf Temp;
	echo "folder deleted successfully";
}

pid_check
step1
step2
clean



