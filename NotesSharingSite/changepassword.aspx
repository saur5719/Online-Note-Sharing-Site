<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="NotesSharingSite.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
        <h2 class="text-center" style="color:rebeccapurple;font-weight:bold">User SignUp</h2><br />
        <formview method="post">
            <asp:Label ID="Label1" runat="server" Text="Label"><b>Old Password</b></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"><b>New Password</b></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Label"><b>Confirm New Password</b></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary form-control" OnClick="Button1_Click"/>
        </formview>
    </div>
</asp:Content>
