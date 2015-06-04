using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Classify : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string url="";
        string sign=Request.QueryString["sign"];
        if (sign.Equals("common")) {
            imgbanner.Visible = false;
        }
        switch(sign){
            case "31": url = "TuPian/20141012231.jpg"; break;
            case "32": url = "TuPian/20141012232.jpg"; break;
            case "33": url = "TuPian/20141012233.jpg"; break;
        }

        imgbanner.ImageUrl = url;

        string sql="";
      string type=  Request.QueryString["type"];
      if (type.Equals("1")) {
          sql = sql = "select   * from tb_Book where class='儿童书籍' order by time desc";
      }
      else if (type.Equals("2")) {

          sql = "select   * from tb_Book where class='教辅资料' order by time desc";

      }else if(type.Equals("3")){
          sql = "select   * from tb_Book where class='文学' order by time desc";

      }else if(type.Equals("4")){
          sql = "select   * from tb_Book where class='当代小说' order by time desc";
      
      }else if(type.Equals("5")){
          sql = "select   * from tb_Book where IsNew=1 order by time desc";
      
      }else if(type.Equals("6")){
          sql = "select top 4 * from tb_Book where IsCJ=1 order by time desc";
      }
      else if (type.Equals("7"))
      {
          sql = "select top 12 * from tb_Book  order by time desc";
      }
      else if(type.Equals("8")){
          sql = "select  * from tb_Book where class='计算机技术' order by time desc";
      }else if(type.Equals("9")){
          sql = "select * from tb_Book where class='哲学' order by time desc";

      }
      else if (type.Equals("10")) {
          sql = "select * from tb_Book where class='散文' order by time desc";
      
      }else if(type.Equals("11")){
          sql = "select * from tb_Book where class='戏剧' order by time desc";
      
      }else if(type.Equals("search")){
          string BookName = Request.QueryString["words"].ToString();
          sql = "select * from tb_Book where BookName like '%"+BookName+"%'";
      
      }


        dllite.DataSource = ope.SelectTable(sql, "tb_Book");
        dllite.DataBind();
        DataList1.DataSource = ope.SelectTable("select top 4 * from tb_Book where IsCJ=1 order by time desc", "tb_Book");
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("BookDetail.aspx?id="+e.CommandArgument);
    }
}