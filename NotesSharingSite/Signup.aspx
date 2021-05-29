<%@ Page Title="" Language="C#" MasterPageFile="~/Start.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="NotesSharingSite.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
        <h2 class="text-center" style="color:rebeccapurple;font-weight:bold">User SignUp</h2><br />
        <formview method="post">
            <asp:Label ID="Label1" runat="server" Text="Label"><b>User Name</b></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"><b>Password</b></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Label"><b>Email ID</b></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Label"><b>Contact</b></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Label"><b>Branch</b></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Mechanical</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>Electrical</asp:ListItem>
                <asp:ListItem>Electronics</asp:ListItem>
                <asp:ListItem>Information Technology</asp:ListItem>
                <asp:ListItem>Chemical</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="Label"><b>Are You?</b></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Faculity</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label7" runat="server" Text="Label"><b>Security Question</b></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                <asp:ListItem>Best Friend Name?</asp:ListItem>
                <asp:ListItem>Favourite Player Name?</asp:ListItem>
                <asp:ListItem>Native Place?</asp:ListItem>
                <asp:ListItem>Your First Pet?</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label8" runat="server" Text="Label"><b>Security Answer</b></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary form-control" OnClick="Button1_Click"/>
        </formview>
    </div>
</asp:Content>
