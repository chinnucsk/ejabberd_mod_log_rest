
# Set the ERL environnement variable if you want to use a specific erl

ERL ?= $(shell which erl)
EJABBERD_DEV ?= ../ejabberd-modules/ejabberd-dev/trunk

all: clean
	$(ERL) -pa $(EJABBERD_DEV)/ebin -make

clean:
	rm -f ebin/*.beam

dist-clean: clean
	find . \( -name \*~ -o -name *.swp \) -exec rm -f {} \;
