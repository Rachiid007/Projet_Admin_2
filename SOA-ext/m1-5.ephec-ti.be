$ORIGIN m1-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.m1-5.ephec-ti.be. root.m1-5.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

@    IN    A    176.96.231.207

;Attribution du "name server" (NS)
m1-5.ephec-ti.be.       IN      NS      a1.m1-5.ephec-ti.be.
a1.m1-5.ephec-ti.be.    IN      A       176.96.231.207    ; Serveur 1
ns1             IN      A       176.96.231.207

;Attribution des nom de domaine pour les sites web publiques
www     IN    CNAME     a1       ; Web serveur

;Attribution du nom de domaine pour le mail
mail    IN    CNAME     a1       ; Serveur mail
@       IN    MX    10           mail.m1-5.ephec-ti.be.