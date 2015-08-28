Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_aceptar_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_aceptar.Click
        If user.Value.ToString().Equals("cesar") And pass.Value.ToString().Equals("cesar123") Then
            MsgBox("Bien")
        End If
    End Sub

End Class