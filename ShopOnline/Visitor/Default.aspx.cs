using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QianTai_Default : System.Web.UI.Page
{
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        dlDiscount.DataSource = ope.SelectTable("select * from tb_Book","tb_Book"); ;
        dlDiscount.DataBind();
    }
}