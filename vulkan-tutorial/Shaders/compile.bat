rem G:/sdks/vulkan/1.4.304.0/Bin/glslc.exe src/shader.vert -o out/vert.spv
rem G:/sdks/vulkan/1.4.304.0/Bin/glslc.exe src/shader.frag -o out/frag.spv

@echo off


for %%F in ("src\*.*") do (

    echo Compiling file: %%F

    G:/sdks/vulkan/1.4.304.0/Bin/glslc.exe "%%F" -o "out\%%~nF%%~xF.spv"

    if errorlevel 1 (

        echo Failed to compile %%F

    ) else (

        echo Successfully compiled %%F

    )

)

pause