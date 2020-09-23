<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <#--  生成mainfest配置  -->
    <!-- <#include "../common/recipe_manifest.xml.ftl" /> -->
    <@kt.addAllKotlinDependencies />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <#--  生成布局文件  -->
    <instantiate from="root/res/layout/activity.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />

    <#--  生成.java文件  -->
    <instantiate from="root/src/app_package/Activity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/Presenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterPackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/View.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewPackage?replace('.', '/')}/${viewClass}.${ktOrJavaExt}" />


    <#--  打开文件.java文件  -->
    <open file="${escapeXmlAttribute(srcOut)}/${activityPackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenterPackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewPackage?replace('.', '/')}/${viewClass}.${ktOrJavaExt}" />


    <#--  打开布局文件  -->
    <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml" />


</recipe>
