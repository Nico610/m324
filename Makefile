# Hier erstellt ihr alle Befehle damit die komplette Entwicklungsumgebung, installiert und gestartet werden kann
# Die einzelnen Schrite um die Anwedungen zu starten findet ihr im README.md

ifeq ($(OS),Windows_NT)
	MVNW = mvnw.cmd
else
	MVNW = ./mvnw
endif

.PHONY: test clean

test:
	cd backend && $(MVNW) test

clean:
	cd backend && $(MVNW) clean