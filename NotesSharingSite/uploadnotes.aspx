<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="uploadnotes.aspx.cs" Inherits="NotesSharingSite.uploadnotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:70px;">
        <h2 class="text-center" style="color:orangered; font-weight:bold;font-family:Castellar">Upload Notes</h2>
        <br />
        <formview method="post">
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
        <asp:Label ID="Label6" runat="server" Text="Label"><b>Subject</b></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"><b>Notes File</b></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        <asp:Label ID="Label2" runat="server" Text="Label"><b>File Type</b></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
           <asp:ListItem>PDF</asp:ListItem>
           <asp:ListItem>PPT</asp:ListItem>
           <asp:ListItem>DOC/DOCX</asp:ListItem>
           <asp:ListItem>TXT</asp:ListItem>
           <asp:ListItem>ZIP/RAR</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="Label"><b>Description</b></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary form-control" OnClick="Button1_Click"/>
    </formview>
    </div>
</asp:Content>
