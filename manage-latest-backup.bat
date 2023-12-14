@echo off
@REM ------------------------------------------------------------------------
@REM Copyright(C) 2023 Shumpei-Tanaka
@REM This software is released under the MIT License, see LICENSE.
@REM ------------------------------------------------------------------------

setlocal

@REM your old folder name
set oldfolder="old"

@REM your latest folder name prefix
set latestfolder="latest"

@REM your for compare dir backup folder name prefix
@REM set comp_dirfolder="for-comp-dir-bk"

set self_name="%~n0%~x0"

@REM regexp for timestamp
set ts_reg="_[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][a-z]"

@REM get timestamp
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set cdate=%year%%month%%day%
echo strdate:%cdate%

@REM create folders
if not exist "%oldfolder:"=%\" (
    mkdir "%oldfolder:"=%"
)

if not exist "%latestfolder:"=%\" (
    mkdir "%latestfolder:"=%"
)

@REM if not exist "%comp_dirfolder:"=%\" (
@REM     mkdir "%comp_dirfolder:"=%"
@REM )


@REM all file process
for %%F in ("*") do (
    call :bufile "%%F"
)

goto :EOF

:checkIgnore
    set ignore=FALSE
    if %1 == %self_name% (
        set ignore=TRUE
    )
    @REM no name
    @REM eg. .gitkeep
    if "%~n1" == "" (
        set ignore=TRUE
    )
    echo checkIgnore %ignore%
exit /b

@REM backup file
:bufile
    set bufile=%1
    echo bufile:%bufile%
    call :checkIgnore %1
    if %ignore%==TRUE (
        exit /b
    )
    call :findLatast %bufile%
    if %latest% == "" (
        @REM new backup file
        echo bufile:no latest backup
        echo bufile:create backup
        call :mkBu %bufile%
    ) else (
        echo bufile:found latest
        call :updateBu %bufile% "%latestfolder:"=%\%latest:"=%" "%oldfolder:"=%\%latest:"=%"
    )
    echo.

exit /b

@REM find file from latest
:findLatast
    echo findLatast %1
    set filename=%~n1
    set ext=%~x1

    set search_target=%filename:"=%_*%ext:"=%
    set search_regexp=%filename:"=%%ts_reg:"=%\%ext:"=%
    @REM echo findLatast search_target:"%search_target%"
    @REM echo findLatast search_regexp:"%search_regexp%"

    @REM self reset result
    set latest=""
    @REM 2^>nul means mute error
    for /f "usebackq delims=" %%l in (`dir /b "%latestfolder:"=%\%search_target%" 2^>nul ^| findstr /r /c:"%search_regexp%"`) do (
        @REM echo findLatast:found "%%l"
        set latest="%%l"
    )
    echo findLatast result:%latest%

exit /b 

@REM compare file
@REM 0:same 1:not same
:compFileTs
    echo compFileTs %1 %2
    fc /b %1 %2 2>nul >nul
    set rscompfilets=%errorlevel%
    if %rscompfilets% equ 0 (
        echo compFileTs:same
    )
    if %rscompfilets% equ 1 (
        echo compFileTs:not same
    )
exit /b

@REM update backup
@REM if latest backup != now
:updateBu
    echo updateBu %1 %2
    echo updateBu:check it is modified
    call :compFileTs %1 %2
    if %rscompfilets% equ 0 (
        echo updateBu:same, skip
    )
    if %rscompfilets% equ 1 (
        echo updateBu:not same, update
        call :mkBu %1
        echo updateBu:move old backup, %2 -> %3
        move %2 %3
    )
exit /b

@REM make back up
:mkBu
    echo mkBu %1
    call :getNextTs %1
    copy %1 "%latestfolder:"=%\%next_file_name%"
exit /b

@REM get next timestamp
:getNextTs
    echo getNextTs %1

    @REM split filename
    set filename=%~n1
    set ext=%~x1

    set search_target=%latestfolder:"=%\%filename%_%cdate%*%ext%
    set search_regexp=%filename%_%cdate%.\%ext%

    @REM echo getNextTs search_target:"%search_target%"
    @REM echo getNextTs search_regexp:"%search_regexp%"
    @REM echo getNextTs dir /O:n /B "%search_target%" 2^>nul ^| findstr /r /c:"%search_regexp%"

    set last=""
    for /f "usebackq delims=" %%A in (`dir /O:n /B "%search_target%" 2^>nul ^| findstr /r /c:"%search_regexp%"`) do (
        set last="%%A" 
        echo "%%A"
    )

    if %last% == "" (
        @REM no backup : add a
        set alphabet_next=a
    ) else (
        @REM exist backup : next char
        call :searchExistChar %last%
    )
    set next_file_name=%filename%_%cdate%%alphabet_next%%ext%
    echo getNextTs next_file_name:%next_file_name%
exit /b

:searchExistChar
    echo searchExistChar %1

    set target=%~n1
    set alphabet=%target:~-1%
    echo find %target%
    set alpha=0abcdefghijklmnopqrstuvwxyz
    call set alphabet_next=%%alpha:*%alphabet%=%%
    set alphabet_next=%alphabet_next:~,1%
exit /b
