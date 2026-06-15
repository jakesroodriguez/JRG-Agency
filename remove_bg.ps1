Add-Type -AssemblyName System.Drawing
$imgPath = 'c:\Users\Jakes\Desktop\JakesRodriguez\favicon.png'
$img = [System.Drawing.Image]::FromFile($imgPath)
$bmp = New-Object System.Drawing.Bitmap($img)
$img.Dispose()

$bgColor = $bmp.GetPixel(0,0)
$bmp.MakeTransparent($bgColor)
$bmp.Save('c:\Users\Jakes\Desktop\JakesRodriguez\favicon.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Write-Host "Background removed!"
