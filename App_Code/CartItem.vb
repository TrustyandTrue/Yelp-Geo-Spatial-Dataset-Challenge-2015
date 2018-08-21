Imports Microsoft.VisualBasic

Public Class CartItem
    Public product As Product
    Public quantity As Integer
    Public Function Display() As String
        Return product.pna & "(" & quantity.ToString() & " at Rs " & product.unitprice & " each )"
        
    End Function
End Class
