/ip firewall address-list
# # 合并后网络数量: 6
# 生成时间: Wed Apr  9 07:33:10 UTC 2025
remove [/ip firewall address-list find list=blocked_abuseipdb]
:delay 60s
add address=240.0.0.1 list=blocked_abuseipdb comment=abuseIPDB
add address=185.220.0.0/16 list=blocked_abuseipdb
add address=193.187.0.0/16 list=blocked_abuseipdb
add address=45.134.0.0/16 list=blocked_abuseipdb
add address=45.153.0.0/16 list=blocked_abuseipdb
add address=45.95.0.0/16 list=blocked_abuseipdb
add address=91.219.0.0/16 list=blocked_abuseipdb
