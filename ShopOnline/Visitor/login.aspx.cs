using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class HouTai_login : System.Web.UI.Page
{
    DataBase db = new DataBase();
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (uid.Text.Trim().Equals("") || pwd.Text.Trim().Equals(""))
        {
            Label1.Text = "用户名或密码不能为空";
            return;
        }else{
            if (ope.IsRegistedMember(uid.Text.Trim(), pwd.Text.Trim()))
            {
                Session["UID"] = uid.Text;
                string UserName = Session["UID"].ToString();
                string MemberID = db.RunProcReturn("select MemberID from tb_Member where UserName='" + UserName + "'");
                Session["MemberID"] = MemberID;
                Response.Redirect("UserHomePage.aspx");
            }
            else
            {
                Label1.Text = "用户名或密码错误";
            }
           
        }
    }
   
}