<%@ Page Title="" Language="C#" MasterPageFile="~/Start.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NotesSharingSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
        <h2 class="text-center" style="color:rebeccapurple;font-weight:bold">User SignIn</h2><br />
        <formview method="post">
            <asp:Label ID="Label1" runat="server" Text="Label"><b>Email ID</b></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"><b>Password</b></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me"></asp:CheckBox>
            <a href="forgetpassword.aspx" style="padding-left:850px;">Forget Password</a>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary form-control" OnClick="Button1_Click"></asp:Button>
        </formview>
     </div>
</asp:Content>
