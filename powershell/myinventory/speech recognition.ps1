Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$listen=New-Object System.Speech.recognition.speechrecognizer
$listen.Enabled

#commandlet binding

function get-babe{
param(
[parameter(mandatory=$true)]
[string] $name
)
process{
if($name -eq "sky"){sky}
elseif($name -eq "mail"){mail}
else{pow}
}
}
get-babe(3)
