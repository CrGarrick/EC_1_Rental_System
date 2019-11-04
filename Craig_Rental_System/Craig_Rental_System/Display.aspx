<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="Craig_Rental_System.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td colspan ="3">
                <h1>Craig's Car Rentals</h1>
            </td>
        </tr>
        <tr>
            <td>
                <span>First Name:</span>
            </td>
            <td> <asp:TextBox ID="TxtbFirstNameOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
        <tr>
            <td>
                <span>Last Name:</span>
            </td>
            <td> <asp:TextBox ID="TxtbLastNameOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
        <tr>
            <td>
                <span>License#:</span>
            </td>
            <td> <asp:TextBox ID="TxtbLicenseOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
                <tr>
            <td>
                <span>Address:</span>
            </td>
            <td> <asp:TextBox ID="TxtbAddressOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
                <tr>
            <td>
                <span>Parish:</span>
            </td>
            <td>
              <asp:TextBox ID="TxtbParishOut" runat="server" ReadOnly="true"></asp:TextBox> </td>     
        </tr>
          <tr>
            <td>
                <span>Contact Number:</span>
            </td>
            <td> <asp:TextBox ID="TxtbContactNumberOut" runat="server"></asp:TextBox></td>     
        </tr>
         <tr>
            <td>
                <span>Brand:</span>
            </td>
            <td> <asp:TextBox ID="TxtbBrandOut" runat="server" ReadOnly="true"></asp:TextBox> </td>     
        </tr>
           <tr>
            <td>
                <span>Model:</span>
            </td>
            <td> <asp:TextBox ID="TxtbModelOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
           <tr>
            <td>
                <span>Year:</span>
            </td>
            <td> <asp:TextBox ID="TxtbYearOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
          <%-- <tr>
            <td>
                <span>Mileage:</span>
            </td>
            <td> <asp:TextBox ID="TxtbMileageOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>--%>

        <tr>
            <td>
                <span>Color:</span>
            </td>
            <td>
                <asp:TextBox ID="TxtbColor" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td>
                <span>Category:</span>
            </td>


            <td> <asp:TextBox ID="TxtbCategoryOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>
           <tr>
            <td>
                <span>Number of Days:</span>
            </td>
            <td> <asp:TextBox ID="TxtbNumberOfDaysOut" runat="server" ReadOnly="true"></asp:TextBox></td>     
        </tr>

           <tr>
            <td>
                <span>Payment Method:</span>
            </td>
            <td> <asp:TextBox ID="TxtbPaymentOut" ReadOnly="true" runat="server"></asp:TextBox>
            </td>    
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lbldate" runat="server" Text="Start Date:"></asp:Label>
            </td>

               <td>
                     <asp:TextBox ID="TxtbCStDateOut" runat="server"  ReadOnly="true" ></asp:TextBox>
                    </td>
        </tr>

        <tr>
            <td>
                  <asp:label id="LblSignUP" runat="server" text="Sign up for Newsletter:"></asp:label>
            </td>
            <td>
                <asp:checkbox id="CbSignUp" runat="server" />
            </td>
        </tr>
                   <tr>
                 <td>
                        Your Rental fee is:
                    </td>

              
                       <td>
                           <label id="LblRentalFee" runat="server" style="font-size:30px; font-weight:bold"></label>
                       </td>

             </tr>

    </table>
    </div>
    </form>
</body>
</html>
