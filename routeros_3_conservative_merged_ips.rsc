/ip firewall address-list
# # 合并后网络数量: 6
# 生成时间: Wed Apr  9 07:33:10 UTC 2025
remove [/ip firewall address-list find list=blocked_abuseipdb]
:delay 60s
add address=240.0.0.1 list=blocked_abuseipdb comment=abuseIPDB
add address=185.220.101.0/24 list=blocked_abuseipdb
add address=193.187.174.0/24 list=blocked_abuseipdb
add address=45.134.144.0/24 list=blocked_abuseipdb
add address=45.153.160.0/24 list=blocked_abuseipdb
add address=45.95.147.0/24 list=blocked_abuseipdb
add address=91.219.236.0/24 list=blocked_abuseipdb
