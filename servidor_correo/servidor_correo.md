## Servidor de Correo Electrónico

### MTA. Postfix con los protocolos SMTP y STARTTLS.

Primero instalar el paquete de Postfix, el cual hay que asignarle un sitio de internet.

Asignas un nombre al sistema de correo, en mi caso es miliandns.duckdns.org.

Ahora ya se puede configurar el archivo main.cf en la ruta de postfix.

el archivo debe quedar de esta forma:

![texto_alternativo](imagenes/1.PNG)

![texto_alternativo](imagenes/2.PNG)

![texto_alternativo](imagenes/3.PNG)

Para obtener el certificado y clave privada he usado el certbot haciendoselo a miliandns.duckdns.org

Desde master.cf he abierto el puerto de submission

![texto_alternativo](imagenes/3_5.PNG)

### MDA. Dovecot con los protocolos IMAP, IMAPs y opcionalmente POP3 y POP3s

Instalar los paquetes siguientes:

- dovecot-pop3d
- dovecot-imapd

Ahora ya se pueden tocar los ficheros de dovecot, son varios archivos por lo que mostraré lo modificado en cada uno:

10-auth.conf:

![texto_alternativo](imagenes/4.PNG)

![texto_alternativo](imagenes/5.PNG)

10-mail.conf:

![texto_alternativo](imagenes/6.PNG)

10-master.conf:

![texto_alternativo](imagenes/7.PNG)

10-ssl.conf:

![texto_alternativo](imagenes/8.PNG)

Ya solo falta el cliente de Thunderbird

Entras con:

usuario@dominio

y la contraseña del usuario

Despues de esto solo falta configurar

el servidor 

![texto_alternativo](imagenes/9.PNG)

y tambien el servidor SMTP

![texto_alternativo](imagenes/10.PNG)

Con esto ya se puede probar a enviar un correo a ti mismo

Creando un nuevo mensaje pones a quien se lo envias y un mensaje cualquiera

y como prueba de que ha funcionado se mostrará en la bandeja de entrada

![texto_alternativo](imagenes/11.PNG)

Con esto el servidor de correo ya está funcional