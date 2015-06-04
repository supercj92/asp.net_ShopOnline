using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class test : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
      DataTable dt=  ope.SelectTable("select * from tb_Member","tb_Member").Tables["tb_Member"];
      DetailsView1.DataSource = dt;
      DetailsView1.DataBind();
    }
}