<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "back">
        <a class="link-back" href="${url.loginUrl}">${msg("backToLogin")}</a>
    <#elseif section="form">

            <form id="kc-reset-password-form" class="login-form js-reset-form" action="${url.loginAction}" method="post">

                    <div class="form-inner-content">
                      <button type="button" class="back-btn js-back-btn">✕</button>
                    
                    <h1 class="form-reset-title">Reset password</h1>

                    <div class="form-reset-logo"></div>

                    <#--  <p class="form-reset-description">${msg("emailInstruction")}</p>  -->
                    <p class="form-reset-description">Enter the username or email address associated with your Fast Banana account and we will send you an email with password reset instructions.</p>

                    <p class="message-container js-message-container">
                        
                    </p>

                    <div class="form-group">
                        <label for="username" class="form-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>

                        <input 
                            id="username"
                            placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                            class="form-control js-reset-input"
                            name="username" 
                            value="${(login.username!'')}" 
                            type="text" 
                            autofocus 
                            autocomplete="off" 
                        />
                    </div>

                    <div class="form-group">
                        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                            <input class="button button-reset js-button-reset" type="submit" value="Reset"/>
                        </div>
                    </div>

                </p>
                
                </div>



            </form>

















    </#if>
</@layout.registrationLayout>
