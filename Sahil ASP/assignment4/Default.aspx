<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="assignment4_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 257px; width: 399px">
        <table style="height: 264px; width: 722px">
    <tr>
        <td class="auto-style1"> <asp:Label ID="Label1" runat="server" Text="Fruits: "></asp:Label></td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" Height="26px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="157px">
            <asp:ListItem>Below Your Selection...</asp:ListItem>
            <asp:ListItem>Mango</asp:ListItem>
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Orange</asp:ListItem>
            <asp:ListItem>Banana</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="validator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="please select item" ForeColor="red" /></td>
    </tr>
   
            
     <tr>
        <td><asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
        </asp:RadioButtonList></td>
        <td colspan="2"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="please select item" ForeColor="red" /></td>
    </tr>
    
            
   <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox></td>
    <td><asp:RegularExpressionValidator ID="RegEx1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Vaild Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red" ></asp:RegularExpressionValidator></td>
   </tr>
          
            
         <tr>
           <td><asp:Button ID="Button1" runat="server" Text="Click Me" Height="25px" /></td>
         </tr>

          </table>
       </div>
    </form>
</body>
</html>
