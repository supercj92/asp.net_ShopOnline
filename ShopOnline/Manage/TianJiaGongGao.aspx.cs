using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HouTai_TianJiaXinWen : System.Web.UI.Page
{
   
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Request.QueryString["id"] != null)
        {
            Button1.Visible = false;
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                DataSet ds = ope.cxGG("tb_News", id);
                foreach (DataRow dr in ds.Tables["tb_News"].Rows)
                {
                    TextBox1.Text = dr["Title"].ToString();
                    TextBox2.Text = dr["Substance"].ToString();
                }
            }
        }
        else {
            Button3.Visible = false;
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        ope.InsertInfo("tb_News",TextBox1.Text,TextBox2.Text.Trim(),DateTime.Now);
        Response.Write("<script>alert('公告添加成功');window.location.href='./ZhanShiGongGao.aspx'</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ZhanShiGongGao.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
      // string bt= this.TextBox1.Text;
        ope.GXGG("tb_News",TextBox1.Text,TextBox2.Text.Trim(),Request.QueryString["id"]);
       Response.Write("<script>alert('公告修改成功');window.location.href='./ZhanShiGongGao.aspx'</script>");
        
        //Label1.Text = this.TextBox1.Text;
    }
}