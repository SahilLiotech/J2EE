<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="assignment6_home" Theme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 235px; margin-left: 160px;">
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      <asp:Label ID="Label1" CssClass="label" runat="server" Text="Login Form"></asp:Label>
        <br />
        <br />
     <asp:Label ID="Label2" CssClass="label" runat="server" Text="Username"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox1" CssClass="input" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" CssClass="label" runat="server" Text="Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" CssClass="input" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Cancel" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="btn" runat="server"  Text="Login" />
    </div>
        </form>
</body>
</html>
