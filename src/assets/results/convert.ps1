# Убедитесь, что ImageMagick доступен
if (-not (Get-Command magick -ErrorAction SilentlyContinue)) {
    Write-Host "ImageMagick not inst" -ForegroundColor Red
    exit
}

# Устанавливаем папку для работы (текущая папка)
$CurrentDir = Get-Location
Write-Host "Dir: $CurrentDir"

# Получаем список всех файлов .heic
$files = Get-ChildItem -Path $CurrentDir -Filter *.heic

if ($files.Count -eq 0) {
    Write-Host "HEIC not found" -ForegroundColor Yellow
    exit
}

# Инициализация счетчика
$counter = 1

foreach ($file in $files) {
    # Формируем новое имя файла
    $newName = "{0:D2}.webp" -f $counter

    # Выполняем конвертацию
    Write-Host "Conv $($file.Name) -> $newName"
    magick convert "$($file.FullName)" "$newName"

    # Проверяем, успешно ли создан файл
    if (Test-Path "$newName") {
        Write-Host "Success: $newName" -ForegroundColor Green
        $counter++
    } else {
        Write-Host "Error: $($file.Name)" -ForegroundColor Red
    }
}

Write-Host "All files done" -ForegroundColor Cyan
