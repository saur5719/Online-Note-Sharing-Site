<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="deleteusers.aspx.cs" Inherits="NotesSharingSite.deleteusers" %>
<%@ Import Namespace="NotesSharingSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        string id = Request.QueryString["id"];
        string query = "delete from Users where emailid='"+id+"'";
        Connect.my_iud(query);
        Response.Redirect("viewusers.aspx");
        %>
</asp:Content>
