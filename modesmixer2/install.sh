#!/bin/bash
ARCH="$(uname -m)"
echo Architecture: $ARCH 

if [ "$ARCH" == "x86_64" ]; then 
	echo Downloading x86_64
	curl -SL "https://drive.google.com/uc?export=download&id=1BH7zPxzk7qTMhhGOD6KPHMnM7qRf4_Dc" | tar -xzC /usr/bin modesmixer2
else 
	echo Downloading armv7
	curl -SL "https://drive.google.com/uc?export=download&id=1YvXOE7tlhtMocmQQBZ7VtW8AN_3oPleF" | tar -xzC /usr/bin modesmixer2
fi
