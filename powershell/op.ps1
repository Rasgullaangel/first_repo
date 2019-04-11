Write-Host "Enter operation 0-addition 1-subtraction 2-multiplication"
read-host $operation
Write-Host "enter two numbers"
Read-Host $a
Read-Host $b
switch($operation)
{
0{write-host $a+$b}
1{write-host $a-$b}
2{write-host $a*$b}
default{false}
}