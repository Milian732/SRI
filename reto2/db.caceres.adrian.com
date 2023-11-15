$TTL    86400
@       IN      SOA     nssub2.caceres.adrian.com. mail.caceres.adrian.com. (
                              4         
                         604800    
                          86400     
                        2419200   
                          86400 )   
$ORIGIN caceres.adrian.com.
@         IN      NS      nssub2
nssub2     IN      A       56.23.45.6
www       IN      A       56.23.45.3
ftp	  IN	  A	  73.56.12.2
