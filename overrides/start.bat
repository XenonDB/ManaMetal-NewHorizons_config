::�ѦҸ�� https://www.ptt.cc/bbs/Programming/M.1316544969.A.4DE.html
::���妸�ɫ�ĳ��Windows 7�ΥH�W�����Ұ���

@echo off

echo Start server in 3 seconds. Press ctrl+c to stop right now.
timeout /t 3 /nobreak

SETLOCAL ENABLEDELAYEDEXPANSION
SET CRASH_COUNT=1


::---------------�����ѼƳ]�w�ϡ���---------------


::�s��Y�춡���ˬd�ΰѼơC����A���}�ҫᤣ��CRASH_interval�]�w���ɶ��������A�|���p��+1�A��p�ƶW�LCRASH_restartCount���]�w�Ȯɷ|������A�����ҡC���ɥN����A���ݭn�H�u���סC
::CRASH_interval�����:��
SET CRASH_interval=600
SET CRASH_restartCount=3

goto START
:RUNSERVER
::---����--�B����A�����R�O ���n�]�tpause--����---

java -server -Dfile.encoding=UTF-8 -Dlog4j.configurationFile=log4j2_17-111.xml -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx5G -Xms5G -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui

::------------�����B����A�����R�O����------------

goto POST_PROCESSING
::---------------�����ѼƳ]�w�ϡ���---------------






:START

:: ���o�}�l�ɶ�
SET A=%TIME%
SET day=%DATE:~8,2%

goto RUNSERVER
:POST_PROCESSING

:: ���o�����ɶ�
SET B=%TIME%

:: ���o�ɶ��ԲӸ��
SET A_HOUR=%A:~0,2%
SET A_MINS=%A:~3,2%
SET A_SECS=%A:~6,2%
SET A_MSEC=%A:~9,2%

SET B_HOUR=%B:~0,2%
SET B_MINS=%B:~3,2%
SET B_SECS=%B:~6,2%
SET B_MSEC=%B:~9,2%

:: FOR debug
::echo.
::echo ���A���Ұʮɶ��I:%A%
::echo ���A�������ɶ��I:%B%
:: echo %A_HOUR%:%A_MINS%:%A_SECS%.%A_MSEC%
:: echo %B_HOUR%:%B_MINS%:%B_SECS%.%B_MSEC%

:: �p��Ӯ�
SET /A C_MSEC=B_MSEC-A_MSEC
SET /A C_SECS=B_SECS-A_SECS
SET /A C_MINS=B_MINS-A_MINS
SET /A C_HOUR=B_HOUR-A_HOUR

:: �վ�ƭ�
SET /A DELAY_MSEC=0+%C_MSEC%
SET /A DELAY_MSEC+=%C_SECS%*100
SET /A DELAY_MSEC+=%C_MINS%*6000
SET /A DELAY_MSEC+=%C_HOUR%*360000
SET /A DELAY_MSEC/=100


if %DELAY_MSEC% LSS %CRASH_interval% (
	if %DELAY_MSEC% GEQ 0 (
		if %DATE:~8,2%==%day% (
			SET /A CRASH_COUNT+=1
			if %CRASH_COUNT% LSS %CRASH_restartCount% goto START2
		)
	)
)

if %CRASH_COUNT% LSS %CRASH_restartCount% (
	SET CRASH_COUNT=1
	goto START2
)


echo Server continually crash %CRASH_restartCount% times in %CRASH_interval% seconds. Stop running.
pause
exit


:START2

echo Start server in 10 seconds. Press ctrl+c to stop right now.
timeout /t 10 /nobreak
goto START
