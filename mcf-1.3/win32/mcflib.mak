# Microsoft Developer Studio Generated NMAKE File, Based on mcflib.dsp
!IF "$(CFG)" == ""
CFG=mcflib - Win32 Debug
!MESSAGE Keine Konfiguration angegeben. mcflib - Win32 Debug wird als Standard verwendet.
!ENDIF 

!IF "$(CFG)" != "mcflib - Win32 Release" && "$(CFG)" != "mcflib - Win32 Debug"
!MESSAGE UngÅltige Konfiguration "$(CFG)" angegeben.
!MESSAGE Sie kînnen beim AusfÅhren von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "mcflib.mak" CFG="mcflib - Win32 Debug"
!MESSAGE 
!MESSAGE FÅr die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "mcflib - Win32 Release" (basierend auf  "Win32 (x86) Static Library")
!MESSAGE "mcflib - Win32 Debug" (basierend auf  "Win32 (x86) Static Library")
!MESSAGE 
!ERROR Eine ungÅltige Konfiguration wurde angegeben.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mcflib - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\mcflib.lib"


CLEAN :
	-@erase "$(INTDIR)\Dbea.obj"
	-@erase "$(INTDIR)\Dbla.obj"
	-@erase "$(INTDIR)\Dblampp1.obj"
	-@erase "$(INTDIR)\Dblampp2.obj"
	-@erase "$(INTDIR)\Dsimplex.obj"
	-@erase "$(INTDIR)\Dstart.obj"
	-@erase "$(INTDIR)\Dw.obj"
	-@erase "$(INTDIR)\Mcfutil.obj"
	-@erase "$(INTDIR)\Output.obj"
	-@erase "$(INTDIR)\Pbea.obj"
	-@erase "$(INTDIR)\Pbeampp1.obj"
	-@erase "$(INTDIR)\Pbeampp2.obj"
	-@erase "$(INTDIR)\Pbeampp3.obj"
	-@erase "$(INTDIR)\Pbeampp4.obj"
	-@erase "$(INTDIR)\Pbla.obj"
	-@erase "$(INTDIR)\Pflowup.obj"
	-@erase "$(INTDIR)\Psimplex.obj"
	-@erase "$(INTDIR)\Pstart.obj"
	-@erase "$(INTDIR)\Readmin.obj"
	-@erase "$(INTDIR)\Treeup.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\mcflib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W4 /GX /O2 /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /Fp"$(INTDIR)\mcflib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mcflib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\mcflib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\Dbea.obj" \
	"$(INTDIR)\Dbla.obj" \
	"$(INTDIR)\Dblampp1.obj" \
	"$(INTDIR)\Dblampp2.obj" \
	"$(INTDIR)\Dsimplex.obj" \
	"$(INTDIR)\Dstart.obj" \
	"$(INTDIR)\Dw.obj" \
	"$(INTDIR)\Mcfutil.obj" \
	"$(INTDIR)\Output.obj" \
	"$(INTDIR)\Pbea.obj" \
	"$(INTDIR)\Pbeampp1.obj" \
	"$(INTDIR)\Pbeampp2.obj" \
	"$(INTDIR)\Pbeampp3.obj" \
	"$(INTDIR)\Pbeampp4.obj" \
	"$(INTDIR)\Pbla.obj" \
	"$(INTDIR)\Pflowup.obj" \
	"$(INTDIR)\Psimplex.obj" \
	"$(INTDIR)\Pstart.obj" \
	"$(INTDIR)\Readmin.obj" \
	"$(INTDIR)\Treeup.obj"

"$(OUTDIR)\mcflib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "mcflib - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\mcflib.lib"


CLEAN :
	-@erase "$(INTDIR)\Dbea.obj"
	-@erase "$(INTDIR)\Dbla.obj"
	-@erase "$(INTDIR)\Dblampp1.obj"
	-@erase "$(INTDIR)\Dblampp2.obj"
	-@erase "$(INTDIR)\Dsimplex.obj"
	-@erase "$(INTDIR)\Dstart.obj"
	-@erase "$(INTDIR)\Dw.obj"
	-@erase "$(INTDIR)\Mcfutil.obj"
	-@erase "$(INTDIR)\Output.obj"
	-@erase "$(INTDIR)\Pbea.obj"
	-@erase "$(INTDIR)\Pbeampp1.obj"
	-@erase "$(INTDIR)\Pbeampp2.obj"
	-@erase "$(INTDIR)\Pbeampp3.obj"
	-@erase "$(INTDIR)\Pbeampp4.obj"
	-@erase "$(INTDIR)\Pbla.obj"
	-@erase "$(INTDIR)\Pflowup.obj"
	-@erase "$(INTDIR)\Psimplex.obj"
	-@erase "$(INTDIR)\Pstart.obj"
	-@erase "$(INTDIR)\Readmin.obj"
	-@erase "$(INTDIR)\Treeup.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\mcflib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W4 /GX /Z7 /Od /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /Fp"$(INTDIR)\mcflib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mcflib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\mcflib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\Dbea.obj" \
	"$(INTDIR)\Dbla.obj" \
	"$(INTDIR)\Dblampp1.obj" \
	"$(INTDIR)\Dblampp2.obj" \
	"$(INTDIR)\Dsimplex.obj" \
	"$(INTDIR)\Dstart.obj" \
	"$(INTDIR)\Dw.obj" \
	"$(INTDIR)\Mcfutil.obj" \
	"$(INTDIR)\Output.obj" \
	"$(INTDIR)\Pbea.obj" \
	"$(INTDIR)\Pbeampp1.obj" \
	"$(INTDIR)\Pbeampp2.obj" \
	"$(INTDIR)\Pbeampp3.obj" \
	"$(INTDIR)\Pbeampp4.obj" \
	"$(INTDIR)\Pbla.obj" \
	"$(INTDIR)\Pflowup.obj" \
	"$(INTDIR)\Psimplex.obj" \
	"$(INTDIR)\Pstart.obj" \
	"$(INTDIR)\Readmin.obj" \
	"$(INTDIR)\Treeup.obj"

"$(OUTDIR)\mcflib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mcflib.dep")
!INCLUDE "mcflib.dep"
!ELSE 
!MESSAGE Warning: cannot find "mcflib.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mcflib - Win32 Release" || "$(CFG)" == "mcflib - Win32 Debug"
SOURCE=..\Src\Dbea.c

"$(INTDIR)\Dbea.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dbla.c

"$(INTDIR)\Dbla.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dblampp1.c

"$(INTDIR)\Dblampp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dblampp2.c

"$(INTDIR)\Dblampp2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dsimplex.c

"$(INTDIR)\Dsimplex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dstart.c

"$(INTDIR)\Dstart.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Dw.c

"$(INTDIR)\Dw.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Mcfutil.c

"$(INTDIR)\Mcfutil.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Output.c

"$(INTDIR)\Output.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbea.c

"$(INTDIR)\Pbea.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbeampp1.c

"$(INTDIR)\Pbeampp1.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbeampp2.c

"$(INTDIR)\Pbeampp2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbeampp3.c

"$(INTDIR)\Pbeampp3.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbeampp4.c

"$(INTDIR)\Pbeampp4.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pbla.c

"$(INTDIR)\Pbla.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pflowup.c

"$(INTDIR)\Pflowup.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Psimplex.c

"$(INTDIR)\Psimplex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Pstart.c

"$(INTDIR)\Pstart.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Readmin.c

"$(INTDIR)\Readmin.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Src\Treeup.c

"$(INTDIR)\Treeup.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

