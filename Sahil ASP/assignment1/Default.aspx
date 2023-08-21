<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 398px;
        }
        .auto-style2 {
            width: 619px;
        }
        .auto-style3 {
            width: 398px;
            height: 47px;
        }
    </style>
</head>
<body style="height: 192px; width: 754px">
        <form id="form1" runat="server">
        <div>
            <table border="2px" ;>
                <tr >   
                 <td colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Student Form" Width="100%" ></asp:Label>
          </td>
                 </tr>
                 <tr>
                    <td class="auto-style1" colspan="2">

                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" ></asp:RequiredFieldValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sclass" ErrorMessage="Class is required." ForeColor="Red" ></asp:RequiredFieldValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sdiv" ErrorMessage="Division is required." ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                
                <tr>
                    <td class="auto-style1"> 
                        Enter Your Name
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server" Width="196px"></asp:TextBox> <br />
                     </td>
                </tr>
                   
                <tr>
                    <td class="auto-style1"> 
                        Enter Your Class
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="sclass" runat="server" Width="196px"></asp:TextBox> <br />
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1"> 
                        Enter Your division
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="sdiv" runat="server" Width="196px"></asp:TextBox> <br />
                     </td>
                </tr>

                    <tr>
                       <td class="auto-style3" colspan="2">
         
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="36px" style="margin-left: 315px" Width="131px"  />
                    </td>
        </tr>                   
            
                
            </table>
        </div>
    
</form>

</body>
</html>
