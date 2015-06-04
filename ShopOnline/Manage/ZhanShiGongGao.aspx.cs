using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouTai_ZhanShiGongGao : System.Web.UI.Page
{
    Operation ope = new Operation();

    protected void Page_Load(object sender, EventArgs e)
    {

        /*
        if (Session["admin"] == null)
            Response.Redirect("~/HouTai/login.aspx");
         */
        
        GridViewBind();
        /*
        GridView1.Columns[0].Visible = false;
        GridView1.DataKeyNames = new string[] { "ID" };
         */
    }

    protected void GridViewBind() {
        GridView1.DataSource = ope.cxGG("tb_News");
        GridView1.DataKeyNames = new string[] { "id"};
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("./TianJiaGongGao.aspx");
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
     
        //string id = GridView1.DataKeys[GridView1.SelectedIndex]["ID"].ToString();
        string id = GridView1.SelectedRow.Cells[0].Text;
        string url = "./TianJiaGongGao.aspx?";
        url = url + "id=" + id;
        Response.Redirect(url);
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
       
            string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
           ope.scGG("tb_News", id);
           
                Response.Write("<script>alert('删除成功');window.location.href='./ZhanShiGongGao.aspx'</script>");
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            ((LinkButton)(e.Row.Cells[5].Controls[0])).Attributes.Add("onclick", "return confirm('是否删除当前行数据？')");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewBind();
    }
}