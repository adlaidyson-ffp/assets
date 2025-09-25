<#-- Custom Fused Frame login page -->
<!DOCTYPE html>
<html lang="${locale}">
<head>
    <meta charset="utf-8">
    <title>Login - ${realm.displayName?html}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>
<body>
    <div class="page-wrapper">

        <!-- Banner logo above login box -->
        <div class="logo-container">
            <img src="https://cdn.fusedframe.co.uk/main-logos/png/Banner%20Logo%20(No%20Circle)%20Light%20(Transparent).png" alt="Fused Frame Logo" class="banner-logo">
        </div>

        <!-- Login box -->
        <div class="login-container">

            <h1 class="login-title">Login</h1>
            <p class="login-subtitle">
                Please login using your unified <strong>Adlai Dyson | Fused Frame Photography</strong> credentials.
            </p>

            <#if message?has_content>
                <div class="alert ${message.type}">
                    <span>${kcSanitize(message.summary)?no_esc}</span>
                </div>
            </#if>

            <form id="kc-form-login" class="form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="form-group">
                    <label for="username">${msg("username")}</label>
                    <input tabindex="1" id="username" name="username" type="text" autofocus value="${login.username!''}" />
                </div>

                <div class="form-group">
                    <label for="password">${msg("password")}</label>
                    <input tabindex="2" id="password" name="password" type="password" />
                </div>

                <div class="form-actions">
                    <input tabindex="3" class="btn-login" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />
                </div>

                <#if realm.resetPasswordAllowed>
                    <div class="forgot-password">
                        <a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
                    </div>
                </#if>
            </form>

        </div>
    </div>
</body>
</html>
