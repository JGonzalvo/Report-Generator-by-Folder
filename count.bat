@echo off
for %%* in (.) do set CurrDirName=%%~n*

IF EXIST .\Unknown\ (
pushd .\Unknown\
) ELSE (
set cntUnk=0
GOTO SkipUnk
)

set cntUnk=0
for %%A in (*) do set /a cntUnk+=1
pushd ..\

:SkipUnk

IF EXIST .\Detected\ (
pushd .\Detected\
) ELSE (
set cntDet=0
GOTO SkipDet
)

set cntDet=0
for %%A in (*) do set /a cntDet+=1
pushd ..\

:SkipDet

IF EXIST .\MML\ (
pushd .\MML\
) ELSE (
set cntMML=0
GOTO SkipMML
)

set cntMML=0
for %%A in (*) do set /a cntMML+=1
pushd ..\

:SkipMML

IF EXIST ".\Not Detected\" (
pushd ".\Not Detected\"
) ELSE (
set cntunDet=0
GOTO SkipunDet
)

set cntunDet=0
for %%A in (*) do set /a cntunDet+=1
pushd ..\

:SkipunDet

IF EXIST .\Normal (
pushd .\Normal
) ELSE (
set cntNormal=0
GOTO SkipNormal
)

set cntNormal=0
for %%A in (*) do set /a cntNormal+=1
pushd ..\

:SkipNormal

IF EXIST .\Invalid (
pushd .\Invalid
) ELSE (
set cntInvalid=0
GOTO SkipInvalid
)

set cntInvalid=0
for %%A in (*) do set /a cntInvalid+=1
pushd ..\

:SkipInvalid

set case1=%CurrDirName:~0,8%
echo %case1%

echo %case1%	%cntDet%	%cntMML%	%cntNormal%	%cntunDet%	%cntUnk%	%cntInvalid% >> ..\sample.txt