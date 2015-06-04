<%@ WebHandler Language="C#" Class="ShopCart" %>

using System;
using System.Web;
using System.Web.SessionState;
public class ShopCart : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        if (context.Session["UID"] == null)
        {
            context.Response.Redirect("login.aspx");
        }
        else {
            context.Response.Redirect("ShopCart.aspx");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}