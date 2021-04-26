GHC=ghc
PROGRAM=Char
SOURCE=Char

$(PROGRAM) : $(SOURCE)
	@$(GHC) -o $@ $^

clear:
	rm -r $(PROGRAM) $(foreach str, .o .hi, $(SOURCE)$(str))