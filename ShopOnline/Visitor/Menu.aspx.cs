using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Visitor_Menu : System.Web.UI.Page
{
    int ParentID = 0;
    Operation ope = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        FillPMenu();
    }
    protected DataSet getMenuDS()
    {
   return ope.SelectTable("select * from tb_class","tb_class");

    }


    protected void FillPMenu() {
        DataSet DSMenu = getMenuDS();
        DataRow[] rows = DSMenu.Tables[0].Select("pid=" + ParentID);
        if (rows.Length > 0)
        {
            for (int i = 0; i < rows.Length; i++)
            {
                MenuItem pNode = new MenuItem();
                pNode.Value = rows[i]["classname"].ToString();
                pNode.Text = rows[i]["classname"].ToString();
                /*
                pNode.NavigateUrl = rows[i]["url"].ToString();
                pNode.Enabled = true;
                pNode.Target = rows[i]["mtarget"].ToString();
                 */
                Menu1.Items.Add(pNode);
                int pid = Convert.ToInt32(rows[i]["classid"]);
                this.FillMenu(pNode, pid);
            }
        }
    
    }
    /// <summary>
    /// 递归添加菜单条目
    /// </summary>
    /// <param name="pNode">父级条目</param>
    /// <param name="pid">父级条目的ID</param>
    protected void FillMenu(MenuItem pNode, int pid)
    {
        DataSet DSMenu = getMenuDS();
        DataRow[] rows = DSMenu.Tables[0].Select("pid=" + pid );
        if (rows.Length > 0)
        {
            for (int i = 0; i < rows.Length; i++)
            {
                MenuItem cNode = new MenuItem();
                cNode.Value = rows[i]["classname"].ToString();
                cNode.Text = rows[i]["classname"].ToString();
                //cNode.NavigateUrl = rows[i]["url"].ToString();
                //cNode.Enabled = true;
                //cNode.Target = rows[i]["mtarget"].ToString();
                pNode.ChildItems.Add(cNode);
                pid = Convert.ToInt32(rows[i]["classid"]);
                FillMenu(cNode, pid);
            }
        }
    }
}