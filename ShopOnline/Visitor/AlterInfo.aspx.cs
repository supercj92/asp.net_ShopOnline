using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_AlterInfo : System.Web.UI.Page
{
    Operation ope = new Operation();
    string MemberID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MemberID"] == null)
        {
            Response.Redirect("login.aspx");
        }
       MemberID=  Session["MemberID"].ToString();
     
    }
  
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        ope.UpdateUserInfo(tbusername.Text.Trim(), tbpwd.Text.Trim(), tbnikename.Text.Trim(), tbemail.Text.Trim(), tbsex.Text.Trim(), MemberID);
        Response.Write("<script>alert('个人信息修改成功');window.location.href='UserHomePage.aspx'</script>");
    }
}