using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataBase db = new DataBase();
    Operation ope = new Operation();
    DataTable finaldt=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UID"] = "cj";
        string UserName = Session["UID"].ToString();
        string MemberID = db.RunProcReturn("select MemberID from tb_Member where UserName='" + UserName + "'");
     
   //   DataTable dt = ope.SelectTable("select  OrderID from tb_Order where MemberID='"+MemberID+"'","tb_Order").Tables["tb_Order"];

     
   //   finaldt.Columns.Add("BookID");
   //   finaldt.Columns.Add("Num");
   //   int i = 0;

   //foreach(DataRow dr in dt.Rows){
      
   //    DataTable dtDetail = ope.SelectTable("select BookID,Num from tb_Detail where OrderID='"+dt.Rows[i][0]+"'", "tb_Detail").Tables["tb_Detail"];
   //    if (dtDetail.Rows.Count == 0)
   //    {
   //        return;
   //    }
   //    else
   //    {
   //        foreach (DataRow drDetail in dtDetail.Rows)
   //        {
   //            finaldt.ImportRow(drDetail);
   //        }
   //        i++;
   //        Label1.Text =Convert.ToString( dtDetail.Rows.Count);
   //    }
   //}

        DataTable dtDetail = ope.SelectTable("select BookID,Num,TotalPrice from tb_Detail where MemberID="+MemberID, "tb_Detail").Tables["tb_Detail"];

        DataTable dtfinal = new DataTable();
       
        DataColumn column1 = new DataColumn("Pic");
        DataColumn column12 = new DataColumn("BookName");
        DataColumn columnl3 = new DataColumn("Num");
        DataColumn columnl4 = new DataColumn("TotalPrice");
        DataColumn columnl5 = new DataColumn("BookID");
        dtfinal.Columns.Add(column1);
        dtfinal.Columns.Add(column12);
        dtfinal.Columns.Add(columnl3);
        dtfinal.Columns.Add(columnl4);
        dtfinal.Columns.Add(columnl5);

        int i=0;
        foreach(DataRow dr in dtDetail.Rows){
            DataRow drfinal=dtfinal.NewRow();
            string BookID = dtDetail.Rows[i][0].ToString();
            DataTable dtBook = ope.SelectTable("select Pic,BookName from tb_Book where BookID=" + BookID, "tb_Book").Tables["tb_Book"];
            drfinal["Pic"]=dtBook.Rows[0][0];
            drfinal["BookName"]=dtBook.Rows[0][1];
            drfinal["BookID"]=dtDetail.Rows[i][0];
            drfinal["Num"]=dtDetail.Rows[i][1];
            drfinal["TotalPrice"]=dtDetail.Rows[i][2];
           
            dtfinal.Rows.Add(drfinal);
            i++;
        }
        dlhistory.DataSource = dtfinal;
        dlhistory.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //DataTable dt = ope.SelectTable("select BookID,Num from tb_Detail where OrderID=39","tb_Detail").Tables["tb_Detail"];
        //for (int i = 0; i < tb.Rows.Count; i++) { 
        
        //////}
        //GridView1.DataSource = dtfinal;
        //GridView1.DataBind();


    }

    protected void dlhistory_OnItemComand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("~/Visitor/BookDetail.aspx?id="+e.CommandArgument.ToString());
    }
}