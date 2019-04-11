$d=New-Object -ComObject internetexplorer.application
$d.Navigate('https://www.rmkcampulse.com')
$d.Visible=$true

while($d.Busy){
  Start-Sleep -Seconds 2
}
$a=$d.Document.getElementSBytagname('a')|?{$_.textcontent -eq 'login'}
$a.click()
$value=$d.document.getelementsbytagname('input')|?{$_.name ='username'}
$value.value='111714104075'
$value.document.forms.submit()
