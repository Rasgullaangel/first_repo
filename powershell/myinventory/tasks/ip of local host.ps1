step 1:

$b=Get-NetIPAddress|select ipaddress
$b|export-csv -path "C:\Users\senthilnathanp\Desktop\ip"

step 2:

$a=get-content "C:\Users\senthilnathanp\Desktop\ip.csv"
$a|foreach-object{
if(Test-Connection -ComputerName $_  -Quiet){
"$_ is pinging"}
else
{"$_ is not  pinging"
}
}|Out-File  C:\users\senthilnathanp\Desktop\result.txt