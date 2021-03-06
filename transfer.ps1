$date = (Get-Date).adddays(-1)
$source = "C:\Users\Manuel Duran\Documents\bash-test\test"
$destination = "ftp://durbonca:261187@192.168.50.115/test"

$webclient = New-Object -TypeName System.Net.WebClient

$files = Get-ChildItem $source | Where-Object {($_.LastWriteTime -ge $date)}

foreach ($file in $files)
{
    Write-Host "Uploading $file"
    $webclient.UploadFile("$destination/$file", $file.FullName)
} 

$webclient.Dispose()



pause