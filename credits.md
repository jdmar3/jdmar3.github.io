---
layout: page
title: Credits
nav_exclude: true
---

{% if site.credits %}
{{ site.credits }}
{% endif %}

{% if site.license %}
# License

All content is copyright {{ site.author }}.

{{ site.license }}

{{ site.license-img-lrg }}

{{ site.license-summary }}

## Theme license

{{ site.theme-license }}

{% endif %}