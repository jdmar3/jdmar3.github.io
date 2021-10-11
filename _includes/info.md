<label for='info' class='margin-toggle'> &#8853;</label>
<input type='checkbox' id='info' class='margin-toggle'/>
<span class='marginnote'>
<span class="date larger">{{ "Contact Info" | upcase }}</span><br/><br/>
<span class="{{ site.data.social.keybase.icon }}">&nbsp;**Keybase:**</span> <a href="{{ site.data.social.keybase.prevar }}{{ site.data.social.keybase.var }}" target="_blank">https:{{ site.data.social.keybase.prevar }}{{ site.data.social.keybase.var }}</a><br/>
<span class="{{ site.data.social.pgp.icon }}">&nbsp;**PGP key:**</span><br/><a href="{{ site.data.social.pgp.prevar }}" target="_blank">{{ site.data.social.pgp.fingerprint }}</a><br/>
<span class="{{ site.data.social.github.icon }}">&nbsp;**GitHub:**</span> <a href="{{ site.data.social.github.prevar }}{{ site.data.social.github.var }}" target="_blank">https:{{ site.data.social.github.prevar }}{{ site.data.social.github.var }}</a><br/>
<span class="{{ site.data.social.email.icon }}">&nbsp;**Email:**</span> <a href="{{ site.data.social.email.prevar }}{{ site.data.social.email.var }}" target="_blank">{{ site.data.social.email.var }}</a><br/><br/>
<span class="date larger">{{ "Preprints and Studies" | upcase }}</span><br/><br/>
<span class="{{ site.data.social.osf.icon }}">&nbsp;**Open Science Framework:**</span> <a href="{{ site.data.social.osf.prevar }}{{ site.data.social.osf.var }}">https:{{ site.data.social.osf.prevar }}{{ site.data.social.osf.var }}</a><br/>
{% comment %}Site updated {{ site.time | time_tag }}.{% endcomment %}
</span>
