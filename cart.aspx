<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cart.aspx.vb" Inherits="cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 318px; width: 728px">
    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Your shopping cart"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="103px" Width="198px">
        </asp:ListBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Remove selected item" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Empty cart" />
        <br />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Continue Shopping" />
        <br />
&nbsp;<asp:Button ID="Button4" runat="server" Height="27px" Text="Checkout" 
            Width="165px" />
    
    </div>
    </form>
</body>
</html>
