# MSVC C++ Compilation Functions for VSCode
# Run this script to install the required PowerShell functions

function Compile-Cpp {
    param(
        [string]$SourceFile,
        [string]$OutputName = "",
        [string]$AdditionalFlags = ""
    )
    
    $msvcPath = "C:\Program Files (x86)\msvc"
    $compilerPath = "$msvcPath\VC\Tools\MSVC\14.44.35207\bin\Hostx64\x64\cl.exe"
    $includePaths = @(
        "$msvcPath\VC\Tools\MSVC\14.44.35207\include",
        "$msvcPath\Windows Kits\10\Include\10.0.26100.0\ucrt",
        "$msvcPath\Windows Kits\10\Include\10.0.26100.0\shared",
        "$msvcPath\Windows Kits\10\Include\10.0.26100.0\um",
        "$msvcPath\Windows Kits\10\Include\10.0.26100.0\winrt",
        "$msvcPath\Windows Kits\10\Include\10.0.26100.0\cppwinrt"
    )
    $libPaths = @(
        "$msvcPath\VC\Tools\MSVC\14.44.35207\lib\x64",
        "$msvcPath\Windows Kits\10\Lib\10.0.26100.0\ucrt\x64",
        "$msvcPath\Windows Kits\10\Lib\10.0.26100.0\um\x64"
    )
    
    $env:PATH = "$msvcPath\VC\Tools\MSVC\14.44.35207\bin\Hostx64\x64;$msvcPath\Windows Kits\10\bin\10.0.26100.0\x64;" + $env:PATH
    $env:INCLUDE = ($includePaths -join ";")
    $env:LIB = ($libPaths -join ";")
    
    if ($OutputName -eq "") {
        $OutputName = [System.IO.Path]::GetFileNameWithoutExtension($SourceFile)
    }
    
    Write-Host "Compiling $SourceFile..." -ForegroundColor Green
    & $compilerPath /EHsc $AdditionalFlags /Fe:"$OutputName.exe" $SourceFile
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Compilation successful! Output: $OutputName.exe" -ForegroundColor Green
    } else {
        Write-Host "❌ Compilation failed!" -ForegroundColor Red
    }
}

function Compile-Cpp-Debug {
    param(
        [string]$SourceFile,
        [string]$OutputName = ""
    )
    Compile-Cpp -SourceFile $SourceFile -OutputName $OutputName -AdditionalFlags "/Zi /Od /MDd"
}

function Compile-Cpp-Release {
    param(
        [string]$SourceFile,
        [string]$OutputName = ""
    )
    Compile-Cpp -SourceFile $SourceFile -OutputName $OutputName -AdditionalFlags "/O2 /MD"
}

function Compile-Cpp-Modern {
    param(
        [string]$SourceFile,
        [string]$OutputName = ""
    )
    Compile-Cpp -SourceFile $SourceFile -OutputName $OutputName -AdditionalFlags "/std:c++20 /O2 /MD"
}

# Add functions to current session
Write-Host "MSVC C++ Functions loaded:" -ForegroundColor Cyan
Write-Host "  Compile-Cpp <file.cpp> [output_name] [additional_flags]" -ForegroundColor Yellow
Write-Host "  Compile-Cpp-Debug <file.cpp> [output_name]" -ForegroundColor Yellow
Write-Host "  Compile-Cpp-Release <file.cpp> [output_name]" -ForegroundColor Yellow
Write-Host "  Compile-Cpp-Modern <file.cpp> [output_name] (C++20)" -ForegroundColor Yellow

# Optionally add to PowerShell profile
$addToProfile = Read-Host "Add these functions to your PowerShell profile permanently? (y/N)"
if ($addToProfile -eq "y" -or $addToProfile -eq "Y") {
    $profileContent = Get-Content $PSCommandPath -Raw
    Add-Content -Path $PROFILE -Value "`n# MSVC C++ Functions`n$profileContent"
    Write-Host "✅ Functions added to PowerShell profile!" -ForegroundColor Green
}
