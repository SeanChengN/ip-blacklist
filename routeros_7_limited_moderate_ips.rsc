/ip firewall address-list
# # 合并后网络数量: 6
# 生成时间: Wed Apr  9 16:11:17 UTC 2025
remove [/ip firewall address-list find list=blocked_abuseipdb]
:delay 60s
add address=240.0.0.1 list=blocked_abuseipdb comment=abuseIPDB
add address=185.220.96.0/20 list=blocked_abuseipdb
add address=193.187.160.0/20 list=blocked_abuseipdb
add address=45.134.144.0/20 list=blocked_abuseipdb
add address=45.153.160.0/20 list=blocked_abuseipdb
add address=45.95.144.0/20 list=blocked_abuseipdb
add address=91.219.224.0/20 list=blocked_abuseipdb
