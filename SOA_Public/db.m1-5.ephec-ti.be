$ORIGIN m1-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.m1-5.ephec-ti.be. root.m1-5.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

; name server => RR de type NS
@       IN      NS      ns.m1-5.ephec-ti.be.

; name servers => RR de type A
@       IN      A       176.96.231.207
ns      IN      A       176.96.231.207

; service WEB
www     IN      A       176.96.231.209
b2b     IN      A       176.96.231.209
_3D876532204A5DDC4409439A34491FB8    3600    CNAME    73BD23D48B1E8179E3189757AF58FAC3.F0F917C425D4581AAC323B99E027EDE3.a19fdcfa5bc7c9c.comodoca.com

; service Mail
mail    IN      A       176.96.231.208
smtp    IN      CNAME   mail
imap    IN      CNAME   mail

; servers VoIP