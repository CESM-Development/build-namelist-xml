
nml : nml.F90
	gfortran -o nml nml.F90

test : multi single

multi : multi-line.nml nml
	@echo "\nmulti-line : "
	@cat $<
	./nml < $<

single : single-line.nml nml
	@echo "\nsingle-line : "
	@cat $<
	./nml < $<


clean : FORCE
	@rm -rf *~ nml


FORCE :
