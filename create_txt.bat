echo off
SETLOCAL enabledelayedexpansion
set DEVICE_NAME=PICsRGB

set SIZE_NAME=2R_10x15
set PRINT_CNT=1
set BACK_PRINT=FREE
set BACK_PRINT_LINE_1=
set BACK_PRINT_LINE_2=
set RESIZE=FILLIN
set DSC_CHK=FALSE

FOR /d %%D in (*) DO (
	REM %%~fD - path folder print
	
	IF EXIST "%%~fD\End.txt" DEL /F "%%~fD\End.txt"
	IF EXIST "%%~fD\Condition.txt" DEL /F "%%~fD\Condition.txt"
	
	break>"%%~fD\Condition.txt"
	>>"%%~fD\Condition.txt" echo [OutDevice]
	>>"%%~fD\Condition.txt" echo DeviceName=!DEVICE_NAME!
	>>"%%~fD\Condition.txt" echo [ImageList]
	
	set count=0
	for %%A in ("%%~fD\*") do (
		if "%%~xA" NEQ ".txt" set /a count+=1
	)
	>>"%%~fD\Condition.txt" echo ImageCnt=!count!
	
	set count=0
	for %%A in ("%%~fD\*") do (
		if "%%~xA" NEQ ".txt" (
			set /a count+=1
			>>"%%~fD\Condition.txt" echo !count!=%%~nA%%~xA
		)
	)
	
	for %%A in ("%%~fD\*") do (
		if "%%~xA" NEQ ".txt" (
			>>"%%~fD\Condition.txt" echo [%%~nA%%~xA]
			>>"%%~fD\Condition.txt" echo SizeName=!SIZE_NAME!
			>>"%%~fD\Condition.txt" echo PrintCnt=!PRINT_CNT!
			>>"%%~fD\Condition.txt" echo BackPrint=!BACK_PRINT!
			>>"%%~fD\Condition.txt" echo BackPrintLine1=!BACK_PRINT_LINE_1!
			>>"%%~fD\Condition.txt" echo BackPrintLine2=!BACK_PRINT_LINE_2!
			>>"%%~fD\Condition.txt" echo Resize=!RESIZE!
			>>"%%~fD\Condition.txt" echo DSC_Chk=!DSC_CHK!
		)
	)
	
	break>"%%~fD\End.txt"
)

endlocal