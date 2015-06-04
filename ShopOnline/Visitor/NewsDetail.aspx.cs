using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Visitor_NewsDetail : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
      string id=  Request.QueryString["id"];
    DataTable dt= ope.SelectTable("select * from tb_News where id="+id,"tb_News").Tables["tb_News"];
    lbtitle.Text = dt.Rows[0][1].ToString();
    lbtime.Text = dt.Rows[0][3].ToString();
    lbcontent.Text = dt.Rows[0][2].ToString();
    }
}