GHC=ghc
PROGRAM=List
SOURCE=List

$(PROGRAM) : $(SOURCE).hs
	echo "Compile $(PROGRAM)"
	@$(GHC) -o $@ $^

clear:
	rm -r $(PROGRAM) $(foreach str, .o .hi, $(SOURCE)$(str))