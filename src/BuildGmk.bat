@echo off
cd..
if exist BlueArchiveS.gmk (
	echo BlueArchiveS.gmk already exist. Press any key to rebuild from source.
	pause>nul
	del BlueArchiveS.gmk
)
src\Tool\gmksplit src\BlueArchiveS BlueArchiveS.gmk
pause