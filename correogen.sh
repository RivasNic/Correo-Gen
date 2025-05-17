#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[33m
╭━━━┳━━━┳━━━┳━━━┳━━━┳━━━╮
┃╭━╮┃╭━╮┃╭━╮┃╭━╮┃╭━━┫╭━╮┃
┃┃╱╰┫┃╱┃┃╰━╯┃╰━╯┃╰━━┫┃╱┃┃
┃┃╱╭┫┃╱┃┃╭╮╭┫╭╮╭┫╭━━┫┃╱┃┃
┃╰━╯┃╰━╯┃┃┃╰┫┃┃╰┫╰━━┫╰━╯┃
╰━━━┻━━━┻╯╰━┻╯╰━┻━━━┻━━━╯
╭━━━┳━━━┳━╮╱╭╮
┃╭━╮┃╭━━┫┃╰╮┃┃
┃┃╱╰┫╰━━┫╭╮╰╯┃
┃┃╭━┫╭━━┫┃╰╮┃┃
┃╰┻━┃╰━━┫┃╱┃┃┃
╰━━━┻━━━┻╯╱╰━ \e[0m"

echo -e "\e[33MGENERADOR DE CORREO\e[0m"


nombres=("Juan" "María" "José" "Ana" "Carlos" "Laura" "Pedro" "Paula" "Luis" "Carmen" "Diego" "Isabel" "Fernando" "Lorena" "Ricardo" "Verónica" "Manuel" "Sofía")

echo "Generador de correos electrónicos"
echo "Selecciona el dominio:"
echo "1. Gmail"
echo "2. Hotmail"
echo "3. Outlook"
echo "4. Yahoo"
read -p "Escribe el número correspondiente al dominio que deseas utilizar: " option

case $option in
    1)
        domain="gmail.com"
        ;;
    2)
        domain="hotmail.com"
        ;;
    3)
        domain="outlook.com"
        ;;
    4)
        domain="yahoo.com"
        ;;
    *)
        echo "Opción inválida. Saliendo del script."
        exit
        ;;
esac

read -p "¿Cuántos correos electrónicos deseas generar? " count

echo "Generando $count correos electrónicos con el dominio $domain..."

for ((i=1; i<=$count; i++))
do
    random_index=$(( $RANDOM % ${#nombres[@]} ))
    nombre=${nombres[$random_index]}
    email="${nombre,,}@$domain"
    echo $email >> /sdcard/emails.txt
done

echo "Correos electrónicos generados exitosamente. Puedes encontrar los resultados en /sdcard/emails.txt"