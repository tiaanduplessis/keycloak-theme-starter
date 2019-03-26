<#import "template.ftl" as layout>
<@layout.htmlEmailLayout ; section>
    <#if section = "text">
        ${msg("emailVerificationBody", linkExpiration, realmName)?no_esc}
    </#if>
    <#if section = "linkText">
        ${msg("emailVerificationLinkTextHtml")?no_esc}
    </#if>
</@layout.htmlEmailLayout>
