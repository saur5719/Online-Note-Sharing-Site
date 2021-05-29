<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="deletemynotes.aspx.cs" Inherits="NotesSharingSite.deletemynotes" %>
<%@ Import Namespace="NotesSharingSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        string id = Request.QueryString["id"];
        string query = "delete from Notes where id="+id+"";
        Connect.my_iud(query);
        Response.Redirect("viewmynotes.aspx");
        %>
</asp:Content>
