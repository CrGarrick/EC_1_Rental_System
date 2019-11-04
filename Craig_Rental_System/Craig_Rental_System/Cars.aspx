<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Craig_Rental_System.Cars" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <asp:ListView ID="lvCars" runat="server" DataKeyNames="Car_Id" InsertItemPosition="LastItem" DataSourceID="SqlCars">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF; color: #284775;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Id") %>' runat="server" ID="Car_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Brand") %>' runat="server" ID="BrandLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Cat_Id") %>' runat="server" ID="Cat_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Model") %>' runat="server" ID="ModelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Year") %>' runat="server" ID="Car_YearLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Color") %>' runat="server" ID="ColorLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Id") %>' runat="server" ID="Car_IdLabel1" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Brand") %>' runat="server" ID="BrandTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Cat_Id") %>' runat="server" ID="Cat_IdTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Model") %>' runat="server" ID="ModelTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Car_Year") %>' runat="server" ID="Car_YearTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Color") %>' runat="server" ID="ColorTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Brand") %>' runat="server" ID="BrandTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Cat_Id") %>' runat="server" ID="Cat_IdTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Model") %>' runat="server" ID="ModelTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Car_Year") %>' runat="server" ID="Car_YearTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Color") %>' runat="server" ID="ColorTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF; color: #333333;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Id") %>' runat="server" ID="Car_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Brand") %>' runat="server" ID="BrandLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Cat_Id") %>' runat="server" ID="Cat_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Model") %>' runat="server" ID="ModelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Year") %>' runat="server" ID="Car_YearLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Color") %>' runat="server" ID="ColorLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">Car_Id</th>
                                        <th runat="server">Brand</th>
                                        <th runat="server">Cat_Id</th>
                                        <th runat="server">Model</th>
                                        <th runat="server">Car_Year</th>
                                        <th runat="server">Color</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager runat="server" ID="DataPager2">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Id") %>' runat="server" ID="Car_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Brand") %>' runat="server" ID="BrandLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Cat_Id") %>' runat="server" ID="Cat_IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Model") %>' runat="server" ID="ModelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Car_Year") %>' runat="server" ID="Car_YearLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Color") %>' runat="server" ID="ColorLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

        <asp:SqlDataSource ID="SqlCars" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' DeleteCommand="Car_DeleteById" DeleteCommandType="StoredProcedure" InsertCommand="Car_Insert" InsertCommandType="StoredProcedure" SelectCommand="Car_SelectAll" SelectCommandType="StoredProcedure" UpdateCommand="Car_UpdateById" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="Car_Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Car_Id" Type="Int32" Direction="InputOutput"></asp:Parameter>
                <asp:Parameter Name="Brand" Type="String"></asp:Parameter>
                <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                <asp:Parameter Name="Car_Year" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Color" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Car_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Brand" Type="String"></asp:Parameter>
                <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                <asp:Parameter Name="Car_Year" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Color" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

       

        <asp:GridView ID="gvTransaction" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Rental_Id" AutoGenerateColumns="False" DataSourceID="SqlRent" AllowPaging="True">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="Cust_Id" HeaderText="Cust_Id" SortExpression="Cust_Id"></asp:BoundField>

                <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date" SortExpression="Transaction_Date"></asp:BoundField>
                <asp:BoundField DataField="Num_Of_Days" HeaderText="Num_Of_Days" SortExpression="Num_Of_Days"></asp:BoundField>

                <asp:BoundField DataField="Rental_Fee" HeaderText="Rental_Fee" SortExpression="Rental_Fee"></asp:BoundField>
                <asp:BoundField DataField="Payment_Id" HeaderText="Payment_Id" SortExpression="Payment_Id"></asp:BoundField>
            </Columns>

            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#EFF3FB"></RowStyle>

            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
        </asp:GridView>



            <asp:DetailsView ID="DvInfo" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlRentbyId" AllowPaging="True">

                <Fields>
                    <asp:BoundField DataField="Rental_Id" HeaderText="Rental_Id" ReadOnly="True" InsertVisible="False" SortExpression="Rental_Id"></asp:BoundField>
                    <asp:BoundField DataField="Cust_Id" HeaderText="Cust_Id" SortExpression="Cust_Id"></asp:BoundField>
                    <asp:BoundField DataField="Car_Id" HeaderText="Car_Id" SortExpression="Car_Id"></asp:BoundField>
                    <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date" SortExpression="Transaction_Date"></asp:BoundField>
                    <asp:BoundField DataField="Num_Of_Days" HeaderText="Num_Of_Days" SortExpression="Num_Of_Days"></asp:BoundField>
                    <asp:BoundField DataField="Rental_Fee" HeaderText="Rental_Fee" SortExpression="Rental_Fee"></asp:BoundField>
                    <asp:BoundField DataField="Payment_Id" HeaderText="Payment_Id" SortExpression="Payment_Id"></asp:BoundField>
                </Fields>
            </asp:DetailsView>

            <asp:FormView ID="fvTransaction" runat="server" DataSourceID="SqlRent">
                <EditItemTemplate>
                    Rental_Id:
                    <asp:Label Text='<%# Eval("Rental_Id") %>' runat="server" ID="Rental_IdLabel1" /><br />
                    Cust_Id:
                    <asp:TextBox Text='<%# Bind("Cust_Id") %>' runat="server" ID="Cust_IdTextBox" /><br />
                    Car_Id:
                    <asp:TextBox Text='<%# Bind("Car_Id") %>' runat="server" ID="Car_IdTextBox" /><br />
                    Transaction_Date:
                    <asp:TextBox Text='<%# Bind("Transaction_Date") %>' runat="server" ID="Transaction_DateTextBox" /><br />
                    Num_Of_Days:
                    <asp:TextBox Text='<%# Bind("Num_Of_Days") %>' runat="server" ID="Num_Of_DaysTextBox" /><br />
                    Rental_Fee:
                    <asp:TextBox Text='<%# Bind("Rental_Fee") %>' runat="server" ID="Rental_FeeTextBox" /><br />
                    Payment_Id:
                    <asp:TextBox Text='<%# Bind("Payment_Id") %>' runat="server" ID="Payment_IdTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Cust_Id:
                    <asp:TextBox Text='<%# Bind("Cust_Id") %>' runat="server" ID="Cust_IdTextBox" /><br />
                    Car_Id:
                    <asp:TextBox Text='<%# Bind("Car_Id") %>' runat="server" ID="Car_IdTextBox" /><br />
                    Transaction_Date:
                    <asp:TextBox Text='<%# Bind("Transaction_Date") %>' runat="server" ID="Transaction_DateTextBox" /><br />
                    Num_Of_Days:
                    <asp:TextBox Text='<%# Bind("Num_Of_Days") %>' runat="server" ID="Num_Of_DaysTextBox" /><br />
                    Rental_Fee:
                    <asp:TextBox Text='<%# Bind("Rental_Fee") %>' runat="server" ID="Rental_FeeTextBox" /><br />
                    Payment_Id:
                    <asp:TextBox Text='<%# Bind("Payment_Id") %>' runat="server" ID="Payment_IdTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Rental_Id:
                    <asp:Label Text='<%# Eval("Rental_Id") %>' runat="server" ID="Rental_IdLabel" /><br />
                    Cust_Id:
                    <asp:Label Text='<%# Bind("Cust_Id") %>' runat="server" ID="Cust_IdLabel" /><br />
                    Car_Id:
                    <asp:Label Text='<%# Bind("Car_Id") %>' runat="server" ID="Car_IdLabel" /><br />
                    Transaction_Date:
                    <asp:Label Text='<%# Bind("Transaction_Date") %>' runat="server" ID="Transaction_DateLabel" /><br />
                    Num_Of_Days:
                    <asp:Label Text='<%# Bind("Num_Of_Days") %>' runat="server" ID="Num_Of_DaysLabel" /><br />
                    Rental_Fee:
                    <asp:Label Text='<%# Bind("Rental_Fee") %>' runat="server" ID="Rental_FeeLabel" /><br />
                    Payment_Id:
                    <asp:Label Text='<%# Bind("Payment_Id") %>' runat="server" ID="Payment_IdLabel" /><br />

                </ItemTemplate>
            </asp:FormView>


            <asp:SqlDataSource runat="server" ID="SqlRent" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="Rental_Transaction_SelectAll" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlRentbyId" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="Rental_Transaction_SelectById" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvTransaction" PropertyName="SelectedValue" Name="Rental_Id" Type="Int32" DefaultValue="1"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>



            <asp:ObjectDataSource ID="ObjCars" runat="server" DeleteMethod="Car_DeleteById" InsertMethod="Car_Insert" SelectMethod="CarSelectAll_Dataset" TypeName="Craig_Rental_System.BusinessClass" UpdateMethod="Car_UpdateById">
                <DeleteParameters>
                    <asp:Parameter Name="Chassi_Num" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Brand_Id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Car_Year" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Color" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Chassi_Num" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Brand_Id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Cat_Id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Model" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Car_Year" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Color" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:ObjectDataSource>

            </table>
    </div>
    </form>
</body>
</html>
