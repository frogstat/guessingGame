#!/bin/bash

echo "Vanya_Samans program."

if [[ ! -e GuessingGame.java || ! -e Guesser.java ]];then
	echo "Could not find files! Exiting program..."
	exit 1
fi

if [ ! -e Vanya_Saman_labb ];then
	mkdir Vanya_Saman_labb
fi

cp GuessingGame.java Vanya_Saman_labb
cp Guesser.java Vanya_Saman_labb
cd Vanya_Saman_labb
echo -n "Running game from ";pwd

echo "compiling..."
javac GuessingGame.java
echo "Running..."
echo "*******************************"
java GuessingGame
echo "*******************************"

echo "Done!"
rm *.class
echo -n "Files in folder: "; ls
exit 0
