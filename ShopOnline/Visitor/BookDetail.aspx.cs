using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class Visitor_BookDetail : System.Web.UI.Page
{
    Operation ope = new Operation();
    private string BookID;
    protected void Page_Load(object sender, EventArgs e)
    {

      //  getShopCart();
         BookID = Request.QueryString["id"];
        Bind();
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {

        //Hashtable hashCar = new Hashtable();         //新生成一个
        //hashCar.Add("9", 1); //添加一个商品
        //Session["ShopCart"] = hashCar;     //分配给用户
        //Response.Redirect("ShopCart.aspx");
    }
    protected void Bind() {
     
    string   strSql = "select * from tb_Book where BookID=" + BookID;
      
     DataTable dstable = ope.SelectTable(strSql, "tb_Book").Tables["tb_Book"];
        //drRow["No"] = i;
        //drRow["BookName"] = dstable.Rows[0][0].ToString();   //商品名称
        //drRow["price"] = dstable.Rows[0][1].ToString();      //商品名称
    pic.ImageUrl=dstable.Rows[0]["Pic"].ToString();
    labbookname.Text = dstable.Rows[0]["BookName"].ToString();
    labauthor.Text = dstable.Rows[0]["Author"].ToString();
    labprice.Text = dstable.Rows[0]["Price"].ToString();
        labsummary.Text=dstable.Rows[0]["BookIntroduce"].ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        AddShopCart();
        Response.Redirect(Request.Url.ToString()); 
    }

    public void AddShopCart()
    {
        //if (Session["UserName"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
        /*判断是否登录*/
        //   ST_check_Login();
        if (Session["UID"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {

            Hashtable hashCar;
            if (Session["ShopCart"] == null)
            {
                //如果用户没有分配购物车
                hashCar = new Hashtable();         //新生成一个
                hashCar.Add(BookID, 1); //添加一个商品
                Session["ShopCart"] = hashCar;     //分配给用户
            }
            else
            {
                //用户已经有购物车
                hashCar = (Hashtable)Session["ShopCart"];//得到购物车的hash表
                if (hashCar.Contains(BookID))//购物车中已有此商品，商品数量加1
                {
                    int count = Convert.ToInt32(hashCar[BookID].ToString());//得到该商品的数量
                    hashCar[BookID] = (count + 1);//商品数量加1
                }
                else
                    hashCar.Add(BookID, 1);//如果没有此商品，则新添加一个项
            }
           
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        AddShopCart();
        Response.Redirect("ShopCart.aspx");
    }
}