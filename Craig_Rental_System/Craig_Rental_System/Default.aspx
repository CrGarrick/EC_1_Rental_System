<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Craig_Rental_System.Default" %>

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
            <td> <asp:TextBox ID="TxtbFirstName" runat="server"></asp:TextBox></td>     
        </tr>
        <tr>
            <td>
                <span>Last Name:</span>
            </td>
            <td> <asp:TextBox ID="TxtbLastName" runat="server"></asp:TextBox></td>     
        </tr>
        <tr>
            <td>
                <span>License#:</span>
            </td>
            <td> <asp:TextBox ID="TxtbLicense" runat="server"></asp:TextBox></td>     
        </tr>

                <tr>
            <td>
                <span>Address:</span>
            </td>
            <td> <asp:TextBox ID="TxtbAddress" runat="server"></asp:TextBox></td>     
        </tr>
                <tr>
            <td>
                <span>Parish:</span>
            </td>
            <td>
                
                <asp:DropDownList ID="DLParish" runat="server" DataSourceID="SqlParish" DataTextField="Parish" DataValueField="Parish"></asp:DropDownList></td> 
                    
                    <asp:SqlDataSource ID="SqlParish" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="SELECT * FROM [Cust_Parish]">
        </asp:SqlDataSource>
    
        </tr>
          <tr>
            <td>
                <span>Contact Number:</span>
            </td>
            <td> <asp:TextBox ID="TxtbContactNumber" runat="server"></asp:TextBox></td>     
        </tr>
         <tr>
            <td>
                <span>Brand:</span>
            </td>
            <td>
                <asp:DropDownList ID="DLBrand" runat="server" DataSourceID="SqlCars" DataTextField="Brand" DataValueField="Car_Id">
                    
                </asp:DropDownList> </td>  
             
             
           

             <asp:SqlDataSource ID="SqlCars" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="Car_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </tr>
           <tr>
            <td>
                <span>Model:</span>
            </td>
            <td> <asp:TextBox ID="TxtbModel" runat="server"></asp:TextBox></td>     
        </tr>
           <tr>
            <td>
                <span>Year:</span>
            </td>
            <td> <asp:TextBox ID="TxtbYear" runat="server"></asp:TextBox></td>     
        </tr>
<%--           <tr>
            <td>
                <span>Mileage:</span>
            </td>
            <td> <asp:TextBox ID="TxtbMileage" runat="server"></asp:TextBox></td>     
        </tr>--%>
           <tr>
            <td>
                <span>Category:</span>
            </td>
            <td> <asp:DropDownList ID="DLCategory" runat="server" DataSourceID="SqlCategory" DataTextField="CarCategory" DataValueField="Cat_Id"></asp:DropDownList></td> 
               
               <asp:SqlDataSource ID="SqlCategory" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' DeleteCommand="Category_DeleteById" DeleteCommandType="StoredProcedure" InsertCommand="Category_Insert" InsertCommandType="StoredProcedure" SelectCommand="Category_SelectAll" SelectCommandType="StoredProcedure" UpdateCommand="Category_UpdateById" UpdateCommandType="StoredProcedure">
                   <DeleteParameters>
                       <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                       <asp:Parameter Name="CarCategory" Type="String"></asp:Parameter>
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                       <asp:Parameter Name="CarCategory" Type="String"></asp:Parameter>
                   </UpdateParameters>
               </asp:SqlDataSource>
                   
        </tr>
        <tr>
            <td>
                <span>Color:</span>
            </td>

            <td>
                <asp:TextBox ID="TxtbColor" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>

            <td>
                <span>Number of Days:</span>
            </td>
            <td> <asp:TextBox ID="TxtbNumberOfDays" runat="server"></asp:TextBox></td>     
        </tr>

           <tr>
            <td>
                <span>Payment Method:</span>
            </td>
            <td> <asp:RadioButtonList ID="RblPayment" runat="server" DataSourceID="SqlPaymentMethod" DataTextField="PaymentMethod" DataValueField="Payment_Id"></asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlPaymentMethod" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="Payment_Type_SelectAll" DeleteCommand="Parish_DeleteById" DeleteCommandType="StoredProcedure" InsertCommand="Payment_Type_Insert" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommand="Parish_UpDateById" UpdateCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="Parish_Id" Type="String"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Payment_Id" Type="String"></asp:Parameter>
                        <asp:Parameter Name="PaymentMethod" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Parish_Id" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Parish" Type="String"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>

           
            </td>    
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lbldate" runat="server" Text="Start Date:"></asp:Label>
            </td>

            <td>
                <asp:Calendar ID="CbStartDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px"></DayHeaderStyle>

                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>

                    <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99"></SelectedDayStyle>

                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666"></SelectorStyle>

                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px"></TitleStyle>

                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White"></TodayDayStyle>

                    <WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
                </asp:Calendar>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>

       
        
    </table>
    </div>
    </form>
</body>
</html>
