@echo off
for /D %%d in (*) do (
    for %%f in ("%%d\*.gltf" "%%d\*.glb") do (
        if exist "%%~dpnf.fscn" (
        	echo Cleaning %%~dpnf.fscn
		 del %%~dpnf.fscn
        )
    )
)
echo Done.
