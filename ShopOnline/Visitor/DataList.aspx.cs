using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Default2 : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = ope.SelectTable("select * from tb_Book", "tb_Book"); ;
        DataList1.DataBind();
    }

   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("BookDetail.aspx?id=" + e.CommandArgument.ToString());
    }
}