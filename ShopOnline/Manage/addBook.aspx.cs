using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouTai_addBook : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = ope.SelectTable("select classname from tb_class", "tb_Class").Tables["tb_Class"].DefaultView;
            DropDownList1.DataTextField = "classname";
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      int  pop=0;
        int disc=0;
        if(ispop.Checked==true)
        {
        pop=1;
        }
        if(isdisc.Checked==true){
        disc=1;
        }
       string pic= initpic();
        ope.InsertBook("tb_book",DropDownList1.Text,tbbookname.Text,tbsummary.Text.Trim(),
          tbauthor.Text,tbprice.Text,pop,disc,pic,DateTime.Now);
        Response.Write("<script>alert('商品添加成功');window.location.href='./Goods.aspx'</script>");
    }
    protected string initpic() {

        string pic="pic";
        bool fileOK = false;
        string path = Server.MapPath("~/img/");
        if (FileUpload1.HasFile)
        {
            String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            String[] allowedExtensions = { ".gif", ".png", ".bmp", ".jpg" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
        }
        if (fileOK)
        {
            try
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                pic = "~/img/" + FileUpload1.FileName;
                /*
                LabMessage1.Text = "文件上传成功.";
                LabMessage2.Text = "<b>原文件路径：</b>" + FileUpload1.PostedFile.FileName + "<br />" +
                              "<b>文件大小：</b>" + FileUpload1.PostedFile.ContentLength + "字节<br />" +
                              "<b>文件类型：</b>" + FileUpload1.PostedFile.ContentType + "<br />";
                 */
            }
            catch (Exception ex)
            {
               // LabMessage1.Text = "文件上传不成功.";
            }
        }
        else
        {
           // LabMessage1.Text = "只能够上传图片文件.";
        }
        return pic;
    }
}