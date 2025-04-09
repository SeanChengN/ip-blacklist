/ip firewall address-list
# 45.134.144.140/31
# 生成时间: Wed Apr  9 07:33:10 UTC 2025
remove [/ip firewall address-list find list=blocked_abuseipdb]
:delay 60s
add address=240.0.0.1 list=blocked_abuseipdb comment=abuseIPDB
add address=45.153.160.130/31 list=blocked_abuseipdb
add address=45.153.160.132/30 list=blocked_abuseipdb
add address=45.153.160.136/30 list=blocked_abuseipdb
add address=91.219.236.120/29 list=blocked_abuseipdb
add address=91.219.236.128/31 list=blocked_abuseipdb
add address=91.219.236.130 list=blocked_abuseipdb
add address=185.220.101.33 list=blocked_abuseipdb
add address=185.220.101.34/31 list=blocked_abuseipdb
add address=193.187.174.104 list=blocked_abuseipdb
