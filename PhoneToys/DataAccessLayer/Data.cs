using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using Entities;
using System.Web;
using System.ComponentModel;
using System.Drawing;

namespace DataAccessLayer
{
    public class Data
    {
        private SqlConnection con = new SqlConnection(@"Server=8d39074f-5e10-44d3-8873-a2d700fd349e.sqlserver.sequelizer.com;Database=db8d39074f5e1044d38873a2d700fd349e;User ID=dmicdnhhfwonwldo;Password=63wShho5KRp8faNbodMSvxyrcQWE3mEwJqxVPbj8qxByprmnnGqYVxnGCfPztQcy;");
        

        /// <summary>
        /// Registrerar en ny redaktör
        /// </summary>
        /// <param name="editor">Info om den nya Redaktören</param>
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
        /// Registrerar en ny användare
        /// </summary>
        /// <param name="user">Info om den nya medlemmen</param>
        public void Register(User user)
        {
            string Query = @"insert into Member values(@Uname, null, @PW, null, null, null, null, null, null, @Bamse)";

            try
            {

                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                //SqlParameter param = new SqlParameter();
                //param.ParameterName = "@Email";
                //param.Value = user.Email;
                //cmd.Parameters.Add(param);

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

                SqlParameter param10 = new SqlParameter("@Bamse", user.Bamse);
                cmd.Parameters.Add(param10);

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
        /// Verifierar en medlemms inloggningsuppgifter
        /// </summary>
        /// <param name="Email">Den inmatade mailadressen</param>
        /// <param name="Password">Det inmatade lösenordet</param>
        /// <returns>Resultatet</returns>
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
        /// Verifierar en Admins inloggningsuppgifter
        /// </summary>
        /// <param name="Email">Den inmatade mailadressen</param>
        /// <param name="Password">Det inmatade lösenordet</param>
        /// <returns>Resultatet</returns>
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

        /// <summary>
        /// Lägger till en ny saga
        /// </summary>
        /// <param name="sagan">Info om den nya sagan</param>
        public void addSaga(Saga sagan)
        {
            string Query = @"insert into Saga values(@Namn, @Beskrivning, @Data, @Langd, @Pris, GETDATE(), 0, @Bild)";

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

                //SqlParameter param6 = new SqlParameter();
                //param6.ParameterName = "@UpplagdAv";
                //param6.Value = sagan.Redaktor;
                //cmd.Parameters.Add(param6);

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

        /// <summary>
        /// Hämtar alla sagor
        /// </summary>
        /// <returns>Lista med alla sagor</returns>
        public List<Saga> getSaga()
        {
            List<Saga> Sagor = new List<Saga>();

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

                    Sagor.Add(sagan);
                }

                for (int i = 0; i < Sagor.Count; i++)
                {
                    TypeConverter converter = TypeDescriptor.GetConverter(typeof(Bitmap));
                    Bitmap bild = (Bitmap)converter.ConvertFrom(Sagor[i].bild);
                    string imgString = Convert.ToBase64String(Sagor[i].bild);
                    Sagor[i].bilden = String.Format("data:image/Bmp;base64,{0}\"", imgString);
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

            return Sagor;

        }

        /// <summary>
        /// Verifierar en Redaktörs inloggningsuppgifter
        /// </summary>
        /// <param name="Email">Den inmatade mailadressen</param>
        /// <param name="Password">Det inmatade lösenordet</param>
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

        /// <summary>
        /// Tar bort en saga
        /// </summary>
        /// <param name="Namn">Namnet på sagan som skall tas bort</param>
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

        /// <summary>
        /// Hämtar alla sagor som en användare har köpt
        /// </summary>
        /// <param name="Username">Användarens användarnamn</param>
        /// <returns>Lista med alla sagor</returns>
        public List<Saga> getSagorByUser(string Username)
        {
            List<Saga> sagorna = new List<Saga>();

            SqlDataReader reader = null;

            string Query = @"Select * from Saga join SagorMedlem on SagorMedlem.Saga = Saga.Namn where SagorMedlem.Member = @User";

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
                    sagan.bild = (byte[])reader["Bild"];

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

        /// <summary>
        /// Slutför ett köp av sagor
        /// </summary>
        /// <param name="currentMember">Användaren som köpt sagorna</param>
        /// <param name="varor">Lista med sagorna som har köpts</param>
        public void kopSagor(string currentMember, List<Varukorgen> varor)
        {

            string Query = @"insert into SagorMedlem values(@Medlem, @Saga)";

            string Query2 = @"update Saga set Nedladdningar = (Nedladdningar + 1) where Namn = @Saga";

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
                for (int i = 0; i < varor.Count; i++)
                {
                    SqlCommand cmd = new SqlCommand(Query2, con);

                    SqlParameter param = new SqlParameter("@Saga", varor[i].Saga);
                    cmd.Parameters.Add(param);

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


        /// <summary>
        /// Hämtar en saga i binär form
        /// </summary>
        /// <param name="sagoNamn">Namnet på sagan som skall hämtas</param>
        /// <returns>Sagan</returns>
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


        /// <summary>
        /// Hämtar info om en specifik saga
        /// </summary>
        /// <param name="saga">Namnet på sagan</param>
        /// <returns>Info om Sagan</returns>
        
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

        /// <summary>
        /// Redigerar en saga
        /// </summary>
        /// <param name="Namn">Namnet på sagan som skall redigeras</param>
        /// <param name="saga">Info om sagan</param>
        public void editSaga(string Namn, Saga saga)
        {
            String query = "Update Saga set Namn = @Namn, Beskrivning = @Beskrivning, Pris = @Pris where Namn = @Namnet";


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

                //SqlParameter param4 = new SqlParameter();
                //param4.ParameterName = "@Bild";
                //param4.Value = saga.bild;
                //cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Namnet";
                param5.Value = Namn;
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


        /// <summary>
        /// Hämtar info om en specifik bamse
        /// </summary>
        /// <param name="BamseID">BamseIDt</param>
        /// <returns>Info om Bamsen</returns>
        public Bamse getBamseInfo(string BamseID)
        {
            Bamse bamsen = new Bamse();

            string Query = @"select * from Bamse where BamseID = @BamseID";

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@BamseID", BamseID);
                cmd.Parameters.Add(param);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    bamsen.BamseId = (string)reader["BamseID"];
                    bamsen.DeviceID = (string)reader["DeviceID"];
                    bamsen.Token = (string)reader["Token"];
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

            return bamsen;
        }

        /// <summary>
        /// Ger nya medlemmar tre gratis sagor
        /// </summary>
        /// <returns>Sagor</returns>
        public List<Saga> gratisSagor()
        {
            String Query = @"Select top 3 Namn from Saga";

            List<Saga> sagor = new List<Saga>();

            SqlDataReader minReader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                minReader = cmd.ExecuteReader();

                while (minReader.Read())
                {
                    Saga s = new Saga();
                    s.Namn = (string)minReader["Namn"];

                    sagor.Add(s);
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
                if (minReader != null)
                {
                    minReader.Close();
                }
            }
            return sagor;
        }

        public void gratisSagor(string Username)
        {
            string Query = @"insert into Sagormedlem values(@User, @Saga)";

            List<Saga> sagor = gratisSagor();

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@User", Username);
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Saga";
                cmd.Parameters.Add(param2);

                foreach (Saga s in sagor)
                {
                    param2.Value = s.Namn;
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

        public List<Editor> getEditors()
        {
            string Query = @"select * from Redaktor";

            List<Editor> redaktorer = new List<Editor>();

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Editor ed = new Editor();

                    ed.Uname = (string)reader["Username"];
                    ed.Email = (string)reader["Email"];
                    ed.Fname = (string)reader["Fname"];
                    ed.Lname = (string)reader["Lname"];

                    redaktorer.Add(ed);
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

            return redaktorer;
        }

        public void removeEditor(string editor)
        {
            string Query = @"delete from Redaktor where Username = @Uname";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@Uname", editor);
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

        public void editEditor(string editorn, Editor editor)
        {
            string Query = @"Update Redaktor set Username = @Uname, Fname = @Fname, Lname = @Lname, Email = @Email where Username = @User";

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@Uname", editor.Uname);
                cmd.Parameters.Add(param);

                SqlParameter param2 = new SqlParameter("@Fname", editor.Fname);
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter("@Lname", editor.Lname);
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter("@Email", editor.Email);
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter("@User", editorn);
                cmd.Parameters.Add(param5);

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
        /// Hämtar namnet på sagorna som en specifik användare har köpt
        /// </summary>
        /// <param name="User"></param>
        /// <returns></returns>
        public List<string> getSagaNamnByUser(string User)
        {
            string Query = @"Select Namn from saga join SagorMedlem on SagorMedlem.Saga = Saga.Namn join Member on Member.Username = SagorMedlem.Member where Member.Username = @User";

            List<string> sagor = new List<string>();

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@User", User);
                cmd.Parameters.Add(param);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string Sagan = (string)reader["Namn"];

                    sagor.Add(Sagan);
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
        /// Hämtar de 5 mest köpta sagorna
        /// </summary>
        /// <returns>5 Sagor</returns>
        public List<Saga> getTop5Sagor()
        {
            string Query = @"select top 5 * from saga where Nedladdningar in (select top 5 Nedladdningar from Saga) order by nedladdningar desc";

            List<Saga> sagor = new List<Saga>();

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Saga sagan = new Saga();

                    sagan.Namn = (string)reader["Namn"];
                    sagan.Pris = (int)reader["Pris"];
                    sagan.Langd = (string)reader["Langd"];

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
        /// Hämtar de 5 senast uppladdade sagorna
        /// </summary>
        /// <returns>5 Sagor</returns>
        public List<Saga> getLatestSaga()
        {
            string Query = @"select top 5 * from saga where Upplagd in (select top 5 Upplagd from Saga) order by Upplagd desc";

            List<Saga> sagor = new List<Saga>();

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Saga sagan = new Saga();

                    sagan.Namn = (string)reader["Namn"];
                    sagan.Pris = (int)reader["Pris"];
                    sagan.Langd = (string)reader["Langd"];

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

        public Editor getEditorInfo(string editor)
        {
            string Query = @"Select * from Redaktor where Username = @Editor";

            Editor editorn = new Editor();

            SqlDataReader reader = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@Editor", editor);

                cmd.Parameters.Add(param);

                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    editorn.Uname = (string)reader["Username"];
                    editorn.Email = (string)reader["Email"];
                    editorn.Fname = (string)reader["Fname"];
                    editorn.Lname = (string)reader["Lname"];
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

            return editorn;
        }

        public string getPwByUname(string user)
        {
            string Query = @"Select Password from Member where username = @User";

            string PW = null;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@User", user);
                cmd.Parameters.Add(param);

                PW = (string)cmd.ExecuteScalar();
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

            return PW;

        }

        public bool checkUser(string user)
        {
            string Query = @"Select count(*) from Member where Username = @User";

            bool Result = false;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@User", user);
                cmd.Parameters.Add(param);

                if ((int)cmd.ExecuteScalar() > 0)
                {
                    Result = true;
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

            return Result;
        }

        public bool checkBamse(string BID)
        {
            string Query = @"select count(*) from Bamse where BamseID = @BID";

            bool result = false;

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(Query, con);

                SqlParameter param = new SqlParameter("@BID", BID);
                cmd.Parameters.Add(param);

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
    }
}

