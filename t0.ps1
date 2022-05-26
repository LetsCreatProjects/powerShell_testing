# #!/usr/bin/env pwsh

# #-----------------------
# # Global variables
# # ----------------------

# # $varExitCode=1
# param($in)
# $str_to_compare ="-f "

# #-----------------------
# # pwValidation // checks validation of the password
# # ----------------------
# function FunctionName {
#      param ($pw)

#      if ($pw.length -gt 10){# --if greater than 10
#           if($pw -match '\d'){ # -- if contains at least one number
#                if ($pw -cmatch “[A-Z]”){ # -- if contains at least one uppercase char
#                     if ($pw -cmatch “[a-z]”) # -- if contains at least one lowercase char
#                          {
#                          #   $varExitCode=0   
#                            Write-Host "The password: $pw is valid." -ForegroundColor Green
#                            return 0
                         
#                          }
 
#                     else {Write-Host "Please include minimum one lower case char in the password.Your input:$pw" -ForegroundColor Red}}
#                else      {Write-Host "Please include minimum one capital char in the password.Your input:$pw" -ForegroundColor Red}}
#           else           {Write-Host "Please include minimum one number in the password.Your input:$pw" -ForegroundColor Red}}
#      else                {Write-Host "Please input password with minimum 10 chars length.Your input:$pw" -ForegroundColor Red} 
#      return 1   
# }






# # ---------------------------------------------------------------------------------------------
# # Check the option that user has been chosen: a. Password as an input. b. Password inside file
# # ---------------------------------------------------------------------------------------------

# # function checkInputCategory(){
# #      if (!$in){
# #           Write-Host 'Invalid input. Please insert input in this format: {./password-validator.sh "MyPW123"} or {./password-validator.sh -f "/myPath/password.txt"}' -ForegroundColor Red
# #      else
# #          # If chosen option to check password in file.
# #          if [ "${INPUT::4}" = "${STR_TO_COMPARE}" ]; then
# #              FILE_PATH_AND_NAME="."${INPUT:3}
# #              echo $FILE_PATH_AND_NAME
# #              # Checks if file is exists
# #              if [ -f "${FILE_PATH_AND_NAME}" ]; then
# #                  PW_FROM_FILE=$(<${FILE_PATH_AND_NAME})   
# #                  return pwValidation "${PW_FROM_FILE}"
# #              else
# #              {Write-Host "The file: $FILE_PATH_AND_NAME do not exists. Please enter valid file."  -ForegroundColor Red
# #  }
# #          # If chosen option to check password as text.
# #          else
# #              return pwValidation "$INPUT"
# #      }
# # }
     
     
# #      # ---------------------------------------------------------------------------------------------
# #      # init
# #      # ---------------------------------------------------------------------------------------------
     
     
# #      $LASTEXITCODE=checkInputCategory

# # # if (!$in)
# # # {
# # #      " empty"
# # # }
# # # else {"not empty"}

# # # # ----------------------------------------if path exists

# # # # # if path exists
# # # $Folder = '/home/osboxes/repositories/powershell_tests/'
# # # # "Test to see if folder [$Folder]  exists"
# # # if (Test-Path -Path $Folder) {
# # #     "Path exists!"
# # # } else {
# # #     "Path doesn't exist."
    
# # # }

