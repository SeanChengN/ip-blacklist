# IP Blacklist

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/SeanChengN/ip-blacklist/update-ip-blacklist.yml?style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/SeanChengN/ip-blacklist?style=for-the-badge)

95% confidence malicious IP list from [AbuseIPDB](https://www.abuseipdb.com/). Updated 1 time per day.

## 概述

本仓库提供多个级别的恶意 IP 地址聚合列表，适用于不同性能的设备。所有列表每天自动更新。

## 文件说明

### 原始数据
- [`abuseipdb_blacklist_raw.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/abuseipdb_blacklist_raw.txt) - 从 AbuseIPDB 获取的原始 IP 列表

### 不同级别的聚合结果
- [`1_initial_aggregated_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/1_initial_aggregated_ips.txt) - 初步聚合的 IP 列表
- [`2_standard_merged_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/2_standard_merged_ips.txt) - 标准 CIDR 合并结果
- [`3_conservative_merged_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/3_conservative_merged_ips.txt) - 保守合并结果 (/24)
- [`4_moderate_merged_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/4_moderate_merged_ips.txt) - 中等合并结果 (/20)
- [`5_aggressive_merged_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/5_aggressive_merged_ips.txt) - 激进合并结果 (/16)

### 限制数量的聚合结果
- [`6_limited_conservative_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/6_limited_conservative_ips.txt) - 限制数量的保守合并结果
- [`7_limited_moderate_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/7_limited_moderate_ips.txt) - 限制数量的中等合并结果
- [`8_limited_aggressive_ips.txt`](https://github.com/SeanChengN/ip-blacklist/blob/main/8_limited_aggressive_ips.txt) - 限制数量的激进合并结果

### RouterOS 脚本
每个聚合级别都有对应的 RouterOS 脚本文件，可直接导入到 RouterOS 设备中：

- [`routeros_1_initial_aggregated_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_1_initial_aggregated_ips.rsc)
- [`routeros_2_standard_merged_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_2_standard_merged_ips.rsc)
- [`routeros_3_conservative_merged_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_3_conservative_merged_ips.rsc)
- [`routeros_4_moderate_merged_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_4_moderate_merged_ips.rsc)
- [`routeros_5_aggressive_merged_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_5_aggressive_merged_ips.rsc)
- [`routeros_6_limited_conservative_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_6_limited_conservative_ips.rsc)
- [`routeros_7_limited_moderate_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_7_limited_moderate_ips.rsc)
- [`routeros_8_limited_aggressive_ips.rsc`](https://github.com/SeanChengN/ip-blacklist/blob/main/routeros_8_limited_aggressive_ips.rsc)

## 使用建议

- 如果您的设备性能较好，建议使用 `routeros_1_initial_aggregated_ips.rsc` 或 `routeros_2_standard_merged_ips.rsc`
- 如果您的设备性能一般，建议使用 `routeros_3_conservative_merged_ips.rsc` 或 `routeros_6_limited_conservative_ips.rsc`
- 如果您的设备性能较差，建议使用 `routeros_4_moderate_merged_ips.rsc` 或 `routeros_7_limited_moderate_ips.rsc`
- 如果您的设备性能非常有限，建议使用 `routeros_5_aggressive_merged_ips.rsc` 或 `routeros_8_limited_aggressive_ips.rsc`

注意：合并级别越高，可能会包含更多的非恶意IP地址。请根据您的网络环境和安全需求选择合适的列表。

## 详细统计信息

有关各个文件的详细统计信息，请查看 [SUMMARY.md](https://github.com/SeanChengN/ip-blacklist/blob/main/SUMMARY.md)。
