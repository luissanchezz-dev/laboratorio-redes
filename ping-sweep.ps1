# ping-sweep.ps1
# Escanea los primeros 10 hosts de la subred 192.168.1.0/24

$ips = 1..10 | ForEach-Object { "192.168.1.$_" }
foreach ($ip in $ips) {
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Output "$ip está en línea"
    } else {
        Write-Output "$ip está fuera de línea"
    }
}
