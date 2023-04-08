#Importo modulo para mostrar mensaje
Import-Module BurntToast

# Definimos la hora de apagado que deseas 
$hora = "11:27PM" 
$hora_apagado = Get-Date $hora


# Definimos la hora actual
$hora_actual = Get-Date

# Calculamos la cantidad de segundos hasta la hora de apagado
$tiempo_apagado = ($hora_apagado - $hora_actual).TotalSeconds # Calculamos cuantos segundos tienen
# que pasar de la hora actual hasta la de apagado.

# Mensaje que mostrara en pantalla para avisar del apagado.
$msg = "El sistema se apagara automaticamente a las "+ $hora + " Horas"

# Mostramos el mensaje en pantalla
Write-Host $msg
New-BurntToastNotification -Text $msg -Sound SMS -AppLogo C:\Users\sheam\Downloads\gatito.jpg

$tiempo_apagado = ($tiempo_apagado - 600)

Start-Sleep -Seconds $tiempo_apagado
New-BurntToastNotification -Text "El dispositivo se apagara en 10 minutos, Guarda Tus cosas." -Sound SMS -AppLogo C:\Users\sheam\Downloads\gatito.jpg
Start-Sleep -Seconds 600
Stop-Computer -Force
