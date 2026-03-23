@echo off
setlocal enabledelayedexpansion

rem Convert all .glb files to .gltf (separate textures + bins),
rem resizing textures to power-of-two (floor), then delete the source .glb.

set FAILED=0

for /r %%F in (*.glb) do (
    set "GLB=%%F"
    set "GLTF=%%~dpnF.gltf"

    echo Converting: %%F
    gltf-transform resize "%%F" "%%~dpnF.gltf" --power-of-two floor
    del "%%F"
)
