setup:
	apt-get install -y nodejs npm
	npm install http

build:
	echo "nothing to build, this Node, but thank you for thinking of me"

run:
	node index.js

dockerstart:
	make setup
	make build
	make run
