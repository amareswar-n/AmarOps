@echo off 
    setlocal enableextensions disabledelayedexpansion
    set "search=failed"
    set "replace=reprocessed"
    set "textFile=%1.log"
    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(        setlocal enabledelayedexpansion
        endlocal
    )
