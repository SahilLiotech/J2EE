<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="assignment5_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 173px">
    <form id="form1" runat="server">
    <div style="margin-bottom:10px;">
    
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" style="margin-left:10px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="field1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Reqired Field" ForeColor="red"></asp:RequiredFieldValidator>
    </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" Height="22px" style="margin-left:10px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
  <asp:RequiredFieldValidator ID="field2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Reqired Field" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
        <div>
        </div>
    
        <asp:Button ID="Button1" runat="server" Height="30px" Text="Login" Width="121px" OnClick="Button1_Click" />
    
        </form>
</body>
</html>
