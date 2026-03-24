@echo off
for /D %%d in (*) do (
    for %%f in ("%%d\*.gltf" "%%d\*.glb") do (
        if exist "%%f" (
            if not exist "%%~dpnf.fscn" (
                echo Converting %%f ...
                Editor_Util scene "%%f" "%%~dpnf.fscn"
            )
        )
    )
)
echo Done.
