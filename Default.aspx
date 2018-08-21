<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
 <asp:Label ID="Label1" runat="server" Text="Please select a product"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="AccessDataSource1" DataTextField="PName" 
            DataValueField="ProductID">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Halloween.mdb" 
            SelectCommand="SELECT [ProductID], [PName], [ShortDescription], [LongDescription], [ImageFile], [Unitprice] FROM [Products] ORDER BY [PName]">
        </asp:AccessDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="47px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="You Must Enter number of products"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Sorry only 1 to 500 allowed" 
            MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add to cart" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Go to cart" 
            CausesValidation="False" />
     
</asp:Content>


    
   
     
   
   
