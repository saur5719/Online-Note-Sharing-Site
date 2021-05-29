<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="assignstatus.aspx.cs" Inherits="NotesSharingSite.admin.assignstatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
        <h2 class="text-center" style="color:rebeccapurple;font-weight:bold">Assign Status</h2><br />
        <formview method="post">

            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Accept</asp:ListItem>
                <asp:ListItem>Reject</asp:ListItem>
                
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn btn-primary form-control" OnClick="Button1_Click"/>
        </formview>
    </div>
</asp:Content>
