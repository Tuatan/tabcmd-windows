$url = "https://downloads.tableau.com/esdalt/10.5.3/TableauServerTabcmd-64bit-10-5-3.exe"
$output = "TableauServerTabcmd-64bit-10-5-3.exe"

(New-Object System.Net.WebClient).DownloadFile($url, $output)

.\TableauServerTabcmd-64bit-10-5-3.exe /silent

[Environment]::SetEnvironmentVariable
     ( "Path", $env:Path, [System.EnvironmentVariableTarget]::Machine )

[Environment]::SetEnvironmentVariable
     ( "INCLUDE", $env:INCLUDE, [System.EnvironmentVariableTarget]::User )

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Tableau\Tableau Server\10.5\extras\Command Line Utility", [EnvironmentVariableTarget]::Machine)
