@echo OFF
echo:
echo Batch XISO Rewrite v0.1
echo:
set choice=
set /p choice=Delete old redump ISO files after extracting? (Y/[N]) 
if not '%choice%'=='' set choice=%choice:~0,1%
echo:
echo Reading ISO files in current directory...
dir /s /b *.iso > infile.txt
echo:
for /F "tokens=*" %%A in (infile.txt) do (

	echo Rewriting: "%%A"
	extract-xiso -r "%%A"
	if /I '%choice%'=='Y' (
		echo Deleting: "*.iso.old"
		del "*.iso.old"
	)
)
echo:
del infile.txt
echo Batch XISO rewrite complete.
@echo ON
