$credential = Import-Clixml -Path "credential.xml"
$username = $($credential.UserName)
$password = $($credential.GetNetworkCredential().Password)

$key = (Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
$url = "https://pidkey.com/ajax/pidms_api?keys=$key&justgetdescription=0&username=$username&password=$password"
$res = Invoke-WebRequest -Uri $url

if ($res.StatusCode -eq '200') {
    $val = ConvertFrom-Json $res.Content
    $err = $val.errorcode
    if ($err) {
        $type = $val.prd
        $subs = $val.sub

        $output = "Key : $key`nType : $type`nStatus : $err`nSub : $subs"
        $output | Out-File -FilePath "keys.txt" -Append

        Write-Output "Key : $key"
        Write-Output "Type : $type"
        Write-Output "Status : $err"
        Write-Output "Sub : $subs"
    } else {
        Write-Output "No valid information"
    }
} else {
    Write-Output "Failed to connect API"
}