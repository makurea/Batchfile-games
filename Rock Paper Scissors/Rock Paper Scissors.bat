@echo off
chcp 1251
title  ‡ÏÂÌ¸ - ÌÓÊÌËˆ˚ - ·ÛÏ‡„‡.
mode con cols=60 lines=16
color 0b
set GAMET= ”ƒ¿◊» ¬ »√–≈
:1
cls
echo                                    %date% %time%
echo:
echo   óóóóóóóóóóóóóóóó   óóóóóóóóóóóóóóóóó   óóóóóóóóóóóóóóóó
echo   [  1 -  ¿Ã≈Õ‹  ]   [  2 - ÕŒ∆Õ»÷€  ]   [  3 - ¡”Ã¿√¿  ]
echo   óóóóóóóóóóóóóóóó   óóóóóóóóóóóóóóóóó   óóóóóóóóóóóóóóóó
echo:
echo  ¬ÒÂ„Ó Ë„: %GAME%   œÓ·Â‰˚: %WIN%   œÓ‡ÊÂÌËˇ: %LOSE%   ÕË˜¸Ë: %DRAW%
echo:
echo  »„ÓÍ ‚˚·‡Î     - %KNBT%
echo   ÓÏÔ¸˛ÚÂ ‚˚·‡Î - %RNDT%
echo:
echo %GAMET%
echo:
choice /c 123 /n /m ">¬‚Â‰ËÚÂ (1, 2, 3): "
set KNB=%ERRORLEVEL%
if %KNB%==1 (set KNBT= ¿Ã≈Õ‹)
if %KNB%==2 (set KNBT=ÕŒ∆Õ»÷€)
if %KNB%==3 (set KNBT=¡”Ã¿√¿)
set /a RND=1+3*%random%/32767
if %RND%==1 (set RNDT= ¿Ã≈Õ‹)
if %RND%==2 (set RNDT=ÕŒ∆Õ»÷€)
if %RND%==3 (set RNDT=¡”Ã¿√¿)
set /a GAME=%GAME%+1
if %KNB%==%RND% (set GAMET=    Õ»◊‹ﬂ & set /a DRAW=%DRAW%+1 & goto 1)
if %KNB%==1 (if %RND%==2 (goto 2))
if %KNB%==2 (if %RND%==3 (goto 2))
if %KNB%==3 (if %RND%==1 (goto 2))
set /a LOSE=%LOSE%+1
set GAMET=    œ–Œ»√–€ÿ
goto 1
:2
set /a WIN=%WIN%+1
set GAMET=    ”–¿! œŒ¡≈ƒ¿
goto 1