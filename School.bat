
:0
timeout 30
for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
SET "now=%TIME: =0%"
if %dow%==Monday goto Monday
if %dow%==Tuesday goto Tuesday
if %dow%==Wednesday goto Wednesday
if %dow%==Thursday goto Thursday
if %dow%==Friday goto Friday
goto 0








:Monday

if "%now%" GEQ "09:45:00,00" (goto MBCC) else (goto Monday1)
:MBCC
if "%now%" LSS "10:10:00,00" (goto Break) else (goto Monday1)


:Monday1

if "%now%" GEQ "12:25:00,00" (goto MBCC2) else (goto Monday2)
:MBCC2
if "%now%" LSS "12:40:00,00" (goto Break) else (goto Monday2)


:Monday2


:MONC1
if "%now%" GEQ "07:30:00,00" (goto MONCC1) else (goto MONC2)
:MONCC1
if "%now%" LSS "08:15:00,00" (goto MON1) else (goto MONC2)


:MONC2
if "%now%" GEQ "08:15:00,00" (goto MONCC2) else (goto MONC3)
:MONCC2
if "%now%" LSS "09:00:00,00" (goto MON2) else (goto MONC3)


:MONC3
if "%now%" GEQ "09:00:00,00" (goto MONCC3) else (goto MONC4)
:MONCC3
if "%now%" LSS "10:10:00,00" (goto MON3) else (goto MONC4)


:MONC4
if "%now%" GEQ "10:10:00,00" (goto MONCC4) else (goto MONC5)
:MONCC4
if "%now%" LSS "10:55:00,00" (goto MON4) else (goto MONC5)


:MONC5
if "%now%" GEQ "10:55:00,00" (goto MONCC5) else (goto MONC6)
:MONCC5
if "%now%" LSS "11:40:00,00" (goto MON5) else (goto MONC6)


:MONC6
if "%now%" GEQ "11:40:00,00" (goto MONCC6) else (goto MONC7)
:MONCC6
if "%now%" LSS "12:40:00,00" (goto MON6) else (goto MONC7)


:MONC7
if "%now%" GEQ "12:40:00,00" (goto MONCC7) else (goto MONBC)
:MONCC7
if "%now%" LSS "13:25:00,00" (goto MON7) else (goto MONBC)


:MONBC
if "%now%" GEQ "13:25:00,00" (goto MONBCC) else (goto 0)
:MONBCC
if "%now%" LSS "23:59:59,00" (goto blank) else (goto 0)






:MON1
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\1.ps1"
goto 0


:MON2
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\2.ps1"
goto 0


:MON3
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0


:MON4
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\4.ps1"
goto 0


:MON5
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\5.ps1"
goto 0


:MON6
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\6.ps1"
goto 0


:MON7
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\7.ps1"
goto 0











:Tuesday


if "%now%" GEQ "09:45:00,00" (goto TUEBCC) else (goto Tuesday1)
:TUEBCC
if "%now%" LSS "10:10:00,00" (goto Break) else (goto Tuesday1)


:Tuesday1


if "%now%" GEQ "12:25:00,00" (goto TUEBCC2) else (goto Tuesday2)
:TUEBCC2
if "%now%" LSS "12:40:00,00" (goto Break) else (goto Tuesday2)


:Tuesday2


:TUEC1
if "%now%" GEQ "07:30:00,00" (goto TUECC1) else (goto TUEC2)
:TUECC1
if "%now%" LSS "08:15:00,00" (goto TUE1) else (goto TUEC2)


:TUEC2
if "%now%" GEQ "08:15:00,00" (goto TUECC2) else (goto TUEC3)
:TUECC2
if "%now%" LSS "09:00:00,00" (goto TUE2) else (goto TUEC3)


:TUEC3
if "%now%" GEQ "09:00:00,00" (goto TUECC3) else (goto TUEC4)
:TUECC3
if "%now%" LSS "10:10:00,00" (goto TUE3) else (goto TUEC4)


:TUEC4
if "%now%" GEQ "10:10:00,00" (goto TUECC4) else (goto TUEC5)
:TUECC4
if "%now%" LSS "10:55:00,00" (goto TUE4) else (goto TUEC5)


:TUEC5
if "%now%" GEQ "10:55:00,00" (goto TUECC5) else (goto TUEC6)
:TUECC5
if "%now%" LSS "11:40:00,00" (goto TUE5) else (goto TUEC6)


:TUEC6
if "%now%" GEQ "11:40:00,00" (goto TUECC6) else (goto TUEC7)
:TUECC6
if "%now%" LSS "12:40:00,00" (goto TUE6) else (goto TUEC7)


:TUEC7
if "%now%" GEQ "12:40:00,00" (goto TUECC7) else (goto TUEBC)
:TUECC7
if "%now%" LSS "13:25:00,00" (goto TUE7) else (goto TUEBC)


:TUEBC
if "%now%" GEQ "13:25:00,00" (goto TUEBCC) else (goto 0)
:TUEBCC
if "%now%" LSS "23:59:59,00" (goto blank) else (goto 0)







:TUE1
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\7.ps1"
goto 0


:TUE2
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\6.ps1"
goto 0


:TUE3
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\2.ps1"
goto 0


:TUE4
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\8.ps1"
goto 0


:TUE5
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\1.ps1"
goto 0


:TUE6
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0


:TUE7
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\4.ps1"
goto 0














:Wednesday


if "%now%" GEQ "09:45:00,00" (goto WEDBCC) else (goto Wednesday1)
:WEDBCC
if "%now%" LSS "10:10:00,00" (goto Break) else (goto Wednesday1)


:Wednesday1



if "%now%" GEQ "12:25:00,00" (goto WEDBCC2) else (goto Wednesday2)
:WEDBCC2
if "%now%" LSS "12:40:00,00" (goto Break) else (goto Wednesday2)


:Wednesday2

:WEDC1
if "%now%" GEQ "07:30:00,00" (goto WEDCC1) else (goto WEDC2)
:WEDCC1
if "%now%" LSS "08:15:00,00" (goto WED1) else (goto WEDC2)


:WEDC2
if "%now%" GEQ "08:15:00,00" (goto WEDCC2) else (goto WEDC3)
:WEDCC2
if "%now%" LSS "09:00:00,00" (goto WED2) else (goto WEDC3)


:WEDC3
if "%now%" GEQ "09:00:00,00" (goto WEDCC3) else (goto WEDC4)
:WEDCC3
if "%now%" LSS "10:10:00,00" (goto WED3) else (goto WEDC4)


:WEDC4
if "%now%" GEQ "10:10:00,00" (goto WEDCC4) else (goto WEDC5)
:WEDCC4
if "%now%" LSS "10:55:00,00" (goto WED4) else (goto WEDC5)


:WEDC5
if "%now%" GEQ "10:55:00,00" (goto WEDCC5) else (goto WEDC6)
:WEDCC5
if "%now%" LSS "11:40:00,00" (goto WED5) else (goto WEDC6)


:WEDC6
if "%now%" GEQ "11:40:00,00" (goto WEDCC6) else (goto WEDC7)
:WEDCC6
if "%now%" LSS "12:40:00,00" (goto WED6) else (goto WEDC7)


:WEDC7
if "%now%" GEQ "12:40:00,00" (goto WEDCC7) else (goto WEDBC)
:WEDCC7
if "%now%" LSS "13:25:00,00" (goto WED7) else (goto WEDBC)


:WEDBC
if "%now%" GEQ "13:25:00,00" (goto WEDBCC) else (goto 0)
:WEDBCC
if "%now%" LSS "23:59:59,00" (goto blank) else (goto 0)





:WED1
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0


:WED2
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\9.ps1"
goto 0


:WED3
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\6.ps1"
goto 0


:WED4
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\7.ps1"
goto 0


:WED5
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\2.ps1"
goto 0


:WED6
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\7.ps1"
goto 0


:WED7
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\8.ps1"
goto 0
















:Thursday


if "%now%" GEQ "09:45:00,00" (goto THUBCC) else (goto Thursday1)
:TUEBCC
if "%now%" LSS "10:10:00,00" (goto Break) else (goto Thursday1)


:Thursday1


if "%now%" GEQ "12:25:00,00" (goto THUBCC2) else (goto Thursday2)
:THUBCC2
if "%now%" LSS "12:40:00,00" (goto Break) else (goto Thursday2)


:Thursday2

:THUC1
if "%now%" GEQ "07:30:00,00" (goto THUCC1) else (goto THUC2)
:THUCC1
if "%now%" LSS "08:15:00,00" (goto THU1) else (goto THUC2)


:THUC2
if "%now%" GEQ "08:15:00,00" (goto THUCC2) else (goto THUC3)
:THUCC2
if "%now%" LSS "09:00:00,00" (goto THU2) else (goto THUC3)


:THUC3
if "%now%" GEQ "09:00:00,00" (goto THUCC3) else (goto THUC4)
:THUCC3
if "%now%" LSS "10:10:00,00" (goto THU3) else (goto THUC4)


:THUC4
if "%now%" GEQ "10:10:00,00" (goto THUCC4) else (goto THUC5)
:THUCC4
if "%now%" LSS "10:55:00,00" (goto THU4) else (goto THUC5)


:THUC5
if "%now%" GEQ "10:55:00,00" (goto THUCC5) else (goto THUC6)
:THUCC5
if "%now%" LSS "11:40:00,00" (goto THU5) else (goto THUC6)


:THUC6
if "%now%" GEQ "11:40:00,00" (goto THUCC6) else (goto THUC7)
:THUCC6
if "%now%" LSS "12:40:00,00" (goto THU6) else (goto THUC7)


:THUC7
if "%now%" GEQ "12:40:00,00" (goto THUCC7) else (goto THUBC)
:THUCC7
if "%now%" LSS "13:25:00,00" (goto THU7) else (goto THUBC)



:THUBC
if "%now%" GEQ "13:25:00,00" (goto THUBCC) else (goto 0)
:THUBCC
if "%now%" LSS "23:59:59,00" (goto blank) else (goto 0)





:THU1
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\5.ps1"
goto 0


:THU2
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\8.ps1"
goto 0


:THU3
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0


:THU4
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\2.ps1"
goto 0


:THU5
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\9.ps1"
goto 0


:THU6
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\10.ps1"
goto 0


:THU7
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0














:Friday


if "%now%" GEQ "09:45:00,00" (goto FBCC) else (goto Friday1)
:FBCC
if "%now%" LSS "10:10:00,00" (goto Break) else (goto Friday1)


:Friday1

if "%now%" GEQ "12:25:00,00" (goto FBCC2) else (goto Friday2)
:FBCC2
if "%now%" LSS "12:40:00,00" (goto Break) else (goto Friday2)


:Friday2


:FC1
if "%now%" GEQ "07:30:00,00" (goto FCC1) else (goto FC2)
:FCC1
if "%now%" LSS "08:15:00,00" (goto F1) else (goto FC2)


:FC2
if "%now%" GEQ "08:15:00,00" (goto FCC2) else (goto FC3)
:FCC2
if "%now%" LSS "09:00:00,00" (goto F2) else (goto FC3)


:FC3
if "%now%" GEQ "09:00:00,00" (goto FCC3) else (goto FC4)
:FCC3
if "%now%" LSS "10:10:00,00" (goto F3) else (goto FC4)


:FC4
if "%now%" GEQ "10:10:00,00" (goto FCC4) else (goto FBC)
:FCC4
if "%now%" LSS "10:55:00,00" (goto F4) else (goto FBC)


:FBC
if "%now%" GEQ "13:25:00,00" (goto FBCC) else (goto 0)
:FBCC
if "%now%" LSS "23:59:59,00" (goto blank) else (goto 0)



:F1
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\2.ps1"
goto 0


:F2
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\9.ps1"
goto 0


:F3
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\7.ps1"
goto 0


:F4
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\3.ps1"
goto 0

:Break
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\0.ps1"
goto 0

:Blank
powershell.exe -ExecutionPolicy Bypass -File "%userprofile%\Apps\School\11.ps1"
goto 0
