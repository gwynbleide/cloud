$basePath = "C:\Program Files (x86)\Microsoft\Edge\Application",
$versionDir = Get-ChildItem -Path $basePath -Directory | Select-Object -First 1
$fullPath = Join-Path -Path $basePath -ChildPath $versionDir.Name
cd $fullPath
.\setup.exe --uninstall --system-level --verbose-logging --force-uninstall
