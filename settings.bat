@ECHO OFF & CD /D %~DP0 & TITLE
mode con cols=60 lines=29
@ echo.
ver|findstr "5\.[0-9]\.[0-9][0-9]*">nul && goto skip
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)
:skip
@ echo.
@ echo.��������ǿ�ƹر�����ʹ�õ� QQ ����ؽ���...
@ echo.
@ echo.
   pause
taskkill /f /im TXP* >NUL 2>NUL
taskkill /f /im tad* >NUL 2>NUL
taskkill /f /im QQP* >NUL 2>NUL
taskkill /f /im QQC* >NUL 2>NUL
taskkill /f /im QQ.exe >NUL 2>NUL
@ echo.
@ echo.����˵�ѡ��
:Menu
echo.&echo  1. ϵͳ����
echo.&echo  2. ����ͼ��
echo.&echo  3. QQ����/��Ѷ�������
echo.&echo  4. QQ��/�����������
echo.&echo  5. �����ռ�ҳ��
echo.&echo  6. ���½����ŵ���
echo.&echo  7. Ⱥ�������ﶯ��
echo.&echo  8. ���س�����ԱSVIP
echo.&echo  9. �����Ѷ���Ϣ������
echo.&echo  0. �Ҽ� -- ͨ��QQ���͵�...
echo.&echo  a. �����¼ -- ���ѡ����浽��װĿ¼�¡�ϵͳ����
echo.&echo  b. NtrQQ 5.0.3 ��ʽ��
echo.&echo.
set /p a=�������ֻ�Ӣ�ĺ�س���
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&&CLS && Goto R1
if "%a%"=="2" set a=<nul&&CLS && Goto R2
if "%a%"=="3" set a=<nul&&CLS && Goto R3
if "%a%"=="4" set a=<nul&&CLS && Goto R4
if "%a%"=="5" set a=<nul&&CLS && Goto R5
if "%a%"=="6" set a=<nul&&CLS && Goto R6
if "%a%"=="7" set a=<nul&&CLS && Goto R7
if "%a%"=="8" set a=<nul&&CLS && Goto R8
if "%a%"=="9" set a=<nul&&CLS && Goto R9
if "%a%"=="0" set a=<nul&&CLS && Goto R0
if "%a%"=="a" set a=<nul&&CLS && Goto RA
if "%a%"=="b" set a=<nul&&CLS && Goto RB
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO Menu

:R1
echo.&echo  1. ԭ�� (Ĭ��)
echo.&echo  2. ����
echo.&echo  3. MSN
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto A1
if "%a%"=="2" set a=<nul&& Goto A2
if "%a%"=="3" set a=<nul&& Goto A3
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R1
:A1
XCOPY "%~DP0\Component\01\1\*.wav" "%~DP0\Misc\Sound\Classic\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:A2
XCOPY "%~DP0\Component\01\2\*.wav" "%~DP0\Misc\Sound\Classic\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:A3
XCOPY "%~DP0\Component\01\3\*.wav" "%~DP0\Misc\Sound\Classic\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R2
echo.&echo  1. ԭ�� (Ĭ��)
echo.&echo  2. ����
echo.&echo  3. Adium
echo.&echo  4. Windows 7 Style
echo.&echo  5. Windows 8 Mod
echo.&echo  6. Windows 8 Pure
echo.&echo  7. Windows 10 Style
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto B1
if "%a%"=="2" set a=<nul&& Goto B2
if "%a%"=="3" set a=<nul&& Goto B3
if "%a%"=="4" set a=<nul&& Goto B4
if "%a%"=="5" set a=<nul&& Goto B5
if "%a%"=="6" set a=<nul&& Goto B6
if "%a%"=="7" set a=<nul&& Goto B7
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R2
:B1
XCOPY "%~DP0\Component\02\1\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B2
XCOPY "%~DP0\Component\02\2\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B3
XCOPY "%~DP0\Component\02\3\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B4
XCOPY "%~DP0\Component\02\4\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B5
XCOPY "%~DP0\Component\02\5\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B6
XCOPY "%~DP0\Component\02\6\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:B7
XCOPY "%~DP0\Component\02\7\Res.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
CLS && ECHO.&ECHO �滻��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R3
echo.&echo  1. �ָ� QQ����
echo.&echo  2. �ָ� ��Ѷ�������
echo.&echo  3. �ָ�����ȫ�����
echo.&echo  4. ɾ�� QQ����
echo.&echo  5. ɾ�� ������ҳ
echo.&echo  6. ɾ������ȫ����� (Ĭ��)
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto C1
if "%a%"=="2" set a=<nul&& Goto C2
if "%a%"=="3" set a=<nul&& Goto C3
if "%a%"=="4" set a=<nul&& Goto C4
if "%a%"=="5" set a=<nul&& Goto C5
if "%a%"=="6" set a=<nul&& Goto C6
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R3
:C1
XCOPY "%~DP0\Component\03\Com.Tencent.NetBar\*" "%~DP0\Plugin\Com.Tencent.NetBar\" /E /Y >NUL
CLS && ECHO.&ECHO �ָ���ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:C2
XCOPY "%~DP0\Component\03\Com.Tencent.Today\*" "%~DP0\Plugin\Com.Tencent.Today\" /E /Y >NUL
CLS && ECHO.&ECHO �ָ���ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:C3
XCOPY "%~DP0\Component\03\*" "%~DP0\Plugin\" /E /Y >NUL
CLS && ECHO.&ECHO �ָ���ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:C4
rd /s /q "%~DP0\Plugin\Com.Tencent.NetBar\" >NUL
CLS && ECHO.&ECHO ɾ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:C5
rd /s /q "%~DP0\Plugin\Com.Tencent.Today\" >NUL
CLS && ECHO.&ECHO ɾ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:C6
rd /s /q "%~DP0\Plugin\Com.Tencent.NetBar\" >NUL
rd /s /q "%~DP0\Plugin\Com.Tencent.Today\" >NUL
CLS && ECHO.&ECHO ɾ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R4
echo.&echo  1. ���� -- ����������� (��QQ��) (Ĭ��)
echo.&echo  2. ȥ�� -- ����������� (��QQ��)
echo.&echo  3. ���� -- ����������� (��QQ��)
echo.&echo  4. ȥ�� -- ����������� (��QQ��)
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto D1
if "%a%"=="2" set a=<nul&& Goto D2
if "%a%"=="3" set a=<nul&& Goto D3
if "%a%"=="4" set a=<nul&& Goto D4
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R4
:D1
XCOPY "%~DP0\Component\04\1\Xtml.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\1\AppFramework.dll"  "%~DP0\Bin\" /E /Y >NUL
XCOPY "%~DP0\Component\04\Com.Tencent.QQShow\*" "%~DP0\Plugin\Com.Tencent.QQShow\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:D2
XCOPY "%~DP0\Component\04\2\Xtml.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\2\AppFramework.dll"  "%~DP0\Bin\" /E /Y >NUL
XCOPY "%~DP0\Component\04\Com.Tencent.QQShow\*" "%~DP0\Plugin\Com.Tencent.QQShow\" /E /Y >NUL
CLS && ECHO.&ECHO ȥ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:D3
XCOPY "%~DP0\Component\04\3\Xtml.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\3\Data.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\3\AppFramework.dll"  "%~DP0\Bin\" /E /Y >NUL
RD "%~DP0\Plugin\Com.Tencent.QQShow\" /S /Q  >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:D4
XCOPY "%~DP0\Component\04\4\Xtml.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\4\Data.rdb"  "%~DP0\Resource.9.1.0.24712\" /E /Y >NUL
XCOPY "%~DP0\Component\04\4\AppFramework.dll"  "%~DP0\Bin\" /E /Y >NUL
RD "%~DP0\Plugin\Com.Tencent.QQShow\" /S /Q  >NUL
CLS && ECHO.&ECHO ȥ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R5
echo.&echo  1. ���� -- ����ռ�ҳ�� (Ĭ��)
echo.&echo  2. ȥ�� -- ����ռ�ҳ��
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto E1
if "%a%"=="2" set a=<nul&& Goto E2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R5
:E1
XCOPY "%~DP0\Component\05\1\Qzone.dll"  "%~DP0\Plugin\Com.Tencent.Qzone\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:E2
XCOPY "%~DP0\Component\05\2\Qzone.dll"  "%~DP0\Plugin\Com.Tencent.Qzone\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ȥ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R6
echo.&echo  1. ���� -- ���½ǵ��� (Ĭ��)
echo.&echo  2. ȥ�� -- ���½ǵ���
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto F1
if "%a%"=="2" set a=<nul&& Goto F2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R6
:F1
XCOPY "%~DP0\Component\06\1\SystemMsg.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:F2
XCOPY "%~DP0\Component\06\2\SystemMsg.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ȥ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R7
echo.&echo  1. ���� -- Ⱥ�������ﶯ�� (Ĭ��)
echo.&echo  2. ���� -- Ⱥ�������ﶯ��
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto G1
if "%a%"=="2" set a=<nul&& Goto G2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R7
:G1
XCOPY "%~DP0\Component\07\1\Winks.dll"  "%~DP0\Plugin\Com.Tencent.Winks\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:G2
XCOPY "%~DP0\Component\07\2\Winks.dll"  "%~DP0\Plugin\Com.Tencent.Winks\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R8
echo.&echo  1. �ر� -- ���س�����ԱSVIP (Ĭ��)
echo.&echo  2. ���� -- ���س�����ԱSVIP
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto H1
if "%a%"=="2" set a=<nul&& Goto H2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R8
:H1
XCOPY "%~DP0\Component\08\1\KernelUtil.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO �ر���ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:H2
XCOPY "%~DP0\Component\08\2\KernelUtil.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R9
echo.&echo  1. �ر� -- �����Ѷ���Ϣ������ (Ĭ��)
echo.&echo  2. ���� -- �����Ѷ���Ϣ������
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto I1
if "%a%"=="2" set a=<nul&& Goto I2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R9
:I1
XCOPY "%~DP0\Component\09\1\IM.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO �ر���ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:I2
XCOPY "%~DP0\Component\09\2\IM.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ������ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:R0
echo.&echo  1. ����Ҽ� -- ͨ��QQ���͵�...
echo.&echo  2. ɾ���Ҽ� -- ͨ��QQ���͵�...
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto J1
if "%a%"=="2" set a=<nul&& Goto J2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO R0
:J1
XCOPY "%~DP0\Component\10\ShellExt\*.dll"  "%~DP0\ShellExt\" /E /Y >NUL
REGSVR32 "%~DP0\ShellExt\QQShellExt.dll" /S >NUL
REGSVR32 "%~DP0\ShellExt\QQShellExt64.dll" /S >NUL
CLS && ECHO.&ECHO �����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:J2
taskkill /f /im explorer.exe >NUL
start "" "C:\WINDOWS\explorer.exe" >NUL
REGSVR32 "%~DP0\ShellExt\QQShellExt.dll" /U /S >NUL
REGSVR32 "%~DP0\ShellExt\QQShellExt64.dll" /U /S >NUL
RD "%~DP0\ShellExt\" /S /Q  >NUL
CLS && ECHO.&ECHO ɾ����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:RA
echo.&echo  1. �����¼ -- ��ԭԭ�桰���浽��װĿ¼��ϵͳ���� (Ĭ��)
echo.&echo  2. �����¼ -- ���ѡ����浽��װĿ¼��ϵͳ����
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto K1
if "%a%"=="2" set a=<nul&& Goto K2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO RA
:K1
XCOPY "%~DP0\Component\11\1\ConfigCenter.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO ��ԭ��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:K2
XCOPY "%~DP0\Component\11\2\ConfigCenter.dll"  "%~DP0\Bin\" /E /Y >NUL
CLS && ECHO.&ECHO �����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU

:RB
echo.&echo  1. ж�� -- NtrQQ 5.0.3 ��ʽ�� (Ĭ��)
echo.&echo  2. ��װ -- NtrQQ 5.0.3 ��ʽ��
echo.&echo.
set /p a=�������ֺ�س���
IF "%a%"=="" set a=<nul&& CLS && Goto Menu
IF NOT "%a%"=="" SET a=%a:~0,1%
if "%a%"=="1" set a=<nul&& Goto L1
if "%a%"=="2" set a=<nul&& Goto L2
echo.&echo ������Ч�����������룡 
PAUSE >NUL && CLS && GOTO RB
:L1
XCOPY "%~DP0\Component\12\1\HummerEngine.dll"  "%~DP0\Bin\" /E /Y >NUL
RD "%~DP0\Bin\NtrQQ\" /S /Q  >NUL
DEL "%~DP0\Bin\HummerEngineBase.dll" /S /Q  >NUL
CLS && ECHO.&ECHO ж����ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU
:L2
XCOPY "%~DP0\Component\12\2\HummerEngine.dll"  "%~DP0\Bin\" /E /Y >NUL
XCOPY "%~DP0\Component\12\2\HummerEngineBase.dll"  "%~DP0\Bin\" /E /Y >NUL
XCOPY "%~DP0\Component\12\2\NtrQQ\*" "%~DP0\Bin\NtrQQ\" /E /Y >NUL
CLS && ECHO.&ECHO ��װ��ɣ���������أ�&&PAUSE >NUL && CLS && GOTO MENU