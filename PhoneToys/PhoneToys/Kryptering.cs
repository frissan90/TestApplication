using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Web.Security;

namespace PhoneToys
{
    internal class Kryptering
    {
        public static HttpCookie encryptUser(HttpCookie kaka)
        {
            HttpCookie safeCookie = kaka;
            var value = new FormsAuthenticationTicket(2, "", DateTime.Now, DateTime.Now.AddMinutes(10), false, kaka.Value);
            safeCookie.Value = FormsAuthentication.Encrypt(value);

            return safeCookie;
        }

        public static string decryptUser(HttpCookie kaka)
        {
            return FormsAuthentication.Decrypt(kaka.Value).UserData.ToString();
        }

       
    }
}