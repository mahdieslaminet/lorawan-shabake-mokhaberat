
# LoRaWAN IoT Network Simulation in MATLAB

## Overview

This project presents a MATLAB-based simulation of an Internet of Things (IoT) network using the LoRaWAN communication protocol.
The main objective is to analyze the impact of different **Spreading Factors (SF)** on network performance, specifically in terms of **Packet Delivery Ratio (PDR)** and **energy consumption**.

The simulation is inspired by recent research studies (2023 and later) on low-power wide-area networks (LPWANs) and provides a simplified but effective system-level evaluation.

---

## Objectives

* Simulate a single-gateway LoRaWAN IoT network
* Evaluate Packet Delivery Ratio (PDR) for different Spreading Factors
* Analyze energy consumption behavior under different SF values
* Study the trade-off between reliability and energy efficiency

---

## System Model

* Nodes are randomly distributed in a circular area
* A single gateway is located at the center of the network
* Log-distance path loss model is used
* Fixed transmission power is assumed
* No inter-node interference is considered (simplified model)

---

## Simulation Parameters

* Number of nodes: Configurable
* Network radius: Configurable
* Spreading Factors: SF7, SF9, SF12
* Bandwidth: 125 kHz
* Packet size: Fixed
* Transmission power: Fixed

---

## Project Structure

```text
LoRaWAN-Simulation/
│
├── code/
│   ├── main.m
│   ├── generate_nodes.m
│   ├── calculate_distance.m
│   ├── path_loss_model.m
│   ├── packet_success_probability.m
│   └── energy_model.m
│
├── figures/
│   ├── PDR_vs_SF.png
│   ├── Energy_vs_SF.png
│
├── report/
│   ├── Report.pdf
│
└── README.md
```

---

## How to Run

1. Open MATLAB
2. Set the `code` folder as the working directory
3. Run:

```matlab
main
```

The simulation will automatically generate the performance plots.

---

## Results

The simulation results show that:

* Higher Spreading Factors improve communication reliability (higher PDR)
* Energy consumption increases with Spreading Factor due to longer transmission time
* A trade-off exists between energy efficiency and reliability

---

## Tools and Technologies

* MATLAB
* LoRaWAN system-level modeling
* Wireless communication simulation

---

## References

* Recent research articles on LoRaWAN and LPWAN (2023+)
* LoRaWAN Specification v1.0.4

---

## Author

Keyvan


# شبیه‌سازی شبکه IoT مبتنی بر LoRaWAN در متلب

## معرفی پروژه

در این پروژه، یک شبیه‌سازی مبتنی بر **MATLAB** از یک شبکه اینترنت اشیا (IoT) با استفاده از پروتکل **LoRaWAN** ارائه شده است.
هدف اصلی پروژه، بررسی تأثیر **Spreading Factor (SF)**های مختلف بر عملکرد شبکه، به‌ویژه از نظر **نرخ تحویل موفق بسته‌ها (Packet Delivery Ratio – PDR)** و **مصرف انرژی** است.

این شبیه‌سازی با الهام از مقالات پژوهشی جدید (سال ۲۰۲۳ به بعد) در حوزه شبکه‌های کم‌مصرف و برد بلند (LPWAN) طراحی شده و یک ارزیابی سطح سیستم ساده ولی کاربردی ارائه می‌دهد.

---

## اهداف پروژه

* شبیه‌سازی یک شبکه LoRaWAN با یک گیت‌وی مرکزی
* بررسی نرخ تحویل موفق بسته‌ها (PDR) برای SFهای مختلف
* تحلیل مصرف انرژی در شرایط متفاوت Spreading Factor
* بررسی توازن بین قابلیت اطمینان لینک و بهره‌وری انرژی

---

## مدل سیستم

* نودها به‌صورت تصادفی در یک ناحیه دایره‌ای توزیع شده‌اند
* یک گیت‌وی در مرکز شبکه قرار دارد
* از مدل تلفات مسیر لگاریتمی (Log-Distance Path Loss) استفاده شده است
* توان ارسال برای همه نودها ثابت در نظر گرفته شده است
* تداخل بین نودها لحاظ نشده است (مدل ساده‌سازی‌شده)

---

## پارامترهای شبیه‌سازی

* تعداد نودها: قابل تنظیم
* شعاع شبکه: قابل تنظیم
* Spreading Factorها: SF7، SF9، SF12
* پهنای باند: 125 کیلوهرتز
* اندازه بسته: ثابت
* توان ارسال: ثابت

---

## ساختار پروژه

```text
LoRaWAN-Simulation/
│
├── code/
│   ├── main.m
│   ├── generate_nodes.m
│   ├── calculate_distance.m
│   ├── path_loss_model.m
│   ├── packet_success_probability.m
│   └── energy_model.m
│
├── figures/
│   ├── PDR_vs_SF.png
│   ├── Energy_vs_SF.png
│
├── report/
│   ├── Report.pdf
│
└── README.md
```

---

## نحوه اجرا

1. نرم‌افزار MATLAB را اجرا کنید
2. پوشه `code` را به‌عنوان پوشه کاری (Working Directory) انتخاب کنید
3. دستور زیر را اجرا کنید:

```matlab
main
```

پس از اجرا، نمودارهای عملکرد شبکه به‌صورت خودکار تولید می‌شوند.

---

## نتایج

نتایج شبیه‌سازی نشان می‌دهد که:

* با افزایش Spreading Factor، قابلیت اطمینان ارتباط (PDR) افزایش می‌یابد
* مصرف انرژی با افزایش SF بیشتر می‌شود، زیرا زمان ارسال طولانی‌تر است
* بین مصرف انرژی و قابلیت اطمینان، یک رابطه توازنی (Trade-off) وجود دارد

---

## ابزارها و فناوری‌ها

* MATLAB
* مدل‌سازی سطح سیستم LoRaWAN
* شبیه‌سازی شبکه‌های مخابرات بی‌سیم

---

## منابع

* مقالات پژوهشی جدید در حوزه LoRaWAN و LPWAN (سال ۲۰۲۳ به بعد)
* مستندات رسمی LoRaWAN نسخه 1.0.4

---

## تهیه‌کننده

کیوان
.
