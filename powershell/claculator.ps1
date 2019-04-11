Add-Type -AssemblyName System.Windows.Forms 
$Form = New-Object system.Windows.Forms.Form
$Form.Text = "calc"
$image=[System.Drawing.Image]::FromFile("C:\Users\senthilnathanp\Desktop\pic.jpg")
$Form.BackgroundImage=$image
$font=new-object System.Drawing.font("Algeria",15,[System.Drawing.fontstyle]::italic)
$form.font=$font
$Form.Width = 600
$Form.Height = 600

$textfield = New-Object Windows.Forms.TextBox
$textfield.Location = New-Object Drawing.Point 10,10
$textfield.Size = New-Object Drawing.Point 460,490

$button = New-Object Windows.Forms.Button
$button.text = "clear"
$button.Location = New-Object Drawing.Point 20,40 
 $button.Size = New-Object Drawing.Point 90,60
$button.add_click{$textfield.Text = ''}
  $form.controls.add($button)

  $button1 = New-Object Windows.Forms.Button
$button1.text = "off"
$button1.Location = New-Object Drawing.Point 130,40 
 $button1.Size = New-Object Drawing.Point 90,60
$button1.add_click{$textfield.Text =$form.close()}
  $form.controls.add($button1)

    $button2 = New-Object Windows.Forms.Button
$button2.text = "BS"
$button2.Location = New-Object Drawing.Point 240,40 
 $button2.Size = New-Object Drawing.Point 90,60
  $button2.add_click{$textfield.Text += ''}
  $form.controls.add($button2)

    $button3 = New-Object Windows.Forms.Button
$button3.text = "+"
$button3.Location = New-Object Drawing.Point 20,120 
 $button3.Size = New-Object Drawing.Point 90,60
  $button3.add_click{$textfield.Text += '+'}
  $form.controls.add($button3)

    $button4 = New-Object Windows.Forms.Button
$button4.text = "-"
$button4.Location = New-Object Drawing.Point 20,200 
 $button4.Size = New-Object Drawing.Point 90,60
  $button4.add_click{$textfield.Text += '-'}
  $form.controls.add($button4)

    $button5 = New-Object Windows.Forms.Button
$button5.text = "*"
$button5.Location = New-Object Drawing.Point 20,280 
 $button5.Size = New-Object Drawing.Point 90,60
  $button5.add_click{$textfield.Text += '*'}
  $form.controls.add($button5)
    
    $button6 = New-Object Windows.Forms.Button
$button6.text = "\"
$button6.Location = New-Object Drawing.Point 20,360 
 $button6.Size = New-Object Drawing.Point 90,60
  $button1.add_click{$textfield.Text += '\'}
  $form.controls.add($button6)

   $button7 = New-Object Windows.Forms.Button
$button7.text = "1"
$button7.Location = New-Object Drawing.Point 130,120
$button7.Size = New-Object Drawing.Point 90,60
  $button7.add_click{$textfield.Text += '1'}
  $form.controls.add($button7)

  $button8 = New-Object Windows.Forms.Button
$button8.text = "2"
$button8.Location = New-Object Drawing.Point 240,120
$button8.Size = New-Object Drawing.Point 90,60
  $button8.add_click{$textfield.Text += '2'}
  $form.controls.add($button8)

  $button9 = New-Object Windows.Forms.Button
$button9.text = "3"
$button9.Location = New-Object Drawing.Point 350,120
$button9.Size = New-Object Drawing.Point 90,60
  $button9.add_click{$textfield.Text += '3'}
  $form.controls.add($button9)

  $button10 = New-Object Windows.Forms.Button
$button10.text = "4"
$button10.Location = New-Object Drawing.Point 130,200
$button10.Size = New-Object Drawing.Point 90,60
  $button10.add_click{$textfield.Text += '4'}
  $form.controls.add($button10)

  $button11 = New-Object Windows.Forms.Button
$button11.text = "5"
$button11.Location = New-Object Drawing.Point 240,200
$button11.Size = New-Object Drawing.Point 90,60
  $button11.add_click{$textfield.Text += '5'}
  $form.controls.add($button11)

  $button12 = New-Object Windows.Forms.Button
$button12.text = "6"
$button12.Location = New-Object Drawing.Point 350,200
$button12.Size = New-Object Drawing.Point 90,60
  $button12.add_click{$textfield.Text += '6'}
  $form.controls.add($button12)

  $button13 = New-Object Windows.Forms.Button
$button13.text = "7"
$button13.Location = New-Object Drawing.Point 130,280
$button13.Size = New-Object Drawing.Point 90,60
  $button13.add_click{$textfield.Text += '7'}
  $form.controls.add($button13)

  $button14 = New-Object Windows.Forms.Button
$button14.text = "8"
$button14.Location = New-Object Drawing.Point 240,280
$button14.Size = New-Object Drawing.Point 90,60
  $button14.add_click{$textfield.Text += '8'}
  $form.controls.add($button14)

$button15 = New-Object Windows.Forms.Button
$button15.text = "9"
$button15.Location = New-Object Drawing.Point 350,280
$button15.Size = New-Object Drawing.Point 90,60
  $button15.add_click{$textfield.Text += '9'}
  $form.controls.add($button15)

  $button16 = New-Object Windows.Forms.Button
$button16.text = "="
$button16.Location = New-Object Drawing.Point 130,360
$button16.Size = New-Object Drawing.Point 90,60
  $button16.add_click{$textfield.Text = Invoke-Expression $textfield.Text}
  $form.controls.add($button16)

  $button17 = New-Object Windows.Forms.Button
$button17.text = "0"
$button17.Location = New-Object Drawing.Point 240,360
$button17.Size = New-Object Drawing.Point 90,60
  $button17.add_click{$textfield.Text += '0'}
  $form.controls.add($button17)

  $button18 = New-Object Windows.Forms.Button
$button18.text = "."
$button18.Location = New-Object Drawing.Point 350,360
$button18.Size = New-Object Drawing.Point 90,60
  $button18.add_click{$textfield.Text += '.'}
  $form.controls.add($button18)

  $button19 = New-Object Windows.Forms.Button
$button19.text = "."
$button19.Location = New-Object Drawing.Point 350,360
$button19.Size = New-Object Drawing.Point 90,60
  $button19.add_click{$textfield.Text += '.'}
  $form.controls.add($button19)

  $button19 = New-Object Windows.Forms.Button
$button19.text = "sqrt"
$button20.Location = New-Object Drawing.Point 350,40
$button20.Size = New-Object Drawing.Point 90,60
$button20.add_click{$textfield.Text = [math]::Sqrt($textfield.Text)}
 $form.controls.add($button20)

$button21 = New-Object Windows.Forms.Button
$button21.text = "pow"
$button21.Location = New-Object Drawing.Point 460,40
$button21.Size = New-Object Drawing.Point 90,60
$b=read-host "enter the pow"
$button21.add_click{$textfield.Text = [math]::pow($textfield.Text,"$b")}
 $form.controls.add($button21)

 $button22 = New-Object Windows.Forms.Button
$button22.text = "log"
$button22.Location = New-Object Drawing.Point 460,120
$button22.Size = New-Object Drawing.Point 90,60
$button22.add_click{$textfield.Text = [math]::log($textfield.Text)}
 $form.controls.add($button22)

 
 $button23 = New-Object Windows.Forms.Button
$button23.text = "sin"
$button23.Location = New-Object Drawing.Point 460,200
$button23.Size = New-Object Drawing.Point 90,60
$button23.add_click{$textfield.Text = [math]::sin($textfield.Text)}
 $form.controls.add($button23)

 $button24 = New-Object Windows.Forms.Button
$button24.text = "cos"
$button24.Location = New-Object Drawing.Point 460,280
$button24.Size = New-Object Drawing.Point 90,60
$button24.add_click{$textfield.Text = [math]::cos($textfield.Text)}
 $form.controls.add($button24)

  $button25 = New-Object Windows.Forms.Button
$button25.text = "tan"
$button25.Location = New-Object Drawing.Point 460,360
$button25.Size = New-Object Drawing.Point 90,60
$button25.add_click{$textfield.Text = [math]::tan($textfield.Text)}
 $form.controls.add($button25)

 <#$button26 = New-Object Windows.Forms.Button
$button26.text = "deg"
$button26.Location = New-Object Drawing.Point 20,440 
 $button26.Size = New-Object Drawing.Point 90,60
  $button26.add_click{$textfield.Text =$Form.open }
  $form.controls.add($button26)#>

  <#$button27 = New-Object Windows.Forms.Button
$button27.text = ")"
$button27.Location = New-Object Drawing.Point 130,440
$button27.Size = New-Object Drawing.Point 90,60
  $button27.add_click{$textfield.Text = ''}
  $form.controls.add($button27)#>




   
