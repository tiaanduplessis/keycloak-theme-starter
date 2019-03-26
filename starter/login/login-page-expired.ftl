<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("pageExpiredTitle")}
    <#elseif section = "header">
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">




            <div class="login-form">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Oops!</h1>
                        <p class="form-title-subtext">This page has expired.</p>
                    </div>

                    <p class="instruction">
                        ${msg("pageExpiredMsg1")} <a id="loginRestartLink" class="instruction-link" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a>.
                    </p>

                    <p class="instruction">
                        ${msg("pageExpiredMsg2")} <a id="loginContinueLink" class="instruction-link" href="${url.loginAction}">${msg("doClickHere")}</a>.
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