[Windows.Media.Ocr.OcrEngine, Windows.Foundation, ContentType = WindowsRuntime] | Out-Null
[Windows.Graphics.Imaging.BitmapDecoder, Windows.Foundation, ContentType = WindowsRuntime] | Out-Null
[Windows.Storage.StorageFile, Windows.Foundation, ContentType = WindowsRuntime] | Out-Null

$file = [Windows.Storage.StorageFile]::GetFileFromPathAsync([System.IO.Path]::GetFullPath('C:\Users\Administrator\.qclaw\media\inbound\f6e5ec8b-880c-44a2-acbf-a4c7dc51b13e.jpg')).GetAwaiter().GetResult()
$stream = $file.OpenAsync([Windows.Storage.FileAccessMode]::Read).GetAwaiter().GetResult()
$decoder = [Windows.Graphics.Imaging.BitmapDecoder]::CreateAsync($stream).GetAwaiter().GetResult()
$bitmap = $decoder.GetSoftwareBitmapAsync().GetAwaiter().GetResult()

$engine = [Windows.Media.Ocr.OcrEngine]::TryCreateFromUserProfileLanguages()
$res = $engine.RecognizeAsync($bitmap).GetAwaiter().GetResult()
Write-Host $res.Text
