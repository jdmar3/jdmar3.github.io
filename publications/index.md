---
layout: default
title: Publications
nav_exclude: true
---

## Articles

{% bibliography --query @article[status!=editorial && status!=other] %}

## Conference proceedings

{% bibliography --query @inproceedings[status!=editorial && status!=other] %}