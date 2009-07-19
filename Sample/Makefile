CLASSPATH = .:./SnakeYAML-1.2.jar

default:

run-java: dump_load.class
	CLASSPATH=$(CLASSPATH) java dump_load

dump_load.class: dump-load.java
	CLASSPATH=$(CLASSPATH) javac dump-load.java

clean:
	rm *.class
