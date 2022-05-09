@echo off
cd..
if exist src\BlueArchiveS (
	echo BlueArchiveS folder already exist. Press any key to update from gmk.
	pause>nul
	rmdir src\BlueArchiveS /s /q
)
src\Tool\gmksplit BlueArchiveS.gmk src\BlueArchiveS