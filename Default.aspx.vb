Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Private selectedProduct As Product

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            DropDownList1.DataBind()
        End If
        selectedProduct = Me.GetSelectedProduct
        Label2.Text = selectedProduct.pna
        Label3.Text = selectedProduct.sdes
        Label4.Text = selectedProduct.ldes
        Label5.Text = selectedProduct.unitprice
        TextBox1.Focus()
    End Sub
    Private Function GetSelectedProduct() As Product
        Dim productTable As DataView = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        productTable.RowFilter = "ProductID='" & DropDownList1.SelectedValue & "'"
        Dim prow As DataRowView = productTable(0)
        Dim product As New Product
        product.pid = prow("ProductId")
        product.pna = prow("PName")
        product.sdes = prow("ShortDescription")
        product.ldes = prow("LongDescription")
        product.unitprice = prow("unitprice")
        product.imgfile = prow("ImageFile")
        Return product
    End Function

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        If Page.IsValid Then
            Dim cartItem As New CartItem
            cartItem.product = selectedProduct
            cartItem.quantity = CInt(TextBox1.Text)
            Me.AddToCart(cartItem)

        End If
    End Sub
    Private Sub AddToCart(ByVal cartItem As CartItem)
        Dim cart1 As SortedList = Me.GetCart
        Dim productID As String = selectedProduct.pid
        If cart1.ContainsKey(productID) Then
            cartItem = CType(cart1(productID), CartItem)
            cartItem.quantity += CInt(TextBox1.Text)
        Else
            cart1.Add(productID, cartItem)
        End If

    End Sub
    Private Function GetCart() As SortedList
        If Session("sescart") Is Nothing Then
            Session.Add("sescart", New SortedList)
        End If
        Return CType(Session("sescart"), SortedList)
    End Function

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("cart.aspx")
    End Sub
End Class
