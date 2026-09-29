dev:
	g++ -std=c++17 -Wall -Wextra -Wpedantic -g -fsanitize=address,undefined server.cpp -o server_dev

release:
	g++ -std=c++17 -Wall -Wextra -Wpedantic -O2 server.cpp -o server

clean:
	rm -f server server_dev resolve.bin session.tdbg

.PHONY: dev release clean
