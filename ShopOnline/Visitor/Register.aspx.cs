using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Register : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.rbsex.SelectedIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strUserName = tbusername.Text;
        string strNikeName = tbnikename.Text;
        string strEmail = tbemail.Text;
        string strPwd = tbpassword.Text;
        string strSex = rbsex.SelectedItem.Text;
        //if (ope.IsRegisted(strUserName))
        //{
        //    Response.Write("<script>alert('用户名已被注册');</script>");

        //}
        //else
        //{
            int sign = ope.InsertMember(strUserName, strPwd, strEmail, strSex, strNikeName);

            if (sign != null)
            {

                Response.Write("<script>alert('注册成功');window.location.href='./login.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('系统错误');window.location.href='./Index.aspx'</script>");
            }
        //}
    }
}