{% extends "templates/common.volt" %}
{% block title %}{{ title }}{% endblock %}
{% block themeStyles %}
{{#volt 'super()'}}{{/volt}}
<link rel="stylesheet" href="https://unpkg.com/element-ui@2.6.1/lib/theme-chalk/index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@riophae/vue-treeselect@0.0.34/dist/vue-treeselect.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/v-charts/lib/style.min.css"> {% endblock %}
{% block content %}
<div class="page-content-fixed-header">
  <!-- BEGIN BREADCRUMBS -->
  <ul class="page-breadcrumb">
    <li>
      <a href="/index/index">掌玩BI</a>
    </li>
    <li>{{ title }}</li>
  </ul>
  <!-- ...导航删除掉 -->
</div>
<div class="page-sidebar-wrapper" style="display: none;">
  {{#volt 'partial("common/sidebar")'}}{{/volt}}
</div>

<div class="page-fixed-main-content" style="margin-left: 20px;">
  <div class="clearfix"></div>
  <div class="portlet light bordered" id="app">
    <div class="portlet">
      <template>
        <form action="" id="form_sample_1" class="form-horizontal clearfix" novalidate="novalidate">
          {{#each header.form}}
          <tr>
            <td>{{name}}</td>
            <td>{{type}}</td>
            <td>{{label}}</td>
          </tr>
          {{/each}}

        </form>
      </template>
    </div>

    <div class="portlet">
      <template>
        <div style="text-align:right;float: right;">
          <el-button size="mini" type="primary" class="button" icon="el-icon-news" @click="chartAll.visible = true">图表分析</el-button>
          <el-button size="mini" type="primary" class="button" icon="el-icon-plus" @click="addTempConVisible = true">新建条件
          </el-button>
          <el-button size="mini" type="primary" class="button" icon="el-icon-menu" @click="conListShow">
            我的条件组
          </el-button>
          <el-button size="mini" type="primary" class="button" icon="el-icon-star-on" @click="collectAllShow">收藏勾选
          </el-button>

          <el-button size="mini" type="primary" class="button" icon="el-icon-download" @click="exportData">导出
          </el-button>

          {#<el-button size="mini" type="primary" class="button" icon="el-icon-menu" @click="allChart">
            数据分析
          </el-button>#}
        </div>
      </template>

      <!-- table -->
      <template>
        <div>

        </div>
      </template>

      <!-- 分页 -->
      <div class="row">
        <div class="col-md-12 col-sm-12 text-center">
          <div class="dataTables_paginate paging_bootstrap_number" id="sample_1_paginate">
          </div>
        </div>
      </div>
      <div class="row-fluid"></div>
    </div>

    <!-- dialogs -->
    <template>

    </template>
  </div>
</div>
<button type="button" class="tabs_show isShow" style="position:fixed;left: 0;top:50%;width:45px;height:45px;margin-top:-22.5px;background:#009dc7;border-width: 0;">
  <i class="icon-logout" style="font-size:20px;color:#fff;padding:5px;"></i>
  <i class="icon-login" style="font-size:20px;color:#fff;padding:5px;display: none;"></i>
</button>
{% endblock %}
{% block pluginScripts %}{% endblock %}