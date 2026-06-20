FC ?= gfortran
FFLAGS ?= -O3
ARCHFLAGS ?=

all: nma_check_modes nma_diagrtb nma_elnemo_pdbmat

nma_check_modes: check_modes.o
	$(FC) $(FFLAGS) $(ARCHFLAGS) -o $@ check_modes.o

nma_diagrtb: diagrtb.o
	$(FC) $(FFLAGS) $(ARCHFLAGS) -o $@ diagrtb.o

nma_elnemo_pdbmat: pdbmat_aux.o
	$(FC) $(FFLAGS) $(ARCHFLAGS) -o $@ pdbmat_aux.o

.f.o:
	$(FC) $(FFLAGS) $(ARCHFLAGS) -c $*.f
