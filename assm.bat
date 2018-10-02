Rem Este archivo de procesamiento por lotes ensambla y liga un
rem programa fuente usando el macroensamblador del 8086:
rem TURBO ASSEMBLER y el ligador TLINK de Borlant Int.
@echo off
rem Si no se incluyo el nombre del archivo
if $$%1 == $$ goto ERROR1
rem Si no existe el archivo
if not exist %1.asm goto ERROR2
rem llama al ensamblador
tasm /l /zi %1.asm
rem Si hubo un error al ensamblado
if errorlevel 1 goto FIN
rem Llama al ligador
tlink /v /m /s /l %1
goto FIN
:ERROR1
echo .
echo Uso: ASSM nomArch (omita la extension .asm)
echo .
goto FIN
:ERROR2
echo .
echo No existe el archivo %1.asm
echo .
:FIN