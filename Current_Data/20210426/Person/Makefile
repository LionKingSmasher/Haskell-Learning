GHC=ghc
SOURCE=main Person
PROGRAM=start
DELETE=

$(PROGRAM) : $(foreach str, $(SOURCE), $(str).hs)
	@$(GHC) -o $@ $^

clear:
	rm -r $(PROGRAM) $(foreach str1, .o .hi, $(foreach str2, $(SOURCE), $(str2)$(str1)))