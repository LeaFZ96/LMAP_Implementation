# Microsoft Developer Studio Generated NMAKE File, Based on mcflight.dsp
!IF "$(CFG)" == ""
CFG=mcflight - Win32 Debug
!MESSAGE Keine Konfiguration angegeben. mcflight - Win32 Debug wird als Standard verwendet.
!ENDIF 

!IF "$(CFG)" != "mcflight - Win32 Release" && "$(CFG)" != "mcflight - Win32 Debug"
!MESSAGE UngÅltige Konfiguration "$(CFG)" angegeben.
!MESSAGE Sie kînnen beim AusfÅhren von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "mcflight.mak" CFG="mcflight - Win32 Debug"
!MESSAGE 
!MESSAGE FÅr die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "mcflight - Win32 Release" (basierend auf  "Win32 (x86) Console Application")
!MESSAGE "mcflight - Win32 Debug" (basierend auf  "Win32 (x86) Console Application")
!MESSAGE 
!ERROR Eine ungÅltige Konfiguration wurde angegeben.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mcflight - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mcflight.exe"

!ELSE 

ALL : "mcflib - Win32 Release" "$(OUTDIR)\mcflight.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"mcflib - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\Mcflight.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\mcflight.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "WIN32" /Fp"$(INTDIR)\mcflight.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mcflight.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\mcflight.pdb" /machine:I386 /out:"$(OUTDIR)\mcflight.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Mcflight.obj" \
	"$(OUTDIR)\mcflib.lib"

"$(OUTDIR)\mcflight.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "mcflight - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mcflight.exe"

!ELSE 

ALL : "mcflib - Win32 Debug" "$(OUTDIR)\mcflight.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"mcflib - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\Mcflight.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\mcflight.exe"
	-@erase "$(OUTDIR)\mcflight.ilk"
	-@erase "$(OUTDIR)\mcflight.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "WIN32" /Fp"$(INTDIR)\mcflight.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mcflight.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\mcflight.pdb" /debug /machine:I386 /out:"$(OUTDIR)\mcflight.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Mcflight.obj" \
	"$(OUTDIR)\mcflib.lib"

"$(OUTDIR)\mcflight.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mcflight.dep")
!INCLUDE "mcflight.dep"
!ELSE 
!MESSAGE Warning: cannot find "mcflight.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mcflight - Win32 Release" || "$(CFG)" == "mcflight - Win32 Debug"

!IF  "$(CFG)" == "mcflight - Win32 Release"

"mcflib - Win32 Release" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\mcflib.mak" CFG="mcflib - Win32 Release" 
   cd "."

"mcflib - Win32 ReleaseCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\mcflib.mak" CFG="mcflib - Win32 Release" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "mcflight - Win32 Debug"

"mcflib - Win32 Debug" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\mcflib.mak" CFG="mcflib - Win32 Debug" 
   cd "."

"mcflib - Win32 DebugCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\mcflib.mak" CFG="mcflib - Win32 Debug" RECURSE=1 CLEAN 
   cd "."

!ENDIF 

SOURCE=..\Src\Mcflight.c

"$(INTDIR)\Mcflight.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

