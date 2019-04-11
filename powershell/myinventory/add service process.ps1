$a=get-service|select -First 5
$b=get-service|select -Last 5
$temp=$a +$b
$c=get-process|select -First 5
$t=$temp|select status,displayname,name
$t +=$c|%{
$temparr=[pscustomobject]@{}
$temparr|Add-Member -MemberType NoteProperty -Name 'status' -Value $_.processname -PassThru -Force |
Add-Member -MemberType NoteProperty -Name 'name'-Value $_.handle -PassThru -Force|
Add-Member -MemberType NoteProperty -Name 'displayname' -Value $_.cpu -PassThru -Force
}
$t 


