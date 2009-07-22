CLASSPATH = .:./SnakeYAML-1.2.jar

default:

run: dump_load.class
	CLASSPATH=$(CLASSPATH) java dump_load

dump_load.class: dump_load.java
	CLASSPATH=$(CLASSPATH) javac dump_load.java
