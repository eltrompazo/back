
#!/bin/bash

# Este script muestra el estado de la batería en Linux

# Agregar registro para verificar si el script se está ejecutando
echo "Ejecutando el script de la batería"

# Obtener el estado actual de la batería
battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Obtener el nivel actual de la batería
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

# Agregar registro para verificar el estado y el nivel de la batería
echo "Estado de la batería: $battery_status"
echo "Nivel de la batería: $battery_level%"

# Enviar notificación
notify-send "Estado de la batería" "$battery_status - Nivel de carga: $battery_level%"

