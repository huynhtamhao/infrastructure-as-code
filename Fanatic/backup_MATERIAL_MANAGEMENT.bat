@echo off
rem �o�b�N�A�b�v�̓��t�擾
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set BACKDATE=%yyyy%%mm%%dd%

rem DB�ڑ����
set HOST=203.137.1.6
set PORT=5432
set DBNAME=MATERIAL_MANAGEMENT
set USERID=postgres

rem PostgreSQL�̏ꏊ���w��
set PGPATH=C:\"Program Files"\PostgreSQL\12\bin\

rem backup�̕ۑ��ꏊ���w��
set BACKSTR=\FENIX\backup\

%PGPATH%pg_dump.exe --format=c -n "public" --verbose --host=%HOST% --port=%PORT% --username=%USERID% %DBNAME% > %BACKSTR%%BACKDATE%\dump-%DBNAME%-%BACKDATE%.backup