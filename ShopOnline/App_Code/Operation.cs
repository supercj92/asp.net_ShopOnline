using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;

using System.Web.UI;
using System.Web.Configuration;

/// <summary>
/// Operation 网站业务流程类（封装所有业务方法）
/// </summary>
public class Operation
{
    public Operation()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    DataBase data = new DataBase();
    private SqlConnection conn;

    #region 登陆，注册

    public bool IsRegisted(string uid,string pwd) {
        Open();
        string mm;
        string sql = "select password from tb_admin where username='"+uid+"'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        try {
             mm = cmd.ExecuteScalar().ToString();
        }catch(Exception e){
            return false;
        }
       
        if (mm.Trim().Equals(pwd))
            return true;
        return false;
    }
    //普通用户登陆
    public bool IsRegistedMember(string uid, string pwd)
    {
        Open();
        string mm = "";
        string sql = "select password from tb_Member where username='" + uid + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        try { 
          mm = cmd.ExecuteScalar().ToString();
        }catch(Exception e){
            return false;
        }
       
        if (mm.Trim().Equals(pwd))
            return true;
        return false;
    }

    //判断用户名是否存在

    public bool IsRegisted(string uid) {
        string sql = "select * from tb_Member where username='"+uid+"'";
      DataSet ds=  data.RunProcReturn(sql,"tb_Member");
      if (ds == null) {
          return false;
      }
        return true;
    }

    #endregion

    #region  添加
    /// <summary>
    /// 添加供求信息
    /// </summary>
    /// <param name="type">信息类别</param>
    /// <param name="title">标题</param>
    /// <param name="info">内容</param>
    /// <param name="linkMan">联系人</param>
    /// <param name="tel">联系电话</param>
    /// 

    //插入新书

    public void InsertBook(string biaoming,string bclass,string bookname,string bookintroduce,string author,string price,int ispop,int isdiscount,string pic,DateTime time) {
        SqlParameter[] parms ={
            data.MakeInParam("@bclass",SqlDbType.VarChar,50,bclass),              
            data.MakeInParam("@bookname",SqlDbType.VarChar,50,bookname),              
            data.MakeInParam("@bookintroduce",SqlDbType.NText,1000,bookintroduce),             
            data.MakeInParam("@author",SqlDbType.VarChar,50,author),  
            data.MakeInParam("@price",SqlDbType.VarChar,50,price), 
            data.MakeInParam("@ispop",SqlDbType.Int,50,ispop), 
            data.MakeInParam("@isdiscount",SqlDbType.Int,50,isdiscount), 
            data.MakeInParam("@pic",SqlDbType.VarChar,200,pic), 
             data.MakeInParam("@Time",SqlDbType.DateTime,200,time), 
                              };
        int i = data.RunProc("INSERT INTO " + biaoming + " (class, bookname, bookintroduce,author,price,ispop,isdiscount,pic,time) VALUES (@bclass, @bookname,@bookintroduce,@author,@price,@ispop,@isdiscount,@pic,@time);select @@Identity", parms);
    }

    //会员注册
    public int InsertMember(string username,string pwd,string email,string sex,string nikename) {

        SqlParameter[] parms ={
                             data.MakeInParam("@username",SqlDbType.VarChar,50,username),
        data.MakeInParam("@pwd",SqlDbType.VarChar,50,pwd),
         data.MakeInParam("@email",SqlDbType.VarChar,50,email),
          data.MakeInParam("@sex",SqlDbType.VarChar,50,sex),
           data.MakeInParam("@nikename",SqlDbType.VarChar,50,nikename),
                             };
        int i = data.RunProc("insert into tb_Member (UserName,PassWord,Email,Sex,NikeName) values (@username,@pwd,@email,@sex,@nikename);select @@Identity",parms);
        return i;
    }

    //添加新管理员
    public int InsertAdmin(string username,string pwd, string realname,string email ) {
        SqlParameter[] parms ={
                             data.MakeInParam("@username",SqlDbType.VarChar,50,username),
        data.MakeInParam("@pwd",SqlDbType.VarChar,50,pwd),
         data.MakeInParam("@email",SqlDbType.VarChar,50,email),
          data.MakeInParam("@realname",SqlDbType.VarChar,50,realname),
        
                             };
        return data.RunProc("insert into tb_Admin (UserName,PassWord,Email,RealName) values(@username,@pwd,@email,@realname);select @@Identity",parms); ;
    }

    //添加新订单
    public int InsertOrder(DateTime OrderDate,string ReceiverName,string ReceiverPhone,string ReceiverAddress,string MemberID,string Remark,string ShipType,string ShipFee,string BTotalPrice) { 
    SqlParameter[] parms ={
            data.MakeInParam("@OrderDate",SqlDbType.DateTime,50,OrderDate),              
            data.MakeInParam("@ReceiverName",SqlDbType.VarChar,50,ReceiverName),              
            data.MakeInParam("@ReceiverPhone",SqlDbType.VarChar,1000,ReceiverPhone),             
            data.MakeInParam("@ReceiverAddress",SqlDbType.VarChar,50,ReceiverAddress),  
            data.MakeInParam("@MemberID",SqlDbType.VarChar,50,MemberID), 
            data.MakeInParam("@Remark",SqlDbType.VarChar,50,Remark), 
            data.MakeInParam("@ShipType",SqlDbType.VarChar,50,ShipType), 
            data.MakeInParam("@ShipFee",SqlDbType.VarChar,200,ShipFee), 
            data.MakeInParam("@BTotalPrice",SqlDbType.VarChar,50,BTotalPrice),
                              };
    int i = data.RunProc("INSERT INTO tb_Order (OrderDate,ReceiverName,ReceiverPhone,ReceiverAddress,MemberID,ReMark,ShipType,ShipFee,BTotalPrice) VALUES (@OrderDate,@ReceiverName,@ReceiverPhone,@ReceiverAddress,@MemberID,@ReMark,@ShipType,@ShipFee,@BTotalPrice);select @@Identity", parms);

    return i;
    }

    //添加订单明细
    public int InsertDetail(int BookID,int Num,int OrderID,int TotalPrice,int MemberID,DateTime Time) {
        SqlParameter[] parms ={
                           data.MakeInParam("@BookID",SqlDbType.Int,1000,BookID),
                           data.MakeInParam("@Num",SqlDbType.Int,100,Num),
                           data.MakeInParam("@OrderID",SqlDbType.Int,1000,OrderID),
                           data.MakeInParam("@TotalPrice",SqlDbType.Int,1000,TotalPrice),
                           data.MakeInParam("@MemberID",SqlDbType.Int,1000,MemberID),
                           data.MakeInParam("@Time",SqlDbType.DateTime,100,Time),
                           
                            };
        int i = data.RunProc("insert into tb_Detail (BookID,Num,OrderID,TotalPrice,MemberID,Time) values (@BookID,@Num,@OrderID,@TotalPrice,@MemberID,@Time);select @@Identity",parms);
        return i;
    }

    public void InsertInfo(string biaoming,string biaoti, string neirong,DateTime shijian)
    {
        SqlParameter[] parms ={ 
            data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
            data.MakeInParam("@neirong",SqlDbType.NText,10000,neirong),
            data.MakeInParam("@shijian",SqlDbType.DateTime,10,shijian),
            
        };
        int i = data.RunProcOriginal("INSERT INTO "+biaoming+" (Title, Substance, Time) VALUES (@biaoti, @neirong,@shijian)", parms);
    }


    public void InsertInfo(string biaoming, string biaoti, string neirong, DateTime shijian,string fenlei)
    {
        SqlParameter[] parms ={ 
            data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
            data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
            data.MakeInParam("@shijian",SqlDbType.DateTime,10,shijian),
            data.MakeInParam("@fenlei",SqlDbType.VarChar,10,fenlei),
                   };
        int i = data.RunProc("INSERT INTO " + biaoming + " (biaoti, neirong, shijian,fenlei) VALUES (@biaoti, @neirong,@shijian,@fenlei)", parms);
    }

    public void InsertInfo(string biaoming, string biaoti, string neirong, DateTime shijian, string fenlei,string zuozhe)
    {
        SqlParameter[] parms ={ 
            data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
            data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
            data.MakeInParam("@shijian",SqlDbType.DateTime,10,shijian),
            data.MakeInParam("@fenlei",SqlDbType.VarChar,10,fenlei),
             data.MakeInParam("@zuozhe",SqlDbType.VarChar,10,zuozhe),
                   };
        int i = data.RunProc("INSERT INTO " + biaoming + " (biaoti, neirong, shijian,fenlei,zuozhe) VALUES (@biaoti, @neirong,@shijian,@fenlei,@zuozhe)", parms);
    }

    public void InsertInfo(string biaoming, string neirong,int tiwenzhe,DateTime shijian)
    {
        SqlParameter[] parms ={ 
            
            data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
            data.MakeInParam("@shijian",SqlDbType.DateTime,10,shijian),
            data.MakeInParam("@tiwenzhe",SqlDbType.Int,100,tiwenzhe),
           
        };
        int i = data.RunProc("INSERT INTO " + biaoming + " ( neirong, shijian,tiwenzhe) VALUES ( @neirong,@shijian,@tiwenzhe)", parms);
    }
    public void InsertInfo(string biaoming, string neirong, DateTime shijian,string leixing,string huidazhe,int tiwenzhe)
    {
        SqlParameter[] parms ={ 
            
            data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
            data.MakeInParam("@shijian",SqlDbType.DateTime,10,shijian),
            data.MakeInParam("@leixing",SqlDbType.Int,10,leixing),
            data.MakeInParam("@huidazhe",SqlDbType.Int,10,huidazhe),
            data.MakeInParam("@tiwenzhe",SqlDbType.Int,100,tiwenzhe),
           
        };
        int i = data.RunProc("INSERT INTO " + biaoming + " ( neirong, shijian,leixing,huidazhe,tiwenzhe) VALUES ( @neirong,@shijian,@leixing,@huidazhe,@tiwenzhe)", parms);
    }

    #endregion

    #region 更新


    //更新用户个人信息

    public void UpdateUserInfo(string UserName,string Pwd,string NikeName,string Email,string Sex,string MemberID) {

        SqlParameter[] parms = { 
                               data.MakeInParam("@UserName",SqlDbType.VarChar,50,UserName),
                                data.MakeInParam("@Pwd",SqlDbType.VarChar,50,Pwd),
                                 data.MakeInParam("@NikeName",SqlDbType.VarChar,50,NikeName),
                                  data.MakeInParam("@Email",SqlDbType.VarChar,50,Email),
                                   data.MakeInParam("@Sex",SqlDbType.VarChar,50,Sex),
                                   data.MakeInParam("@MemberID",SqlDbType.VarChar,50,MemberID),
                               };
        data.RunProcOriginal("update tb_Member set UserName=@UserName,PassWord=@Pwd,NikeName=@NikeName,Email=@Email,Sex=@Sex where MemberID="+MemberID,parms);
    }

    public void GXGG(string biaoming, string biaoti,string neirong,string id) {
        
        SqlParameter[] parms ={
                             data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
                             data.MakeInParam("@neirong",SqlDbType.NText,1000,neirong),
                             data.MakeInParam("@id",SqlDbType.VarChar,50,id)
                             };
       // string str = "update gonggao set biaoti='"+biaoti+"'"+",neirong='"+neirong+"'"+" where id="+Convert.ToInt32(id);
        data.RunProcOriginal("update " + biaoming + " set Title=@biaoti,Substance=@neirong where id=@id", parms);
     }
    public void GXZX(string biaoming, string biaoti, string neirong, string id,string fenlei)
    {
        SqlParameter[] parms ={
                             data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
                             data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
                             data.MakeInParam("@id",SqlDbType.VarChar,50,id),
                             data.MakeInParam("@fenlei",SqlDbType.VarChar,10,fenlei)
                             };
        // string str = "update gonggao set biaoti='"+biaoti+"'"+",neirong='"+neirong+"'"+" where id="+Convert.ToInt32(id);
        data.RunProc("update " + biaoming + " set biaoti=@biaoti,neirong=@neirong,fenlei=@fenlei where id=@id", parms);
    }
    public void GXZX(string biaoming, string biaoti, string neirong, string id, string fenlei,string zuozhe)
    {
        SqlParameter[] parms ={
                             data.MakeInParam("@biaoti",SqlDbType.VarChar,50,biaoti),
                             data.MakeInParam("@neirong",SqlDbType.VarChar,50,neirong),
                             data.MakeInParam("@id",SqlDbType.VarChar,50,id),
                             data.MakeInParam("@fenlei",SqlDbType.VarChar,10,fenlei),
                              data.MakeInParam("@zuozhe",SqlDbType.VarChar,10,zuozhe)
                             };
        // string str = "update gonggao set biaoti='"+biaoti+"'"+",neirong='"+neirong+"'"+" where id="+Convert.ToInt32(id);
        data.RunProc("update " + biaoming + " set biaoti=@biaoti,neirong=@neirong,fenlei=@fenlei,zuozhe=@zuozhe where id=@id", parms);
    }

    //发货
    public void Update(string id) {
        string sql = "update tb_Order set IsSend=1 where Orderid="+id;
        data.OriginalRunProc(sql);
      
    }
    #endregion

    #region   查询
    public DataSet cxDingDan(string biaoming,string bianhao) {
        string str = "select * from "+biaoming +" where bianhao="+bianhao;
       return  data.RunProcReturn(str,biaoming);
    }
    public DataSet cxDingDan(string biaoming) {
        string str = "select * from " + biaoming;
        return data.RunProcReturn(str,biaoming);
    }
    //传入sql语句和表名，返回结果集
    public DataSet SelectTable(string str,string biaoming) {
        return data.RunProcReturn(str,biaoming);
    
    }
    public DataSet cxGG(string biaoming)
    {
        string str = "select * from " + biaoming;
        return data.RunProcReturn(str, biaoming);
    }
    public DataSet cxGG(string biaoming,string id) {
        string str = "select * from " + biaoming + " where id="+id;
        return data.RunProcReturn(str,biaoming);
    }
    public DataSet SelectInfo(string top,string biaoming) {

        string str = "select top("+top+") * from " + biaoming + " where shenhe=1 and sfhuida=1" ;
        return data.RunProcReturn(str,biaoming);
    
    }
    public DataSet SelectInfoZX(string top,string biaoming) {
        string str = "select top("+top+") * from " +biaoming+" where shenhe=1 and sfhuida=0";
        return data.RunProcReturn(str, biaoming);
    
    }
    public DataSet SelectInfoKJZX(string fenlei,string biaoming) {

        string str = "select * from "+biaoming+" where fenlei='"+fenlei+"'";
        return data.RunProcReturn(str,biaoming);
    }
    public string getIDbyYX(string bm,string yx) {
        string str = "select id from "+bm+" where youxiang='"+yx+"'";

        return data.RunProcReturn(str);
    }
    public DataSet SelectTop(string top,string bm) {
        string str = "select top("+top+") * from "+bm;
        
        return data.RunProcReturn(str,bm);
    }
    
    #endregion

    #region 删除记录
    public int scHang(string biaoming,string bianhao) {
        string str = "delete from " + biaoming + " where bianhao=" + bianhao;
       return data.RunProc(str);
    }
    public void scGG(string biaoming,string id) {
        string str = "delete from " + biaoming + " where id=" + id;
         data.OriginalRunProc(str);
    
    }
    public void DeleteTable(string sql) {

         data.OriginalRunProc(sql);
    
    }
    #endregion

    #region 查询商品表，返回字符串
    public string cxShangPinzd(string zd, string id)
    {
       
        Open();
        string str = "select "+zd+" from shangpin where id="+id;
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@bh1", id);
        string ziduan;
        try
        {
            ziduan = cmd.ExecuteScalar().ToString();
        }
        catch (Exception e) { ziduan = "空"; }
        Close();
        return ziduan;
    }
    #endregion

    #region 查询商品表，返回单价*数量的值
    public int cxShangPin(string shangpinid, string shangpinshuliang)
    {
        
        Open();
        SqlCommand cmd = new SqlCommand("select jiage from shangpin where id=@id", conn);
        cmd.Parameters.AddWithValue("@id", shangpinid);
        int danjia;
        try
        {
             danjia = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        }
        catch (Exception e) { danjia = 0; }
            int shuliang = Convert.ToInt32(shangpinshuliang);
            int jiage = danjia * shuliang;
        
      
        Close();
        return jiage;
    }
    #endregion

    #region 打开连接
    private void Open()
    {
        // 打开数据库连接
        if (conn == null)
        {
            string str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(str);
        }
        if (conn.State == System.Data.ConnectionState.Closed)
            conn.Open();

    }
    #endregion

    #region 关闭连接
    public void Close()
    {
        if (conn != null)
            conn.Close();
    }
    #endregion
}
