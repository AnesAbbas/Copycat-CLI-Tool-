@echo off
REM ============================================================
REM Pull latest Git changes and copy files-to-copy to current directory
REM ============================================================

REM Get the directory where this script is stored (not the working dir)
SET SCRIPT_DIR=%~dp0
SET SOURCE_DIR=%SCRIPT_DIR%files-to-copy

REM Copy from source to current working directory
echo Copying files from %SOURCE_DIR% to %CD%...
xcopy /s /y /q "%SOURCE_DIR%\*" "%CD%\" >nul

IF %ERRORLEVEL% EQU 0 (
    echo Files copied successfully.
) ELSE (
    echo Error copying files.
)

REM Enable UTF-8
chcp 65001 >nul

echo.
echo.
echo.
echo.

echo                 @@@@@@@@:                        @@@@@@@@                   
echo                +@-     :@@@@                 @@@@@      @@                  
echo                @@ *###*    .@@@@@@@@@@@@@@@@@*    =####  @+                 
echo               :@. #+-==*###:                  ###*+=-=#  @@                 
echo               .@  #+-==*###*                 -####+=-=#: @@                 
echo               =@  *+=*#*.                       .=##+=#. @@                 
echo               =@  ####.                            +###: @@                 
echo               :@  ==                                 .*  @@                 
echo                @                                         @@                 
echo                @@                                        @@                 
echo               @@                                         =@=                
echo               @                                           @@                
echo         @@@@@@@          @@@@*              @@@*           @@@@@@:          
echo     :@@@@..  @@@@@.      @@@@@             %@@@@@      @@@@@- ..@@@@@       
echo              =@           @@@     @@@@@     -@@            @                
echo              @@*@*                 +@@                  @=@@-               
echo         @@@@@@@=  .*+           @   @   @*           *+   @@@@@@@@          
echo      @@@#      @@@@@@@@@        @@@@.@@@@         @@@@@@@@@      @@@-       
echo              @@@       @@                       #@@       @@                
echo            @@@.         @#                      @          %@@              
echo  . @@@@@@@@@@#  @*  @@   @@@@@@@@@@@@@@@@@@@@@@@@  *@=  @@  @@@@@@@@@@:     
echo  .       @  @@  @    @@@@-                      @@@@.    @  @  @#          
echo              @@@@@@@@@@                           +@@@@@@@@@@               
                                                                              
                                                                              
                                                                              
echo.
echo.
echo.
echo.
echo =======================================================================
echo                      All done! Enjoy your updated directory!
echo =======================================================================
pause
