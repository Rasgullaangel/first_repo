$Server="C:\Users\senthilnathanp\Desktop\server.txt"
$ServerList = Get-Content $Server -ErrorAction SilentlyContinue  
$Result = @()  
$a=get-psdrive|select name,used|where-object name -Eq 'c'
$os=get-wmiobject win32_operatingsystem |select name,FreePhysicalMemory
$nic=get-wmiobject -class win32_networkadapter |select servicename,adaptertype|Where-Object servicename -EQ 'ndiswan'|select -first 1
$di=get-wmiobject -class win32_logicaldisk |select name,size|select @{n='capacity';e={((($_.size)-($_.freespace))/($_.size))*100}},@{n='FreeSpace';e={($_.FreeSpace/$_.size)*100}}

$bw=Get-WmiObject -class  win32_perfFormattedData_Tcpip_NetworkInterface |select name,currentbandwidth|
    Select @{n='Nic_Card';e={$_.name}},@{n='current';e={($_.currentbandwidth/100000000)*100}} |?{$_.Nic_Card -like 'intel*'}
$i=0;
ForEach($row in $ServerList)  
{
$w=New-Object PSObject;
$w | Add-Member NoteProperty "server"          $ServerList[$i];
$w | Add-Member NoteProperty "cpu utilisation" $a.used; 
$w | Add-Member NoteProperty "memory"          $os.FreePhysicalMemory;
$w | Add-Member NoteProperty "nic card"        $nic.adaptertype;
$w | Add-Member NoteProperty "disk"            $di.size;
$w | Add-Member NoteProperty "band width"      $bw.currentbandwidth[$i];
$result+=$w
$i++
}$s=$result |ConvertTo-Html
$s|Out-File -FilePath C:\Users\senthilnathanp\Desktop\task.html
$q = $s -replace '<table>','<table border=1 cellpadding=0 cellspacing=2>'
$ol = New-Object -ComObject outlook.application
$mail = $ol.CreateItem(0)
$mail.to = "lathika.v@hcl.com"
$mail.subject = "task"
$mail.HtmlBody = "$q"
$mail.send() 

