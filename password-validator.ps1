#!/usr/bin/env pwsh

#-----------------------
# Global variables
# ----------------------
param($in)

#-----------------------
# pwValidation // checks validation of the password
# ----------------------
function FunctionName {
    param ($pw)
    # --if greater than 10
    if ($pw.length -gt 10) {
        # -- if contains at least one number
        if ($pw -match '\d') {
            # -- if contains at least one uppercase char
            if ($pw -cmatch “[A-Z]”) {
                # -- if contains at least one lowercase char
                if ($pw -cmatch “[a-z]”) {  
                    Write-Host "The password: $pw is valid." -ForegroundColor Green
                    return 0      
                }
                else { Write-Host "Please include minimum one lower case character in the password.Your input:$pw" -ForegroundColor Red }
            }
            else { Write-Host "Please include minimum one capital character in the password.Your input:$pw" -ForegroundColor Red }
        }
        else { Write-Host "Please include minimum one number in the password.Your input:$pw" -ForegroundColor Red }
    }
    else { Write-Host "Please input password with minimum 10 character length.Your input:$pw" -ForegroundColor Red } 
    return 1   
}

# ---------------------------------------------------------------------------------------------
# Check the option that user has been chosen: a. Password as an input. b. Password inside file
# ---------------------------------------------------------------------------------------------

function checkInputCategory() {
    $LASTEXITCODE = 0
    # checks the user's input in commnad line
    $arr_cliHistory = cat (Get-PSReadlineOption).HistorySavePath 

    # takes last command
    $str_lastCliCommand = [string]$arr_cliHistory[-1]

    # --- If chosen option to check password in file.
    if ($str_lastCliCommand -like '* -f "/*') {

        # retrive filepath from input
        $filePathAndName = $str_lastCliCommand.replace('password-validator.ps1 -f "', '')

        # Delete last char if the value of it is: "
        $filePathAndName = $filePathAndName.Trim().TrimEnd('"')

        if (!$filePathAndName)
        { Write-Host 'Invalid input. Please insert input in this format: {./password-validator.ps1 "MyPW123"} or {./password-validator.ps1 -f "/myPath/password.txt"}' -ForegroundColor Red }
        else {
            # "Checks to see if folder [$filePathAndName]  exists"
            $filePathAndName = $filePathAndName.Trim().TrimStart('/')
            if (Test-Path -Path $filePathAndName) {
                $pw_from_file = [IO.File]::ReadAllText("$filePathAndName")
            
                if (!$pw_from_file){ Write-Host 'Please insert the password inside the file: (the password should contein minimum 10 characters, that contains number, small and capital letter.' -ForegroundColor Red }
                else {
                    pw_from_file=$(<${filePathAndName})   
                    return pwValidation "${pw_from_file}"
                }
                else { Write-Host "The file: $filePathAndName do not exists. Please enter valid file."  -ForegroundColor Red }
            }
        }
    }
    # --- If chosen option to check password as text.
    elseif (!$in) { Write-Host 'Invalid input. Please insert input in this format: {./password-validator.ps1 "MyPW123"} or {./password-validator.ps1 -f "/myPath/password.txt"}' -ForegroundColor Red }
    else { return pwValidation "$INPUT" }
}
# ---------------------------------------------------------------------------------------------
# init
# ---------------------------------------------------------------------------------------------
     
$LASTEXITCODE = checkInputCategory
write-host "exit code---------$LASTEXITCODE"

