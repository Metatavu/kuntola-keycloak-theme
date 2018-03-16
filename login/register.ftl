<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
        <div id="page-numbers-container" class="col-xs-4">
          <div data-page="0" class="page-number active">
            <div class="page-number-header">${msg("header_registration")}</div>
            <div class="page-number-container">1</div>
          </div>
          <div data-page="1" class="page-number">
            <div class="page-number-header">${msg("header_background_info")}</div>
            <div class="page-number-container">2</div>
          </div>
        </div>

        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
            <div class="${properties.kuntolaRegistrationPageClass!}" data-page="0">
                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("firstName")}" type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" />
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("lastName")}" type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" />
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("email")}" type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')}" autocomplete="email" />
                    </div>
                </div>

              <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("username")}" type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" autocomplete="username" />
                    </div>
                </div>
              </#if>

                <#if passwordRequired>
                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("password")}" type="password" id="password" class="${properties.kcInputClass!}" name="password" autocomplete="new-password"/>
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                    <div class="${properties.kcInputWrapperClass!}">
                        <input placeholder="${msg("passwordConfirm")}" type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" />
                    </div>
                </div>
                </#if>
                <div class="${properties.kcFormGroupClass!}">
                   <div class="${properties.kcInputWrapperClass!}">
                      <label for="user.attributes.dataUsagePermission"><input checked="checked" type="checkbox" value="true" id="user.attributes.dataUsagePermission" name="user.attributes.dataUsagePermission"/> ${msg("dataUsagePermission")}</label>
                   </div>
                </div>
                <div class="${properties.kcFormGroupClass!}">
                   <div class="${properties.kcInputWrapperClass!}">
                      <label for="user.attributes.contactByEmailPermission"><input checked="checked" type="checkbox" value="true" id="user.attributes.contactByEmailPermission" name="user.attributes.contactByEmailPermission"/> ${msg("contactByEmailPermission")} (*)</label>
                   </div>
                </div>
                <div class="${properties.kcFormGroupClass!}">
                  <div class="${properties.kcInputWrapperClass!}">
                    <small>*) ${msg("dataUsagePermissionDetails")}</small>
                  </div>
                </div>            
                <div class="${properties.kcFormGroupClass!}">
                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                    </div>
                </div>
            </div>
          
            <div class="${properties.kcFormGroupClass!} text-center">
              <p class="${properties.kcPrivacyTextClass!}">
                ${msg("privacyText")}
              </p>
            </div>
            
            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
                    </div>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>