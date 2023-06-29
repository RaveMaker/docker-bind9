$TTL 604800
@	IN	SOA	dns1.example.com. root.example.com. (
	1688057248	; Serial
	604800		; Refresh
	86400		; Retry
	2419200		; Expire
	604800 )	; Negative Cache TTL

; name servers - NS records
@				IN	NS	dns1.example.com.
@				IN	NS	dns2.example.com.
dns1.example.com.		IN	A	192.168.0.1
dns2.example.com.		IN	A	192.168.0.2

; A records
host.example.com.		IN	A	192.168.0.111

; CNAME records
alias.example.com.		IN	CNAME	host.example.com.
