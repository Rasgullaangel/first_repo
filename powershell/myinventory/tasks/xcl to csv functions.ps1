function exportcsv()
{ 
$a= Get-Service | select -First 5 | convertto-csv -UseCulture -NoTypeInformation
$a | out-file -filepath C:\Users\venkatesan_g\desktop\csvfile.csv -Encoding UTF8 
}
function csvtoexcel()
{
$a = New-Object -ComObject excel.application
$a.Visible = $true
$csvpath=read-host "enter path :"
$outpath=read-host "enter path :"
$workbook = $a.Workbooks.Open("$csvpath")
$workbook.SaveAs("$outpath",1)
$workbook.saved=$true
$a.quit()
}
function xceltocsv()
{
$a = New-Object -ComObject excel.application
#$a.Visible = $true
$xcelpath=read-host "enter path :"
$outpath=read-host "enter path :"
$workbook = $a.Workbooks.Open("$xcelpath")
$workbook.SaveAs("$outpath",1)
$workbook.saved=$true
$a.quit()
}


do{
write-host " 1.exportcsv 2.csvtoexcel 3.xceltocsv 4.exit"
$option=Read-Host "ENTER OPTION : "
switch($option){
1 {exportcsv(0)
    write-host "EXPORTED SUCCESFULLY"}
2{csvtoexcel(0)
write-host "CONVERTED TO XCEL SUCCESFULLY"}
3{xceltocsv(0)
write-host "CONVERTED TO CSV SUCCESFULLY"}
}
}while($option -ne '4')




