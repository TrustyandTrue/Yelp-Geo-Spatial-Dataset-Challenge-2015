
Partial Class cart
    Inherits System.Web.UI.Page
    Private cart1 As SortedList

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cart1 = Me.GetCart
        If Not IsPostBack Then
            Me.DisplayCart()
        End If
    End Sub
    Private Function GetCart() As SortedList
        If Session("sescart") Is Nothing Then
            Session.Add("sescart", New SortedList)
        End If
        Return CType(Session("sescart"), SortedList)
    End Function
    Private Sub DisplayCart()
        ListBox1.Items.Clear()
        Dim cartItem As CartItem
        For Each cartEntry As DictionaryEntry In cart1
            cartItem = CType(cartEntry.Value, CartItem)
            ListBox1.Items.Add(cartItem.Display)
        Next

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If cart1.Count > 0 Then
            cart1.Clear()
            ListBox1.Items.Clear()
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If cart1.Count > 0 Then
            If ListBox1.SelectedIndex > -1 Then
                cart1.RemoveAt(ListBox1.SelectedIndex)
                Me.DisplayCart()
            End If
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("CheckOut.aspx")
    End Sub
End Class
