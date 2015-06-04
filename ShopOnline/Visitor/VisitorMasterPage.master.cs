using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Visitor_VisitorMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getShopCartAccount();
        if (Session["UID"] != null)
        {
            lbregister.Visible = false;
            lblogin.Text = "欢迎你，" + Session["UID"].ToString();

        }
    }
    protected void lblogin_Click(object sender, EventArgs e)
    {
        if (Session["UID"] == null)
        {

            Response.Redirect("login.aspx");
        }
        else {
            Response.Redirect("UserHomePage.aspx");
        
        }
    }
    protected void lbregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void lbshopcart_Click(object sender, EventArgs e)
    {
        if (Session["UID"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else {
            Response.Redirect("UserHomePage.aspx");
        
        }
    }
    protected void getShopCartAccount()
    {
      
        if (Session["ShopCart"] == null)
        {

            lbshopcart.Text = "0";
        }
        else
        {
            Hashtable HashCart = (Hashtable)Session["ShopCart"];
            lbshopcart.Text = Convert.ToString(HashCart.Count);
           
        }

    }
    protected void lbsearch_Click(object sender, EventArgs e)
    {
        if (tbsearch.Text.Trim().Equals(""))
        {

        }
        else {
         string BookName= tbsearch.Text.Trim();
         Response.Redirect("Classify.aspx?type=search&sign=common&words="+BookName);
        }
    }
    
    protected void lb1_Command(object sender, CommandEventArgs e)
    {
        tbsearch.Text = e.CommandArgument.ToString();
    }
}
