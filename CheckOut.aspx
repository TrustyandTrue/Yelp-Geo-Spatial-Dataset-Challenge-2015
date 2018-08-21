<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CheckOut.aspx.vb" Inherits="CheckOut" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" 
            Text="Please Enter The Following Information"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table id="t1" style="width: 67%; height: 151px;">
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                </td>
                    </tr>
            <tr>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server" Width="125px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Last name Required"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter a valid email id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Emain address Required"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
        </table>
    
        <asp:Button ID="Button1" runat="server" Text="Continue Sopping" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="cancel" 
            CausesValidation="False" />
        &nbsp;<br />
        <br />
        <br />
&nbsp;<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
