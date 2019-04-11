param($computername='LP-5CD75219XN')
$a=Get-process |sort-object cpu -Descending|select  @{n='computername';e={$computername}},sprocessname,cpu -First 5
$b=Get-Service|?{$_.name -like "p*"}|select @{n='computername';e={$computername}},name,status,displayname -First 5
$c=Get-WmiObject win32_logicaldisk|select @{n='computername';e={$computername}},deviceid,@{n='freespace';e={"$([math]::round($_.freespace/1gb,2)) GB"}} -First 5
$d=$c.deviceid|%{get-childitem $_ -recurse -file -ErrorAction SilentlyContinue}|select directory,name,length -first 5
$d|Sort-Object length -Descending|select directory,name,@{n='length';e={"$([math]::round($_.length/1gb,2)) GB"}}