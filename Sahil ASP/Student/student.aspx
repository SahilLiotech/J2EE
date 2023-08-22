<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="Student_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        body{
            background-color:#999;
          
        }
        table{
            background-color:#eae0e0;
            margin:0 auto;
        }
        .heading-row{
            background-color:#e0dfdf;
        }
        .heading{
            font-size:36px;
            text-align:center;
        }

        gridview {
        width: 976px;
        border-collapse: collapse;
    }

    .gridview th, .gridview td {
        padding: 5px;
        text-align: center;
    }

    .gridview th {
        background-color: grey; 
    }

    .gridview .odd {
        background-color: #eae0e0; 
    }

    .gridview .even {
        background-color: #fff; 
    }
    </style>

</head>
    <body>
    <form id="form1" runat="server">
        <br />
    <table border="1">
        <tr class="heading-row">
            <td colspan="3" class="heading">Student Registration Form</td>
        </tr>
      
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
            <asp:TextBox ID="textbox5" runat="server" Visible="false"></asp:TextBox>
            <td><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textbox1" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
            <td><asp:TextBox ID="textbox2" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox2" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label></td>
            <td><asp:DropDownList ID="Drop1" runat="server">
                <asp:ListItem Value="0">Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="0" runat="server" ControlToValidate="Drop1" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
            <td><asp:DropDownList ID="Drop2" runat="server" Height="22px" Width="113px" style="margin-right: 0px">
                <asp:ListItem Value="0">Select Class</asp:ListItem>
                <asp:ListItem>BCA SEM-1</asp:ListItem>
                <asp:ListItem>BCA SEM-2</asp:ListItem>
                <asp:ListItem>BCA SEM-3</asp:ListItem>
                <asp:ListItem>BCA SEM-4</asp:ListItem>
                <asp:ListItem>BCA SEM-5</asp:ListItem>
                <asp:ListItem>BCA SEM-6</asp:ListItem>
                </asp:DropDownList></td>
              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="0" runat="server" ControlToValidate="Drop2" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label></td>
            <td><asp:TextBox ID="textbox3" runat="server"></asp:TextBox></td>
              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textbox3" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></td>
            <td><asp:TextBox ID="textbox4" runat="server"></asp:TextBox></td>
              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="textbox4" ErrorMessage="this field is required." ForeColor="Red" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" runat="server" Text="File"></asp:Label></td>
            <td><asp:FileUpload ID="fileupload1" runat="server"></asp:FileUpload></td>
           <td>
               <asp:Image ID="Image2" runat="server" Height="100" Width="100" Visible="false" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Insert" width="100px" OnClick="Button1_Click"/>   
                <asp:Button ID="Button2" runat="server" Text="Update" width="100px" OnClick="Button2_Click"/>
                <asp:Button ID="Button3" runat="server" Text="Delete" width="100px" OnClick="Button3_Click"/>   
                <asp:Button ID="Button4" runat="server" Text="Show" width="100px" OnClick="Button4_Click" CausesValidation="false"/> 
                <asp:Button ID="Button5" runat="server" Text="Reset" width="100px" OnClick="Button5_Click" CausesValidation="false"/>                                                    
            </td>
        </tr>
        <tr>
        <td colspan="3">
             <asp:Label ID="Label8" runat="server" Text="Please Attach File" ForeColor="Red"></asp:Label>
        </td>
            </tr>
    </table>
        <div>
            <br />
            <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="286px" Width="976px"
    AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
    OnRowDataBound="GridView1_RowDataBound" CssClass="gridview">
            
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>ID</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label9" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>First Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label10" Text='<%#Eval("Firstname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Last Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label11" Text='<%#Eval("Lastname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Gender</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label12" Text='<%#Eval("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Class</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label13" Text='<%#Eval("Class") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Mobile</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label14" Text='<%#Eval("Mobile") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>Email</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label15" Text='<%#Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                         <HeaderTemplate>Image</HeaderTemplate>
                        <ItemTemplate>
                             <asp:Image ID="Image1" runat="server" Height="100" Width="100" ImageUrl='<%#Eval("File") %>' /> 
                        </ItemTemplate>
                    </asp:TemplateField>            
                </Columns>
            </asp:GridView>
        </div>
    </form>
    </body>
</html>
