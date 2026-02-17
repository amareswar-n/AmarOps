@echo off
setlocal EnableDelayedExpansion
for /r "%cd%" %%F in (*.bat) do (
    if exist "%%F" (
        echo Processing "%%F"
        > "%%F.tmp" (
            for /f "usebackq delims=" %%L in ("%%F") do (
                set "line=%%L"
                echo(                set "line=%%L" | findstr /C:":: Author: " >nul
                if errorlevel 1 (
                    echo(                if errorlevel 1 ( | findstr /C:":: Website: " >nul
                    if errorlevel 1 (
                        echo(                    if errorlevel 1 (
                    )
                )
            )
        )
        move /Y "%%F.tmp" "%%F" >nul
    )
)
echo Done.
pause
