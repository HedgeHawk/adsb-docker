#!/bin/bash
ARCH="$(uname -m)"
echo Architecture: $ARCH 

if [ "$ARCH" == "x86_64" ]; then 
	echo Downloading x86_64
	curl -SL "https://drive.google.com/uc?export=download&id=1QzUqYTt-Bf-m817-i3W_RvodB019kxC5" | tar -xzC /usr/bin modesmixer2
else 
	echo Downloading armv7
	curl -SL "https://drive.google.com/uc?export=download&id=1YvXOE7tlhtMocmQQBZ7VtW8AN_3oPleF" | tar -xzC /usr/bin modesmixer2
fi
