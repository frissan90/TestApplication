﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using Entities;
using System.Web;

namespace DataAccessLayer
{
    public class Data
    {
        private SqlConnection con = new SqlConnection(@"Server=8d39074f-5e10-44d3-8873-a2d700fd349e.sqlserver.sequelizer.com;Database=db8d39074f5e1044d38873a2d700fd349e;User ID=dmicdnhhfwonwldo;Password=63wShho5KRp8faNbodMSvxyrcQWE3mEwJqxVPbj8qxByprmnnGqYVxnGCfPztQcy;");



        public void Register(Editor editor)
        {
            string Query = @"insert into Redaktor values(@Uname, @PW, @Email, @Fname, @Lname)";

            try
            {

                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@Uname";
                param9.Value = editor.Uname;
                cmd.Parameters.Add(param9);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Email";
                param.Value = editor.Email;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@PW";
                param2.Value = editor.Password;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Fname";
                param3.Value = editor.Fname;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Lname";
                param4.Value = editor.Lname;
                cmd.Parameters.Add(param4);

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

        /// <summary>
        /// Create a new account for a new user
        /// </summary>
        /// <param name="user">Info about the new user</param>
        public void Register(User user)
        {
            string Query = @"insert into Member values(@Uname, @Email, @PW, null, null, null, null, null, null)";

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

                //SqlParameter param3 = new SqlParameter();
                //param3.ParameterName = "@Fname";
                //param3.Value = user.Fname;
                //cmd.Parameters.Add(param3);

                //SqlParameter param4 = new SqlParameter();
                //param4.ParameterName = "@Lname";
                //param4.Value = user.Lname;
                //cmd.Parameters.Add(param4);

                //SqlParameter param5 = new SqlParameter();
                //param5.ParameterName = "@Address";
                //param5.Value = user.Address;
                //cmd.Parameters.Add(param5);

                //SqlParameter param6 = new SqlParameter();
                //param6.ParameterName = "@Zip";
                //param6.Value = user.ZipCode;
                //cmd.Parameters.Add(param6);

                //SqlParameter param7 = new SqlParameter();
                //param7.ParameterName = "@City";
                //param7.Value = user.City;
                //cmd.Parameters.Add(param7);

                //SqlParameter param8 = new SqlParameter();
                //param8.ParameterName = "@Country";
                //param8.Value = user.Country;
                //cmd.Parameters.Add(param8);

                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@Uname";
                param9.Value = user.Uname;
                cmd.Parameters.Add(param9);

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

        /// <summary>
        /// Authenticates a user 
        /// </summary>
        /// <param name="Email">Email inserted by the user</param>
        /// <param name="Password">Password inserted by the user</param>
        /// <returns>Returns the result</returns>
        public bool authenticateUser(string Username, string Password)
        {
            string Query = @"select count(*) from Member where Username = @Username and Password = @PW";

            bool result = false;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Username";
                param.Value = Username;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@PW";
                param2.Value = Password;
                cmd.Parameters.Add(param2);

                if ((int)cmd.ExecuteScalar() > 0)
                {
                    result = true;
                }
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

            return result;
        }

        /// <summary>
        /// Authenticates an Admin
        /// </summary>
        /// <param name="Email">Email inserted by the user</param>
        /// <param name="Password">Password inserted by the user</param>
        /// <returns>Returns the result</returns>
        public bool authenticateAdmin(string Username, string Password)
        {
            string Query = @"select count(*) from Admin where Username = @Username and Password = @PW";

            bool result = false;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Username";
                param.Value = Username;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@PW";
                param2.Value = Password;
                cmd.Parameters.Add(param2);

                if ((int)cmd.ExecuteScalar() > 0)
                {
                    result = true;
                }
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

            return result;
        }



        public void addSaga(Saga sagan)
        {
            string Query = @"insert into Saga values(@Namn, @Beskrivning, @Data, @Langd, @Pris, GETDATE(), @UpplagdAv, 0, @Bild)";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Namn";
                param.Value = sagan.Namn;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Beskrivning";
                param2.Value = sagan.Beskrivning;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Data";
                param3.Value = sagan.Data;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Langd";
                param4.Value = sagan.Langd;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Pris";
                param5.Value = sagan.Pris;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@UpplagdAv";
                param6.Value = sagan.Redaktor;
                cmd.Parameters.Add(param6);

                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Bild";
                param7.Value = sagan.bild;
                cmd.Parameters.Add(param7);

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

        public List<Saga> getSaga()
        {
            List<Saga> sagor = new List<Saga>();

            SqlDataReader reader = null;

            string Query = @"select * from Saga";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Saga sagan = new Saga();

                    sagan.Namn = (string)reader["Namn"];
                    sagan.Langd = (string)reader["Langd"];
                    sagan.Pris = (int)reader["Pris"];
                    sagan.Beskrivning = (string)reader["Beskrivning"];
                    sagan.bild = (byte[])reader["Bild"];

                    sagor.Add(sagan);
                }
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
                if (reader != null)
                {
                    reader.Close();
                }
            }

            return sagor;

        }

        /// <summary>
        /// Authenticates an Editor
        /// </summary>
        /// <param name="Email">Email inserted by the user</param>
        /// <param name="Password">Password inserted by the user</param>
        /// <returns>Returns the result</returns>
        public bool authenticateEditor(string Username, string Password)
        {
            string Query = @"select count(*) from Redaktor where Username = @Username and Password = @PW";

            bool result = false;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Username";
                param.Value = Username;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@PW";
                param2.Value = Password;
                cmd.Parameters.Add(param2);

                if ((int)cmd.ExecuteScalar() > 0)
                {
                    result = true;
                }
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

            return result;
        }

        public void removeSaga(string Namn)
        {
            string Query = @"delete from Saga where Namn = @Namn";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Namn";
                param.Value = Namn;
                cmd.Parameters.Add(param);

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

        public List<Saga> getSagorByUser(string Username)
        {
            List<Saga> sagorna = new List<Saga>();

            SqlDataReader reader = null;

            string Query = @"Select * from Saga join SagorMedlem on SagorMedlem.Member = Member.Username where SagorMedlem.Member = @User";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@User";
                param.Value = Username;
                cmd.Parameters.Add(param);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Saga sagan = new Saga();

                    sagan.Namn = (string)reader["Namn"];
                    sagan.Langd = (string)reader["Langd"];
                    sagan.Beskrivning = (string)reader["Beskrivning"];

                    sagorna.Add(sagan);
                }
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
                if (reader != null)
                {
                    reader.Close();
                }
            }
            return sagorna;
        }

        public void kopSagor(string currentMember, List<Varukorgen> varor)
        {

            string Query = "insert into SagorMedlem values(@Medlem, @Saga)";

            try
            {
                con.Open();

                for (int i = 0; i < varor.Count; i++)
                {
                    SqlCommand cmd = new SqlCommand(Query, con);

                    SqlParameter param = new SqlParameter();
                    param.ParameterName = "@Medlem";
                    param.Value = currentMember;
                    cmd.Parameters.Add(param);

                    SqlParameter param2 = new SqlParameter();
                    param2.ParameterName = "@Saga";
                    param2.Value = varor[i].Saga;
                    cmd.Parameters.Add(param2);

                    cmd.ExecuteNonQuery();
                }
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

        public byte[] getSagaData(string sagoNamn)
        {
            string Query = @"Select Data from Saga where Namn = @Saga";

            byte[] Data = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Saga";
                param.Value = sagoNamn;
                cmd.Parameters.Add(param);

                Data = (byte[])cmd.ExecuteScalar();
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

            return Data;
        }

        public Saga geteditSaga(string saga)
        {
            String Query = @"Select * from Saga where Namn = @Saga";

            SqlDataReader rdr = null;

            Saga saga2 = new Saga();

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter pmr = new SqlParameter();

                pmr.ParameterName = "@Saga";

                pmr.Value = saga;

                cmd.Parameters.Add(pmr);

                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    saga2.Namn = (string)rdr["Namn"];

                    saga2.Beskrivning = (string)rdr["Beskrivning"];

                    saga2.Pris = (int)rdr["Pris"];

                    saga2.bild = (byte[])rdr["Bild"];

                }



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
            return saga2;
        }
        public void editSaga(string Namn, Saga saga)
        {
            String query = "Update Saga set Namn = @Namn, Beskrivning = @Beskrivning, Pris = @Pris, Bild = @Bild where Namn = @Namnet";


            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);

                SqlParameter pmr = new SqlParameter();

                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Namn";
                param.Value = saga.Namn;
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Beskrivning";
                param2.Value = saga.Beskrivning;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Pris";
                param3.Value = saga.Pris;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Bild";
                param4.Value = saga.bild;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Namnet";
                param5.Value = saga.Namn;
                cmd.Parameters.Add(param5);

                cmd.ExecuteNonQuery();

            }

            catch
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

