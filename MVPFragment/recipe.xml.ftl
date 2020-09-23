<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <@kt.addAllKotlinDependencies />

    <#assign escapedResOut="${escapeXmlAttribute(resOut)}">
    <#assign escapedSrcOut="${escapeXmlAttribute(srcOut)}">

    <#--  生成布局文件  -->
    <instantiate from="root/res/layout/fragment.xml.ftl"
                   to="${escapedResOut}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />

    <#--  生成.java文件  -->
    <instantiate from="root/src/app_package/Fragment.${ktOrJavaExt}.ftl"
                   to="${escapedSrcOut}/${fragmentPackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/Presenter.${ktOrJavaExt}.ftl"
                   to="${escapedSrcOut}/${presenterPackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/View.${ktOrJavaExt}.ftl"
                   to="${escapedSrcOut}/${viewPackage?replace('.', '/')}/${viewClass}.${ktOrJavaExt}" />


    <#--  打开文件.java文件  -->
    <open file="${escapedSrcOut}/${fragmentPackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />
    <open file="${escapedSrcOut}/${presenterPackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />
    <open file="${escapedSrcOut}/${viewPackage?replace('.', '/')}/${viewClass}.${ktOrJavaExt}" />


    <#--  打开布局文件  -->
    <open file="${escapedResOut}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />


</recipe>
