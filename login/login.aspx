<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url('/Image/download.jfif');
        }
        h1{
            text-align:center;
        }

        .div{
            margin: 10px 480px;
            padding: 20px;
            border: 1px double;
            background-image:url('');
        }

        .txt{
            width: 300px;
            height:30px;
        }

        .btn {
            width:300px;
            height:40px;
            margin-top:10px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1>Log In Page</h1>
        <hr />
        <div class="div">UserName: <br />
            <asp:TextBox CssClass="txt" ID="txtuser" runat="server"></asp:TextBox><br />

            Password: <br />
            <asp:TextBox CssClass="txt" ID="txtpass" runat="server"></asp:TextBox><br />

            <asp:Button CssClass="btn" ID="sbt" Text="Submit" runat="server" OnClick="sbt_Click"/>
        </div>
    </form>
</body>
</html>
