{% extends "base.tpl" %}

{% block title %}
  <title>{{ config.site_name }}</title>
{% endblock title %}

{% block css %}
<style>
  article#posts section span + .title {
    font-size: 2rem;
    margin-left: 1rem;
    padding: 1rem;
  }
  article#posts section span {
    padding: 1rem 0;
  }
</style>
{% endblock css %}


{% block main %}  
  <article id="posts">
    {%- for post in posts %}
      <section>
        <span>{{ post.headers.created | date(format="%Y-%m-%d") }}</span>
        <a class="title" href="{{ config.site_url }}{{ post.url  | urlencode }}">{{ post.title }}</a>
      </section>
    {%- endfor %}
  </article>

  {# apparently pages feature of mdblog needs more work
  <div id="pages">
  {%- if page.index > 1 %}
    <a class="prev" href="{{ index_pages | nth(n=page.index - 2) | get(key='name') | urlencode }}">« Previous</a>
  {%- endif -%}
    <span class="spacer"></span>
    <span class="info">{{ page.index }} / {{ index_pages | length }}</span>
    <span class="spacer"></span>
  {%- if page.index < index_pages | length %}
    <a class="next" href="{{ index_pages | nth(n=page.index) | get(key='name') | urlencode }}">Next »</a>
  {% endif -%}
  </div>
  #}
{%- endblock main %}

{% block js %}{% endblock js %}
