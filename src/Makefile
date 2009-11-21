# This is a makefile that builds the Tagalog morphological parser
# *****************************************************************


XFST = xfst
LEXC = lexc
TWOLC = twolc

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
TWOLC = /opt/sami/xerox/bin/twolc -utf8
endif

scripts=$(GTHOME)/gt/script

LEX = tgl-lex.txt \
	verb-tgl-lex.txt \
	verb-tgl-morph.txt 
#	noun-tgl-lex.txt \
#	noun-tgl-morph.txt \
#	propernoun-tgl-lex.txt \
#	propernoun-tgl-morph.txt \
#	adj-tgl-lex.txt \
#	adj-tgl-morph.txt \
#	adv-tgl-lex.txt \
#	abbr-tgl-lex.txt \
#	acro-tgl-lex.txt \
#	pron-tgl-lex.txt \
#	punct-tgl-lex.txt \
#	numeral-tgl-lex.txt \
#	pp-tgl-lex.txt \
#	cc-tgl-lex.txt \
#	cs-tgl-lex.txt \
#	interj-tgl-lex.txt \
#	det-tgl-lex.txt


# This is a preliminary file that builds a TGL parser based upon
# twolc.

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon tgl.save

itgl.fst: ../bin/itgl.fst
../bin/itgl.fst: ../bin/tgl.fst
	@echo
	@echo "*** Building the inverse itgl.fst ***"
	@echo
	@printf "load ../bin/tgl.save \n\
	invert net \n\
	save stack ../bin/itgl.fst \n\
	quit \n" > ../../tmp/itgl-fst-script
	$(XFST) < ../../tmp/itgl-fst-script
	@rm -f ../../tmp/itgl-fst-script


# This goal is to build the final analyser. It depends on all the files.

tgl.fst: ../bin/tgl.fst
../bin/tgl.fst: ../bin/tgl.save ../bin/caseconv.fst ../bin/tok.fst 
	@echo
	@echo "*** Building tgl.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/tgl.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/tgl.fst \n\
	quit \n" > ../../tmp/tgl-fst-script
	$(XFST) < ../../tmp/tgl-fst-script
	@rm -f ../../tmp/tgl-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-script
	$(XFST) < ../../tmp/caseconv-script
	@rm -f ../../tmp/caseconv-script


# Another goal is to build a preprocessor.This goal depends on tok.txt

tok.fst: ../bin/tok.fst
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > ../../tmp/tok-script
	$(XFST) < ../../tmp/tok-script
	@rm -f ../../tmp/tok-script



# The third goal is to build tgl.save
# This goal depends on twol-tgl.bin and a bunch of lexicon files

tgl.save: ../bin/tgl.save
../bin/tgl.save: ../bin/twol-tgl.bin $(LEX)
	@echo
	@echo "*** Building tgl-lex.save ***" ;
	@echo
	printf "compile-source $(LEX)  \n\
	read-rules ../bin/twol-tgl.bin \n\
	compose-result \n\
	save-result ../bin/tgl.save \n\
	quit \n" > ../../tmp/tgl-lex-save-script
	$(LEXC)  < ../../tmp/tgl-lex-save-script
	rm -f ../../tmp/tgl-lex-save-script

# The fourth goal is to build twol-tgl.bin
# This goal depends on twol-tgl.txt

twol-tgl.bin: ../bin/twol.tgl.bin
../bin/twol-tgl.bin: twol-tgl.txt
	@echo
	@echo "*** Building twol-tgl.bin ***" ;
	@echo
	@printf "read-grammar twol-tgl.txt \n\
	compile \n\
	save-binary ../bin/twol-tgl.bin \n\
	quit \n" > ../../tmp/twol-tgl-script
	$(TWOLC)  < ../../tmp/twol-tgl-script
	@rm -f ../../tmp/twol-tgl-script


clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


