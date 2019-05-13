.POSIX:
.SUFFIXES:

OBERON0_SOURCES = src/RISC.Mod src/OSS.Mod src/OSG.Mod src/OSP.Mod

build:
	mkdir -p out/
	java -cp $(OBERON_BIN) oberonc out $(OBERON0_SOURCES)

fractions: build
	java -cp $(OBERON_BIN):out OSP examples/Fractions.Mod

magicSquares: build
	java -cp $(OBERON_BIN):out OSP examples/MagicSquares.Mod

permutations: build
	java -cp $(OBERON_BIN):out OSP examples/Permutations.Mod

powers: build
	java -cp $(OBERON_BIN):out OSP examples/Powers.Mod

primeNumbers: build
	java -cp $(OBERON_BIN):out OSP examples/PrimeNumbers.Mod

clean:
	rm -rf out/
