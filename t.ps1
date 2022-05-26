#!/usr/bin/env pwsh

# F8 shortcut to tun script
# Write-Host "Hello world!"

# $someVar = "sdfsdfs"
# # $len = $someVar.length
# # $len = 10
# # Write-Host 123 #$len
# Write-Host $someVar.length

# foreach ($ndx in $someVar) { $ndx } # same output as above.
# $someVar = "sdfsdfs"
# Write-Host $someVar.length

# Write-Host $someVar.getType() 

# ----------------------------------------checks len
# $someVar = "sdfsdfs"
# Write-Host $someVar.length
# if ($someVar.length -gt 10)
# {
#     Write-Host $someVar.length " is greater than 10"
# }
# else
# {
#     Write-Host $someVar.length "is NOT greater than 10"
# }
# ----------------------------------------checks number
# Check if string contains numeric value in PowerShell?
# $substring="sfsdfsdf"
# # if($substring -match "^\d+$")
# if($substring -match '\d')
# {
#     Write-Host "numbers is there"
# }
# else
# {
#     Write-Host "do not "
# }
# ----------------------------------------checks upper cases
# $var="sdfsdfA"
# if ($var -cmatch “[A-Z]”) {write-host “it contains characters in uppercase”} else {write-host “all is in lowercase”}
# ----------------------------------------checks lower cases
# $var="SDGDGDGa"
# if ($var -cmatch “[a-z]”) {write-host “it contains characters in lowercase"} else {write-host “all is in uppwercase"}


# # ----------------------------------------colors

# Write-Host "test" -ForegroundColor Green
# Write-Host "test" -ForegroundColor Red

# # ----------------------------------------if path exists

# # # if path exists
# $Folder = '/home/osboxes/repositories/powershell_tests/'
# # "Test to see if folder [$Folder]  exists"
# if (Test-Path -Path $Folder) {
#     "Path exists!"
# } else {
#     "Path doesn't exist."
    
# }

# # # ----------------------------------------make exit code FALSE
# Exit-PSHostProcess 3
# Exit-PSSession 3
# Write-Host $?

# function foo {
# Write-Output "test"
# Exit 55
    
# }
# foo

# -----To ping
# function foo {
#     Test-Connection 1
        
#     }
#     foo

# # ------------------------exit code defeniton

# $LASTEXITCODE=1
# write-host $LASTEXITCODE

# # -------------------------------------read input 

# param($X)
# # $X=-f
# write-host "$X"
# # write-host "$X $Y"


# ---Checks empty var and user's input value in cli line

# param($in)
# if (!$in)
# {
#       Write-Host " empty $in"
# }
# else {Write-Host "not empty $in"}

# # ----- Gets all history of value
# $someVar = cat (Get-PSReadlineOption).HistorySavePath
# # write-host $someVar.GetType()

# # write-host $someVar[-2]
# # ----arrays - last item
# write-host $someVar[-1]
# # foreach ($ndx in $someVar) { $ndx } # same output as above.

# # -----works---last command in cli
# $someVar = cat (Get-PSReadlineOption).HistorySavePath
# write-host $someVar[-1]

# # # ---checks if substring in string (if contains)
# $strVal = [string]$someVar[-1]
# # $strVal ='.\t.ps1 -f "sdfsdfsdfs"'
# if($strVal -like '* -f "/*') {
#       Write-Host 'Your string contains the substr '$strVal
# } else {
#       Write-Host 'Your string does not contains the substr '$strVal
# }




# # # --works---take substring from string

# $x = "----start----Hello World----end----"
# $x -match "----start----(?<content>.*)----end----"
# #output: True
# $matches['content']
# #output: Hello World



# # --works---Delete or rebplace 
# $s = "BlockService API (ID: Projects-1)"
# $s -replace "\(ID.*\)",""
# # Write-Host $s




# /----------------------------------------------
# # --works---Delete or rebplace 
$strVal ='.\t.ps1 -f "sdfsdfsdfs"'
$tmp=$strVal.replace('.\t.ps1 -f "','')

# ---Delete last char if the value of it is: "
$tmp=$tmp.Trim().TrimEnd('"')
write-host $tmp
# /----------------------------------------------

# # ----content from file to var
# $content = [IO.File]::ReadAllText("test.txt")
# Write-Host $content