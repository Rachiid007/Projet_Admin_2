$ORIGIN intranet.m1-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.intranet.m1-5.ephec-ti.be. root.m1-5.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; name servers => RR de type NS
@           IN      NS      ns.intranet.m1-5.ephec-ti.be.

; name servers => RR de type A
ns          IN      A       172.16.0.3

; services web
erp         IN      A       172.16.0.4
mysql       IN      A       172.16.0.5

#resolv    IN      A       172.16.0.2
