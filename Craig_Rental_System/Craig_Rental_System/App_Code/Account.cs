
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Craig_Rental_System
{
    public class Account
    {

        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String License { get; set; }
        public String Address { get; set; }

        public String Parish { get; set; }
        public String ContactNumber { get; set; }

        public String Brand { get; set; }
        public String Model { get; set; }
        public int Year { get; set; }
        public String Category { get; set; }

        public int Mileage { get; set; }

        public DateTime StDate { get; set; }


        //public double CostPerRental { get; set;}

        public int NumberOfDays { get; set; }
        public String PaymentMethod { get; set; }

        public Boolean SignUp { get; set; }

        public String Color { get; set; }


        public Decimal RentalFee()
        {
            Decimal CostPerRental = 10500;

            return NumberOfDays * CostPerRental;
        }

        public Account()
        {
            //
            // TODO: Add constructor logic here
            //
        }

    }
}