$TTL    86400
@       IN      SOA     nssub.valencia.adrian.com. mail.valencia.adrian.com. (
                              4         
                         604800    
                          86400     
                        2419200   
                          86400 )   
$ORIGIN valencia.adrian.com.
@         IN      NS      nssub
nssub     IN      A       56.23.45.5
www       IN      A       56.23.45.3
ftp       IN      A       56.23.45.3
