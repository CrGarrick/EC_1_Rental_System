using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Craig_Rental_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            Account acc = new Account();


            acc.FirstName = TxtbFirstName.Text;
            acc.LastName = TxtbLastName.Text;
            acc.License = TxtbLicense.Text;
            acc.Address = TxtbAddress.Text;
            acc.Parish = DLParish.SelectedItem.Text;
            acc.ContactNumber = TxtbContactNumber.Text;
            acc.Brand = DLBrand.SelectedItem.Text;
            acc.Model = TxtbModel.Text;
            acc.Year = Convert.ToInt32(TxtbYear.Text);
            acc.Category = DLCategory.SelectedItem.Text;
            acc.Color = TxtbColor.Text;
            //acc.Mileage = Convert.ToInt32(TxtbMileage.Text);
            acc.StDate = CbStartDate.SelectedDate;
       
            acc.PaymentMethod = RblPayment.SelectedItem.Text;
            acc.NumberOfDays = Convert.ToInt32(TxtbNumberOfDays.Text);


          


            if (CbSignUp.Checked == true)
            {
                acc.SignUp = true;
            }
            else
            {
                acc.SignUp = false;
            }



            Session["Account"] = acc;

            int newCustomerId = BusinessClass.Customer_Insert(acc.License, acc.FirstName, acc.LastName, acc.ContactNumber, acc.Address);
            
          
            BusinessClass.Rental_Transaction_Insert(newCustomerId, Convert.ToInt32(DLBrand.SelectedValue) ,DateTime.Now, acc.NumberOfDays, acc.RentalFee(), RblPayment.SelectedValue);





            Response.Redirect("Display.aspx");


        }
    }

    
}