﻿Imports System.Data
Imports System.Data.SqlClient

Public Class ConexionDB
    Shared cnn As String

    Public Shared Function conectar() As String
        cnn = "Data Source=.\SQLEXPRESS; Initial Catalog=irmingenieria; User ID=sa; Password=chmod-rwx"
        Return cnn
    End Function

End Class
