
Partial Class CheckOut
    Inherits System.Web.UI.Page
    Dim cust As Customer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cust = Me.GetCustomer
        If Not IsPostBack Then
            TextBox1.Text = CStr(cust.firstname)
            TextBox2.Text = CStr(cust.lastname)
            TextBox3.Text = CStr(cust.email)
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session.Remove("sescust")
        Response.Redirect("cart.aspx")
    End Sub
    Private Function GetCustomer() As Customer
        If Session("sescust") Is Nothing Then
            Session.Add("sescust", New Customer)
        End If
        Return Session("sescust")
    End Function

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cust.firstname = CStr(TextBox1.Text)
        cust.lastname = CStr(TextBox2.Text)
        cust.email = CStr(TextBox3.Text)
        Response.Redirect("cart.aspx")
    End Sub
End Class
