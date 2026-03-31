Add-Type -AssemblyName System.Drawing
$bmp = New-Object System.Drawing.Bitmap('C:\Users\Administrator\.qclaw\media\inbound\f6e5ec8b-880c-44a2-acbf-a4c7dc51b13e.jpg')
$Desktop = [Environment]::GetFolderPath('Desktop')
$bmp.Save($Desktop + '\test_ocr.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Write-Host "Saved to Desktop"
