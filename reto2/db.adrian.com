$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.adrian.com. root.adrian.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
     IN      NS      ns1.adrian.com.
     IN      NS      ns2.adrian-esclavo.com.

; name servers - A records
ns1.adrian.com.             IN      A      56.23.45.2
ns2.adrian-esclavo.com		IN	A	56.23.45.10
www.adrian.com.        IN      A      56.23.45.3
ftp.adrian.com.        IN      A      56.23.45.3

$ORIGIN valencia.adrian.com.

@	IN	NS	nssub
nssub	IN	A	56.23.45.5

$ORIGIN caceres.adrian.com.

@	IN	NS	nssub2
nssub2	IN	A	56.23.45.6
