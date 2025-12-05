# AbuseIPDB 黑名单聚合结果汇总
生成时间: Fri Dec  5 16:12:36 UTC 2025

## 各阶段文件说明

| 文件名 | 描述 | IP数量 |
|--------|------|--------|
| 1_initial_aggregated_ips.txt | 1.9.164.197 | 9012 |
| 2_standard_merged_ips.txt | 标准CIDR合并 - 仅合并相邻网络 | 9012 |
| 3_conservative_merged_ips.txt | 保守合并 - 将网络扩展到/24 | 5937 |
| 4_moderate_merged_ips.txt | 中等合并 - 将网络扩展到/20 | 4509 |
| 5_aggressive_merged_ips.txt | 激进合并 - 将网络扩展到/16 | 3193 |
| 6_limited_conservative_ips.txt | 保守合并 - 将网络扩展到/24 | 5937 |
| 7_limited_moderate_ips.txt | 中等合并 - 将网络扩展到/20 | 4509 |
| 8_limited_aggressive_ips.txt | 激进合并 - 将网络扩展到/16 | 3193 |

## RouterOS脚本文件

| 脚本文件 | 对应IP列表 | IP数量 |
|----------|------------|--------|
| routeros_1_initial_aggregated_ips.rsc | 1_initial_aggregated_ips.txt | 9012 |
| routeros_2_standard_merged_ips.rsc | 2_standard_merged_ips.txt | 9012 |
| routeros_3_conservative_merged_ips.rsc | 3_conservative_merged_ips.txt | 5937 |
| routeros_4_moderate_merged_ips.rsc | 4_moderate_merged_ips.txt | 4509 |
| routeros_5_aggressive_merged_ips.rsc | 5_aggressive_merged_ips.txt | 3193 |
| routeros_6_limited_conservative_ips.rsc | 6_limited_conservative_ips.txt | 5937 |
| routeros_7_limited_moderate_ips.rsc | 7_limited_moderate_ips.txt | 4509 |
| routeros_8_limited_aggressive_ips.rsc | 8_limited_aggressive_ips.txt | 3193 |

## 使用建议

- 如果您的设备性能较好，建议使用 routeros_1_initial_aggregated_ips.rsc 或 routeros_2_standard_merged_ips.rsc
- 如果您的设备性能一般，建议使用 routeros_3_conservative_merged_ips.rsc 或 routeros_6_limited_conservative_ips.rsc
- 如果您的设备性能较差，建议使用 routeros_4_moderate_merged_ips.rsc 或 routeros_7_limited_moderate_ips.rsc
- 如果您的设备性能非常有限，建议使用 routeros_5_aggressive_merged_ips.rsc 或 routeros_8_limited_aggressive_ips.rsc

注意：合并级别越高，可能会包含更多的非恶意IP地址。请根据您的网络环境和安全需求选择合适的列表。
