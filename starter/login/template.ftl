<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>


    <title><#nested "title"> - ${realm.displayName}</title>

    <#--  Icons - Generated using http://www.favicomatic.com/  -->
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="${url.resourcesPath}/images/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${url.resourcesPath}/images/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${url.resourcesPath}/images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${url.resourcesPath}/images/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="${url.resourcesPath}/images/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="${url.resourcesPath}/images/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="${url.resourcesPath}/images/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="${url.resourcesPath}/images/apple-touch-icon-152x152.png" />
    <link rel="icon" type="image/png" href="${url.resourcesPath}/images/favicon-196x196.png" sizes="196x196" />
    <link rel="icon" type="image/png" href="${url.resourcesPath}/images/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="${url.resourcesPath}/images/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="${url.resourcesPath}/images/favicon-16x16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="${url.resourcesPath}/images/favicon-128.png" sizes="128x128" />
    <meta name="msapplication-TileColor" content="#47494A" />
    <meta name="msapplication-TileImage" content="${url.resourcesPath}/images/mstile-144x144.png" />
    <meta name="msapplication-square70x70logo" content="${url.resourcesPath}/images/mstile-70x70.png" />
    <meta name="msapplication-square150x150logo" content="${url.resourcesPath}/images/mstile-150x150.png" />
    <meta name="msapplication-wide310x150logo" content="${url.resourcesPath}/images/mstile-310x150.png" />
    <meta name="msapplication-square310x310logo" content="${url.resourcesPath}/images/mstile-310x310.png" />

    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700|Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="${url.resourcesPath}/css/main.css" rel="stylesheet" type="text/css">



    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>

    
</head>

<body class="${properties.kcBodyClass!}">

    <main id="content" role="main" class="content">
        <#if displayMessage && message?has_content>
            <div class="message-text js-message-text" data-type="${message.type}" data-content="${message.summary?no_esc}"></div>
        </#if>

        <div class="form-container js-form-container">
            <#nested "form">
        </div>
    </main>

    <div id="global-app-error" class="app-error hidden"></div>

    <script src="${url.resourcesPath}/javascripts/main.js"></script>
</body>
</html>
</#macro>
