{% extends "templates/common.volt" %}
{% block title %}{{ title }}{% endblock %}
{% block themeStyles %}
<link rel="stylesheet" href="https://unpkg.com/element-ui@2.6.1/lib/theme-chalk/index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@riophae/vue-treeselect@0.0.34/dist/vue-treeselect.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/v-charts/lib/style.min.css"> {% endblock %}
{% block content %}
{{#volt 'partial("common/sidebar")'}}{{/volt}}
{% endblock %}
{% block pluginScripts %}{% endblock %}