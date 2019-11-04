<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsAvail.aspx.cs" Inherits="Craig_Rental_System.CarsAvail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="lvCarsAvail" runat="server" DataSourceID="SqlCarsAvail" DataKeyNames="Car_Id">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF; color: #284775;">
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
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
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
        <asp:SqlDataSource ID="SqlCarsAvail" runat="server" ConnectionString='<%$ ConnectionStrings:Craig_Rental_SystemConnectionString %>' SelectCommand="SELECT * FROM [Car]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
