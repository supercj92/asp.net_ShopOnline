using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_AddAdmin : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ope.InsertAdmin(tbuid.Text.Trim(),tbpwd.Text.Trim(),tbrealname.Text.Trim(),tbemail.Text.Trim());
        Response.Write("<script>alert('管理员添加成功');window.location.href='./Admin.aspx'</script>");
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}