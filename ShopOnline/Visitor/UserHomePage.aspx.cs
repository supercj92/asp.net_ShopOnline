using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Visitor_UserHomePage : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lbinfo = (Label)Master.FindControl("lbinfo");
        lbinfo.Text = "个人信息";
        if (Session["UID"] == null) {
            Response.Redirect("login.aspx");
        
        }
       string MemberID= Session["MemberID"].ToString();
       DataTable dtMember = ope.SelectTable("select * from tb_Member where MemberID="+MemberID,"tb_Member").Tables["tb_Member"];
       DetailsView1.DataSource = dtMember;
       DetailsView1.DataBind();
    }
}