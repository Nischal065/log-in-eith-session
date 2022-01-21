<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="login.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome To Home Page</h1>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click" />
            </p>
        </div>
    </form>
</body>
</html>
