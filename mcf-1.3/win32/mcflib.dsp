# Microsoft Developer Studio Project File - Name="mcflib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** NICHT BEARBEITEN **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=mcflib - Win32 Debug
!MESSAGE Dies ist kein gültiges Makefile. Zum Erstellen dieses Projekts mit NMAKE
!MESSAGE verwenden Sie den Befehl "Makefile exportieren" und führen Sie den Befehl
!MESSAGE 
!MESSAGE NMAKE /f "mcflib.mak".
!MESSAGE 
!MESSAGE Sie können beim Ausführen von NMAKE eine Konfiguration angeben
!MESSAGE durch Definieren des Makros CFG in der Befehlszeile. Zum Beispiel:
!MESSAGE 
!MESSAGE NMAKE /f "mcflib.mak" CFG="mcflib - Win32 Debug"
!MESSAGE 
!MESSAGE Für die Konfiguration stehen zur Auswahl:
!MESSAGE 
!MESSAGE "mcflib - Win32 Release" (basierend auf  "Win32 (x86) Static Library")
!MESSAGE "mcflib - Win32 Debug" (basierend auf  "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mcflib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /W4 /GX /O2 /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /YX /FD /c
# SUBTRACT CPP /WX
# ADD BASE RSC /l 0x407
# ADD RSC /l 0x407
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "mcflib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /W4 /GX /Z7 /Od /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /YX /FD /c
# SUBTRACT CPP /WX
# ADD BASE RSC /l 0x407
# ADD RSC /l 0x407
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "mcflib - Win32 Release"
# Name "mcflib - Win32 Debug"
# Begin Source File

SOURCE=..\Src\Dbea.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dbla.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dblampp1.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dblampp2.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dsimplex.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dstart.c
# End Source File
# Begin Source File

SOURCE=..\Src\Dw.c
# End Source File
# Begin Source File

SOURCE=..\Src\Mcfutil.c
# End Source File
# Begin Source File

SOURCE=..\Src\Output.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbea.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbeampp1.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbeampp2.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbeampp3.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbeampp4.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pbla.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pflowup.c
# End Source File
# Begin Source File

SOURCE=..\Src\Psimplex.c
# End Source File
# Begin Source File

SOURCE=..\Src\Pstart.c
# End Source File
# Begin Source File

SOURCE=..\Src\Readmin.c
# End Source File
# Begin Source File

SOURCE=..\Src\Treeup.c
# End Source File
# End Target
# End Project
