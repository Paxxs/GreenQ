@ECHO OFF&PUSHD %~DP0 &TITLE �̻�
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
@ echo. ��װǰ�����Ա���װ�����°汾 Visual C++ 2017 �� Universal C ���п⣬
@ echo.
@ echo.
@ echo. ����װ�����лᱨ��QQ Ҳ���ܻ᲻������������
@ echo.
@ echo.

:: ��װǰ������ؽ���
taskkill /f /im TXP* >NUL 2>NUL
taskkill /f /im tad* >NUL 2>NUL
taskkill /f /im QQP* >NUL 2>NUL
taskkill /f /im QQC* >NUL 2>NUL
taskkill /f /im QQ.exe >NUL 2>NUL

:: �����̨����ļ���ע�����
del /f /q "%TMP%\*.tvl" >NUL 2>NUL
del /f /q "%TMP%\*.tsd" >NUL 2>NUL
del /f /q "%TMP%\ts*.dat" >NUL 2>NUL
del /f /q "%TMP%\QQSa*.exe" >NUL 2>NUL
rd /s /q "%AppData%\Tencent\QQ"  2>NUL
rd /s /q "%AppData%\Tencent\Logs"2>NUL
rd /s /q "%AppData%\Tencent\Users"2>NUL
rd /s /q "%AppData%\Tencent\QTalk"2>NUL
rd /s /q "%AppData%\Tencent\QQLite"2>NUL
rd /s /q "%AppData%\Tencent\QQDoctor"2>NUL
rd /s /q "%AppData%\Tencent\DeskUpdate"2>NUL
rd /s /q "%AppData%\Tencent\QQMiniDL"2>NUL
rd /s /q "%AppData%\Tencent\Tencentdl"2>NUL
rd /s /q "%AppData%\Tencent\TenioDL"2>NUL
rd /s /q "%AppData%\Tencent\WebGamePlugin"2>NUL
rd /s /q "%AppData%\Tencent\File"2>NUL
rd /s /q "%AppData%\Tencent\Security001"2>NUL
rd /s /q "%AppData%\Tencent\AndroidAssist"2>NUL
rd /s /q "%AppData%\Tencent\AndroidServer"2>NUL
rd /s /q "%AppData%\Tencent\QQPhoneManager"2>NUL
rd /s /q "%AppData%\Tencent\QQPhoneAssistant"2>NUL
rd /s /q "%ProgramData%\Tencent\QQProtect"2>NUL
rd /s /q "%UserProfile%\Documents\Tencent"   2>NUL
rd /s /q "%UserProfile%\My Documents\Tencent"2>NUL
rd /s /q "%UserProFile%\AppData\LocalLow\QQMiniDL"2>NUL
rd /s /q "%UserProfile%\AppData\Local\Tencent\QQPet"2>NUL
rd /s /q "%UserProfile%\AppData\Local\Tencent\MiniBrowser"  2>NUL
rd /s /q "%UserProfile%\Local Settings\Tencent\QQPet"2>NUL
rd /s /q "%UserProfile%\Local Settings\QQKartLiveUpdate"2>NUL
rd /s /q "%UserProfile%\Documents\Tencent Files\QPlus"   2>NUL
rd /s /q "%UserProfile%\My Documents\Tencent Files\QPlus"2>NUL
rd /s /q "%AllUsersProfile%\Application Data\QQPet"2>NUL
rd /s /q "%AllUsersProfile%\Application Data\Tencent\QQProtect"2>NUL
rd /s /q "%CommonProgramFiles%\Tencent\QQProtect"2>NUL
rd /s /q "%CommonProgramFiles(x86)%\Tencent\QQProtect"2>NUL
reg delete HKLM\SYSTEM\CurrentControlSet\services\QQProtect /F>NUL 2>NUL

:: ע��SSO���Ŀ⡢���ٵ�½�ؼ�
regsvr32 /s Bin\TXSSO\Bin\SSOCommon.dll
regsvr32 /s Bin\TXSSO\Bin\npSSOAxCtrlForPTLogin.dll

:: ע����תվ�ϴ���Ⱥ����΢���ϴ��ؼ�
regsvr32 /s Bin\TXSSO\TXFTN\TXFTNActiveX1.17.dll
regsvr32 /s Plugin\Com.Tencent.NetDisk\Bin\QQDisk\Bin\TXFTNActiveX.dll

:: ע��Э�飺������ҳ�Ự�������������
if exist Bin\Timwp.dll regsvr32 /s Bin\Timwp.dll
if exist Bin\AppCom.dll regsvr32 /s Bin\AppCom.dll
if exist Bin\CPHelper.dll regsvr32 /s Bin\CPHelper.dll
if exist Bin\TXPFProxy.dll regsvr32 /s Bin\TXPFProxy.dll
if exist Bin\KernelUtil.dll regsvr32 /s Bin\KernelUtil.dll
if exist Bin\TXPlatform.exe Bin\TXPlatform.exe /RegServer
if exist Bin\QQExternal.exe Bin\QQExternal.exe /SetupRegister

:: ע��㲥�ؼ������򼯳ɣ���ȥ������װ
regsvr32 /s Bin\TXSSO\QzoneMusic\QzoneMusic.dll
if exist Bin\TXSSO\QzoneMusic\QzoneMusic.exe Bin\TXSSO\QzoneMusic\QzoneMusic.exe /RegServer

:: ����QQ��ǩ�����������͵���̨λ�������ͼ���޷�����
xcopy /s/i/y Bin\TXSSO\QQApp "%AppData%\Tencent\QQ\QQApp" >NUL 2>NUL

:: ���ɸ����ļ��б���λ�������ļ����� Win7��Win8 ����߰��ϵͳ�����������Զ���·��
if not exist "%Public%\Documents\Tencent\QQ" md "%Public%\Documents\Tencent\QQ"2>NUL
if not exist "%Public%\Documents\Tencent\QQ\UserDataInfo.ini" echo.>"%Public%\Documents\Tencent\QQ\UserDataInfo.ini"2>NUL

:: ���ð�װ·������װ��Ƶ���Ժ�Ӱ�����ŵ����������Ҫ
if not exist "%WinDir%\SysWOW64" reg add HKLM\Software\Tencent\QQ2009 /v Install /d "%~dp0\" /f >NUL
if exist "%WinDir%\SysWOW64" reg add HKLM\Software\Wow6432Node\Tencent\QQ2009 /v Install /d "%~dp0\" /f >NUL

:: ���ð�װ�汾�ţ���ҵ������ҳ�Ự��Ҫ��CRM����豣��
if not exist "%WinDir%\SysWOW64" reg add HKLM\Software\Tencent\QQ2009 /v version /d "56.41.0.25530.0" /f >NUL
if exist "%WinDir%\SysWOW64" reg add HKLM\Software\Wow6432Node\Tencent\QQ2009 /v version /d "56.41.0.25530.0" /f >NUL