# SMMM Yavuz Özek tanıtım sayfasını GitHub Pages'te yayınlar.
# Adres: https://yavuz-smmm.github.io
$ErrorActionPreference = "Stop"
Set-Location "D:\YAZILIM\yavuz-smmm-site"
if (-not (Test-Path ".git")) { git init -q -b main }
git add index.html yayinla.ps1
git -c user.name="Yavuz Özek" -c user.email="yavuzozeksmmm@gmail.com" commit -q -m "İşletme tanıtım sayfası" 2>$null
gh repo create yavuz-smmm/yavuz-smmm.github.io --public --source=. --remote=origin --push
gh api -X POST repos/yavuz-smmm/yavuz-smmm.github.io/pages -f "source[branch]=main" -f "source[path]=/" | Out-Null
Write-Host ""
Write-Host "Yayinlandi. 1-2 dakika sonra ac: https://yavuz-smmm.github.io" -ForegroundColor Green
