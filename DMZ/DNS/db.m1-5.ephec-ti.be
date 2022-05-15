$ORIGIN m1-5.ephec-ti.be.
$TTL 3600      ; 1 hour
@       IN      SOA     ns.m1-5.ephec-ti.be. root.m1-5.ephec-ti.be. (
                                1          ; serial -> incrémentemente de 1 à chaque modification
                                3600       ; refresh (1 hour)
                                3000       ; retry (50 minutes)
                                4619200    ; expire (7 weeks 4 days 11 hours 6 minutes 40 seconds)
                                604800     ; minimum (1 week)
                                )

; name server => RR de type NS
@       IN      NS      ns.m1-5.ephec-ti.be.

; name servers => RR de type A
@       IN      A       176.96.231.207
ns      IN      A       176.96.231.207

; name servers => RR de type AAAA
; @       IN      AAAA    2a01:4f8:1c:c0a::1
; ns      IN      AAAA    2a01:4f8:1c:c0a::1

; service WEB
www     IN      A       176.96.231.209
b2b     IN      A       176.96.231.209

; Mail
mail        IN      A       176.96.231.209
smtp        IN      CNAME   mail

; VoIP
_sip._udp       SRV     0       0       5060        sip
_sip._tcp       SRV     0       0       5060        sip
sip             IN      A       176.96.231.207