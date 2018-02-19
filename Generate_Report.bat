@echo OFF

rem ##############Mail Source############################
set "source=C:\Users\lemuelg.TM-CSOPNET\Desktop\ATSS Report"

echo Report>.\sample.txt
echo Case	Detected	MML	Normal	Undetected	Unknown	Invalid>.\sample.txt
for /d %%d in (*) do (
	pushd %source%\%%d\
	xcopy ..\count.bat .\ /Y
	call count.bat
	del count.bat
)




pause