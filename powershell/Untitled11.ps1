$FilePath = Read-Host "Enter the directory."
$path = "c:\users\senthilnathanp\desktop\lpg"

get-childitem $FilePath | % {

  $file = $_.FullName 
    $date = Get-Date ($_.LastWriteTime)

  $month = $date.month
  $year = $date.year
  $day = $date.day
    $MonthPath = "$Path\$year.$month.$day"
   <# Write-Verbose "month = $month"
    Write-Verbose "Date = $date"
    Write-Verbose "year = $year"
    Write-Verbose "FilePath = $FilePath" 
    Write-Verbose "Filename = $file"
    Write-Verbose "MonthPath = $MonthPath"#>

    if(!(Test-Path -Path "$MonthPath" )){
        Write-Verbose "Creating log location $MonthPath."
        Write-Verbose "MonthPath inside path test = $MonthPath"
        New-Item -ItemType directory -Path $MonthPath | Out-null
    }
    ELSE {
        Write-Verbose "Log location exists already exist $MonthPath" 
        }
    move-item "$file" "$MonthPath" | Out-null
}


