/ip firewall address-list
# # 合并后网络数量: 0
# 生成时间: Wed Apr  9 06:50:34 UTC 2025
remove [/ip firewall address-list find list=blocked_abuseipdb]
:delay 60s
add address=240.0.0.1 list=blocked_abuseipdb comment=abuseIPDB
