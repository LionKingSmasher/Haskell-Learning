GHC=ghc
PROGRAM=List
SOURCE=Concat

$(PROGRAM) : $(SOURCE).hs
	$(GHC) -o $@ $^

clear:
	rm -r $(PROGRAM) $(SOURCE).hi $(SOURCE).o