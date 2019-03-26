<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
        <#if realm.password>

            <form id="kc-form-login" class="login-form" action="${url.loginAction}" method="post">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Head Office</h1>
                        <p class="form-title-subtext">Welcome back. Sign in with your credentials.</p>
                    </div>


                    <p class="message-container js-message-container"></p>

                    <div class="form-group">
                        <label for="username" class="form-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                            <#if usernameEditDisabled??>
                                <input 
                                    id="username"
                                    placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                                    class="form-control" 
                                    name="username" 
                                    value="${(login.username!'')}" 
                                    type="text" 
                                    disabled 
                                />
                            <#else>
                                <input 
                                    id="username"
                                    placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                                    class="form-control" 
                                    name="username" 
                                    value="${(login.username!'')}" 
                                    type="text" 
                                    autofocus 
                                    autocomplete="off" />
                            </#if>
                    </div>

                    <div class="form-group">
                        <label for="password" class="form-label">${msg("password")}</label>
                        <input id="password" placeholder="${msg("password")}" class="form-control" name="password" type="password" autocomplete="off" />
                    </div>

                    <div id="form-options" class="form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                            <div class="checkbox form-group">
                                <div class="multiple-choice">
                                    <#if login.rememberMe??>

                                    <label class="checkbox-container" for="rememberMe">${msg("rememberMe")}
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked>
                                        <span class="checkmark"></span>
                                    </label>

                                    <#else>

                                    <label class="checkbox-container" for="rememberMe">${msg("rememberMe")}
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3">
                                        <span class="checkmark"></span>
                                    </label>

                                    </#if>
                                </div>
                            </div>
                        </#if>

                        <#if realm.resetPasswordAllowed>
                            <p><a class="form-forgot-password" href="${url.loginResetCredentialsUrl}">Forgot password?</a></p>
                        </#if>
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!} form-group">
                        <input class="button ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="Sign in"/>
                    </div>

                    <p class="disclaimer">
                    By signing in, you agree to Fast Banana's<br>
                    <a class="disclaimer-link" href="https://www.fastbanana.com/terms#terms" target="_blank">Terms & Conditions</a> & 
                    <a class="disclaimer-link" href="https://www.fastbanana.com/terms#policy" target="_blank">Privacy Policy</a>.
                </p>
                
                </div>

            </form>
        </#if>



    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <h2 class="heading-medium">${msg("noAccount")}</h2>
                <p><a href="${url.registrationUrl}">${msg("registerLink")}</a></p>
            </div>
        </#if>

    </#if>
</@layout.registrationLayout>
