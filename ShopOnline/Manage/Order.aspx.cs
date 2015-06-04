using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouTai_Order : System.Web.UI.Page
{
    Operation ope = new Operation();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "select * from tb_order ";
            Bind(sql);
        }
       
      //  Bind("select * from tb_order ");
    }
    public void Bind(string sql) {

        GridView1.DataSource = ope.SelectTable(sql,"tb_Order");
        GridView1.DataBind();
    
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        string sql2 = "";
        int sign = 0;
       string selected= DropDownList1.Text;
        switch(selected){
            case "所有订单": sql2 = ""; break;
            case "未发货": sql2 = " where issend=0";sign=1 ; break;
            case "已确认收货": sql2 = " where isconfirm=1"; break;
            case "已完成订单": sql2 = " where isend=1"; break;
            
        };
         
        string sql = "select * from tb_order "+sql2;
        if (sign == 1)
        {

            GridView2.DataSource = ope.SelectTable(sql, "tb_Order");
            GridView2.DataBind();
            Bind("select * from tb_order where orderid=0");
        }
        else
        {
            Bind(sql);
            GridView2.DataSource = ope.SelectTable("select * from tb_order where orderid=0", "tb_Order");
            GridView2.DataBind();
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       string id= GridView2.SelectedRow.Cells[0].Text;
        ope.Update(id);
        Response.Write("<script>alert('已经发货');window.location.href='./Order.aspx'</script>");
    }
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //   // string id = GridView1.SelectedRow.Cells[0].Text;
    //    string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
    //    string sql = "delete from tb_Order where OrderID="+id;
    //    ope.DeleteTable(sql);
    //    Bind("select * from tb_Order");
    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
         string id = GridView1.SelectedRow.Cells[0].Text;
        string sql = "delete from tb_Order where OrderID=" + id;
        ope.DeleteTable(sql);
        Bind("select * from tb_Order");
    }
}