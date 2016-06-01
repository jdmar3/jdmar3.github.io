---
layout: full-width
title: Contact
weight: 25
---

These are all the best ways to contact me, in order of preference. Please feel free to use them. 

<ul>
{% for social_hash in site.data.social %}
{% assign social = social_hash[1] %}
  <li>
    <a href="{{ social.prevar }}{{ social.var }}">
      <span class="{{ social.icon }}"></span>&nbsp;{{ social.alt }}
    </a>&nbsp;{{ social.extra }}
  </li>
{% endfor %}
</ul>

<!--<a href="{{ social.link }}"><span class="{{social.icon}}"></span>&nbsp;{{ social.var }}</a>
<a href="https://twitter.com/{{ site.twitter_username }}"><span class="icon-twitter"></span>&nbsp;{{ site.twitterusername }}</a>
<a href="tel:"
<a href="https://github.com/{{ site.github_username }}"><span class="icon-github"></span>&nbsp;{{ site.githubusername }}</a> -->
