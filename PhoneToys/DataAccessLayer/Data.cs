using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using Entities;

namespace DataAccessLayer
{
    public class Data
    {
        private SqlConnection con = new SqlConnection(@"Server=8d39074f-5e10-44d3-8873-a2d700fd349e.sqlserver.sequelizer.com;Database=db8d39074f5e1044d38873a2d700fd349e;User ID=dmicdnhhfwonwldo;Password=63wShho5KRp8faNbodMSvxyrcQWE3mEwJqxVPbj8qxByprmnnGqYVxnGCfPztQcy;");

        public void Register(User user)
        {
            string Query = @"insert into Member values(@Email, @PW, @Fname, @Lname, @Address, @Zip, @City, @Country)";

            try
            {

                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Email";
                param.Value = user.Email;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@PW";
                param2.Value = user.Password;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Fname";
                param3.Value = user.Fname;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Lname";
                param4.Value = user.Lname;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Address";
                param5.Value = user.Address;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Zip";
                param6.Value = user.ZipCode;
                cmd.Parameters.Add(param6);

                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@City";
                param7.Value = user.City;
                cmd.Parameters.Add(param7);

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@Country";
                param8.Value = user.Country;
                cmd.Parameters.Add(param8);

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
        }
    }
}
