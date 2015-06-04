<%@ WebHandler Language="C#" Class="Logout" %>

using System;
using System.Web;
using System.Web.SessionState;
public class Logout : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Session["UID"] = null;
        context.Session["ShopCart"] = null;
        context.Response.Redirect("Index.aspx");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}