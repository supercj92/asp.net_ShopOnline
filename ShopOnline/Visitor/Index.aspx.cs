using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Visitor_Index : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {


        DataList1.DataSource = ope.SelectTable("select top 4 * from tb_Book where ispop=1 order by Time desc", "tb_Book");
        DataList1.DataBind();
        DataList2.DataSource = ope.SelectTable("select top 4 * from tb_Book where isdiscount=1 order by Time desc", "tb_Book");
        DataList2.DataBind();
        dllite.DataSource = ope.SelectTable("select top 8 * from tb_Book where class='文学' order by Time desc", "tb_Book");
        dllite.DataBind();
        dlcomputer.DataSource = ope.SelectTable("select top 8 * from tb_Book where class='计算机技术' order by Time desc", "tb_Book");
        dlcomputer.DataBind();
        dlphil.DataSource = ope.SelectTable("select top 8 * from tb_Book where class='哲学' order by Time desc", "tb_Book");
        dlphil.DataBind();
        dlnews.DataSource = ope.SelectTable("select top 3 * from tb_News order by Time desc","tb_News");
        dlnews.DataBind();
    }
   

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("BookDetail.aspx?id=" + e.CommandArgument.ToString());
    }
}