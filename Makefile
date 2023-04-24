all: server client

server: bin/monitor
client: bin/tracer

bin/monitor: obj/monitor.o
	gcc -g obj/monitor.o -o bin/monitor

obj/monitor.o : src/monitor.c
	gcc -Wall -g -c src/monitor.c -o obj/monitor.o

bin/tracer: obj/tracer.o
	gcc -g obj/tracer.o -o bin/tracer

obj/tracer.o : src/tracer.c
	gcc -Wall -g -c src/tracer.c -o obj/tracer.o

clean:
	rm -f bin/tracer bin/monitor obj/*.o tmp/*