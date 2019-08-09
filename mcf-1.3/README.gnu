
MCF 1.3 -- A Network simplex implementation

Andreas Löbel
Zuse Institute Berlin (ZIB)
Takustr. 7, 14195 Berlin, Germany

Copyright (c) 1997-2000   ZIB Berlin.
Copyright (c) 2000-2004   ZIB Berlin & Andreas Löbel.
All Rights Reserved.


1.  Installation

	Please note that mcf comes with precompiled programs and library for Linux,
	Cygwin, and SunOS.

    The Makefiles have been created for GNU make-3.80 (make-3.79 has also been
    used successfully). Using older gnu-make releases or other make utilities
    may fail! The code is safe for all version of GNU gcc, but should easily be
    build by other compilers.

	Before you build the mcf package make sure that 

	a) the environment variable ARCH (e.g., Linux, Cygwin, SunOS, etc.) is
	   defined properly

	b) there exists a Makefile gnu-make/Makefile.arch.${ARCH} where all specific
       issus for this architecture have been defined. I have already provided
       such files for Linux, Cygwin, and SunOS.

	Now, change to directory gnu-make. Type "make" to build the programs and
    libraray and type "make install" to install them to bin.$(ARCH).

	For the debug version use Makefile.debug.

	
2.  Using mcf, mcflight, and mcf.a

    Make sure that bin.$(ARCH) can be found in your path. Start mcf by typing
    "mcf". Type "help" or "?" to get a description of available commands.
    View the file mcflight.c to see how the library can be used.
