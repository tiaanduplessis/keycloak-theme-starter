<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "header">
        ${msg("errorTitleHtml")?no_esc}
    <#elseif section = "back">
        <#if client?? && client.baseUrl?has_content>
            <a class="link-back" id="backToApplication" href="${client.baseUrl}">${msg("backToApplication")}</a>
        </#if>
    <#elseif section = "form">

                <div class="login-form">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Oops!</h1>
                        <p class="form-title-subtext">Something went wrong.</p>
                    </div>

                    <p class="instruction">
                        ${message.summary}
                    </p>

                    <p class="disclaimer">
                    By signing in, you agree to Fast Banana's<br>
                    <a class="disclaimer-link" href="https://www.fastbanana.com/terms#terms" target="_blank">Terms & Conditions</a> & 
                    <a class="disclaimer-link" href="https://www.fastbanana.com/terms#policy" target="_blank">Privacy Policy</a>.
                </p>
                
                </div>

            </div>

    </#if>
</@layout.registrationLayout>