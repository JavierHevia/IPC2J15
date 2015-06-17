using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster2 : MasterPage
    {
        private const string AntiXsrfTokenKey2 = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey2 = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue2;

        protected void Page_Init2(object sender, EventArgs e)
        {
            // El código siguiente ayuda a proteger frente a ataques XSRF
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Utilizar el token Anti-XSRF de la cookie
                _antiXsrfTokenValue2 = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue2;
            }
            else
            {
                // Generar un nuevo token Anti-XSRF y guardarlo en la cookie
                _antiXsrfTokenValue2 = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue2;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue2
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad2;
        }

        protected void master_Page_PreLoad2(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Establecer token Anti-XSRF
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validar el token Anti-XSRF
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue2
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Error de validación del token Anti-XSRF.");
                }
            }
        }

        protected void Page_Load2(object sender, EventArgs e)
        {

        }

        protected void Unnamed_LoggingOut2(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }
    }

}