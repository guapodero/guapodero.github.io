{% extends "base.tpl" %}

{% block title %}
  <title>Tags</title>
{% endblock title %}

{%- block css %}
<style>
  
  @media (max-width: 767px) {
    article a {
      font-size: 1.5rem;
      line-height: 2rem;
    }

    article a sup {
      font-size: 1rem;
    }
  }
</style>
{% endblock css -%}

{% block main %}
  <h1>Tags</h1>
  <article id="tags">
  {%- for tag in tags %}
    <a href="{{ config.site_url }}/tags/{{ tag.name | urlencode }}.html">{{ tag.name }}<sup>{{ tag.num }}</sup></a>
  {%- endfor %}
  </article>
{%- endblock main %}

{% block js %}{% endblock js %}
