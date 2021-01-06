@echo off
rem バックアップの日付取得
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set BACKDATE=%yyyy%%mm%%dd%

rem DB接続情報
set HOST=203.137.1.6
set PORT=5432
set DBNAME=MATERIAL_MANAGEMENT
set USERID=postgres

rem PostgreSQLの場所を指定
set PGPATH=C:\"Program Files"\PostgreSQL\12\bin\

rem backupの保存場所を指定
set BACKSTR=\FENIX\backup\

%PGPATH%pg_dump.exe --format=c -n "public" --verbose --host=%HOST% --port=%PORT% --username=%USERID% %DBNAME% > %BACKSTR%%BACKDATE%\dump-%DBNAME%-%BACKDATE%.backup