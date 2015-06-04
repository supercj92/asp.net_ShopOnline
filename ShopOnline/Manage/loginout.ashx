<%@ WebHandler Language="C#" Class="loginout" %>

using System;
using System.Web;
using System.Web.SessionState;
public class loginout : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Session["admin"] = null;
        context.Response.Redirect("login.aspx");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}