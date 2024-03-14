
#!/bin/bash

# Función para verificar si estás conectado a NordVPN
esta_conectado_nordvpn() {
    if nordvpn status | grep -q "Status: Connected"; then
        return 0  # Estás conectado a NordVPN
    else
        return 1  # No estás conectado a NordVPN
    fi
}

# Función para obtener la IP pública
obtener_ip_publica() {
    if esta_conectado_nordvpn; then
        ip=$(curl -s https://api.ipify.org)
        echo "󰩟 $ip"
    else
        echo "%{F#707880}󰩟 %{F#707880}"  # No mostrar nada si no estás conectado a NordVPN %{F#707880}󰞀 %{F#707880}
    fi
}

# Mostrar la IP pública en la polybar
echo "$(obtener_ip_publica)"

