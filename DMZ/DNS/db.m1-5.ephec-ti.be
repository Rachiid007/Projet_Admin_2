$ORIGIN m1-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.m1-5.ephec-ti.be. root.m1-5.ephec-ti.be. (
                        2           ; Serial
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

; Mail
mail    IN      A       176.96.231.209
smtp    IN      CNAME   mail
imap    IN      CNAME   mail

; VoIP
_sip._udp	SRV     0       0       5060        sip
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    176.96.231.207