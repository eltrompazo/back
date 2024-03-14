
import os
import time

def scroll_text(text, limit):
    while True:
        for i in range(len(text) + limit):
            sub_text = text[i:i+limit]
            print(f"{sub_text: <{limit}}", end='\r')
            time.sleep(0.2)

if __name__ == "__main__":
    if os.system("command -v dbus-send > /dev/null") == 0:
        artist = "Artist Name"  # Reemplaza con la lógica para obtener el artista
        song = "Song Title"      # Reemplaza con la lógica para obtener el título de la canción
        full_text = f"{song} - {artist}"
        scroll_text(full_text, 20)
    else:
        print("DBus not available.")
