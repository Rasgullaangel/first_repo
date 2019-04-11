$a=get-childitem "c:\users\senthilnathanp\desktop\folder1" -Recurse
$b=get-childitem "c:\users\senthilnathanp\desktop\folder2" -Recurse
if($a.name -eq $null){
Copy-Item -Path "c:\users\senthilnathanp\desktop\folder2\*" -Destination "c:\users\senthilnathanp\desktop\folder1\"
}
else{
$c=Compare-Object -ReferenceObject $a -DifferenceObject $b 
$f=$c.inputobject.name
foreach($e in $f){
if ($d.name -ne $b.name){
Copy-Item -Path "c:\users\senthilnathanp\desktop\folder1\$e" -Destination "c:\users\senthilnathanp\desktop\folder2\$e"
}
}
} 

