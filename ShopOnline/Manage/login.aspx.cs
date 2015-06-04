using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouTai_login : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (uid.Text.Trim().Equals("") || pwd.Text.Trim().Equals(""))
        {
            Label1.Text = "用户名或密码不能为空";
        }else{
            if (ope.IsRegisted(uid.Text.Trim(), pwd.Text.Trim()))
            {
                Session["admin"] = uid.Text;
                Response.Redirect("Order.aspx");
            }
            else
            {
                Label1.Text = "用户名或密码错误";
            }
           
        }
    }
   
}