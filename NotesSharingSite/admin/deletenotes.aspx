<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="deletenotes.aspx.cs" Inherits="NotesSharingSite.admin.deletenotes" %>
<%@ Import Namespace="NotesSharingSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        string id = Request.QueryString["id"];
        string query = "delete from Notes where id="+id+"";
        Connect.my_iud(query);
        Response.Redirect("viewnotes.aspx");
        %>
</asp:Content>
