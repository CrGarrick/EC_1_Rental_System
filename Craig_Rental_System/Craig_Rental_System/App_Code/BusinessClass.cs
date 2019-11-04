using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Craig_Rental_System
{
    public class BusinessClass
    {
        public static IEnumerable Car_SelectAll_IEnumerable()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("Car_SelectAll", con);
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;
        }

       
        public static DataSet CarSelectAll_Dataset()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlDataAdapter da = new SqlDataAdapter("Car_SelectAll", con);
            DataSet ds = new DataSet();

            da.Fill(ds, "Car");
            return ds;
        }

       
        public static int Car_UpdateById(int Car_Id, String Brand, String  Cat_Id, String Model, int Car_Year, String Color)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("Car_UpdateById", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Car_Id", Car_Id);
            cmd.Parameters.AddWithValue("@Brand", Brand);
            cmd.Parameters.AddWithValue("@Cat_Id", Cat_Id);
            cmd.Parameters.AddWithValue("@Model", Model);
            cmd.Parameters.AddWithValue("@Car_Year", Car_Year);
           
            cmd.Parameters.AddWithValue("@Color", Color);


            con.Open();
            int updateStatus = cmd.ExecuteNonQuery();
            con.Close();

            return updateStatus;
        }

       
        public static int Car_DeleteById(int Car_Id)
        {
            try
            {
                SqlConnection con = new SqlConnection(GetConnectionString());
                SqlCommand cmd = new SqlCommand("Car_DeleteById", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //Add Parameters
                cmd.Parameters.AddWithValue("@Car_Id", Car_Id);

                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();

                return res;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static int Customer_Insert(String TRN, String First_Name, String Last_Name, String Contact_num, String Cus_Address)
        {

            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("Customer_Insert", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@Cust_Id", 0).Direction = ParameterDirection.Output; //Return newly inserted Cust_Id

            cmd.Parameters.AddWithValue("@TRN", TRN);
            cmd.Parameters.AddWithValue("@First_Name", First_Name);
            cmd.Parameters.AddWithValue("@Last_Name", Last_Name);
            cmd.Parameters.AddWithValue("@Contact_num", Contact_num);
            cmd.Parameters.AddWithValue("@Cus_Address", Cus_Address);
            




            con.Open();
            cmd.ExecuteNonQuery();
            int outCustomer_Id = Convert.ToInt32(cmd.Parameters["@Cust_Id"].Value);

            con.Close();

            return outCustomer_Id;

        }

       
        public static int Rental_Transaction_Insert( int Cust_Id, int Car_Id, DateTime Transaction_Date, int Num_Of_Days, Decimal Rental_Fee, String Payment_Id)
        {

            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("Rental_Transaction_Insert", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
        
            cmd.Parameters.AddWithValue("@Cust_Id", Cust_Id);
            cmd.Parameters.AddWithValue("@Car_Id", Car_Id);
            cmd.Parameters.AddWithValue("@Transaction_Date", Transaction_Date);
            cmd.Parameters.AddWithValue("@Num_Of_Days", Num_Of_Days);
            cmd.Parameters.AddWithValue("@Rental_Fee", Rental_Fee);
           
            cmd.Parameters.AddWithValue("@Payment_Id", Payment_Id);
            
          
           

            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();

            return result;

        }

        public static int Car_Insert(String Brand, String Cat_Id, String Model, int Car_Year, String Color)
        {

            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("Car_Insert", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@Car_Id", 0).Direction = ParameterDirection.Output; //Return newly inserted Car_Id

            cmd.Parameters.AddWithValue("@Brand", Brand);
            cmd.Parameters.AddWithValue("@Cat_Id", Cat_Id);
            cmd.Parameters.AddWithValue("@Model", Model);
            cmd.Parameters.AddWithValue("@Car_Year", Car_Year);
            //cmd.Parameters.AddWithValue("@Mileage", Mileage);
            cmd.Parameters.AddWithValue("@Color", Color);




            con.Open();
            cmd.ExecuteNonQuery();

            int outCar_Id = Convert.ToInt32(cmd.Parameters["@Car_Id"].Value);

            con.Close();

            return outCar_Id;


        }



        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["Craig_Rental_SystemConnectionString"].ConnectionString;
        }

        public BusinessClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }
}