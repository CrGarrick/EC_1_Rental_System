using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Craig_Rental_System
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Account a = (Account)Session["Account"];

            TxtbFirstNameOut.Text = a.FirstName;
            TxtbLastNameOut.Text = a.LastName;
            TxtbLicenseOut.Text = a.License.ToString();
            TxtbAddressOut.Text = a.Address;
            TxtbParishOut.Text = a.Parish;
            TxtbLicenseOut.Text = a.License.ToString();
            TxtbContactNumberOut.Text = a.ContactNumber;

            TxtbBrandOut.Text = a.Brand;
            TxtbModelOut.Text = a.Model;
            TxtbYearOut.Text = a.Year.ToString();
            TxtbCategoryOut.Text = a.Category;

            //TxtbMileageOut.Text = a.Mileage.ToString();
            TxtbColor.Text = a.Color;
            TxtbNumberOfDaysOut.Text = a.NumberOfDays.ToString();
            TxtbPaymentOut.Text = a.PaymentMethod;
            CbSignUp.Text = a.SignUp.ToString();
            LblRentalFee.InnerText = a.RentalFee().ToString("c");
            TxtbCStDateOut.Text = a.StDate.ToString();


        }
    }
}