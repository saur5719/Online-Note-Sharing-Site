<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="viewmynotes.aspx.cs" Inherits="NotesSharingSite.viewmynotes" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="NotesSharingSite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
 <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
 <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%
    string emailid = Session["uid"].ToString();
    string query="select * from Notes where emailid='"+ emailid +"'";
    SqlDataReader dr=Connect.my_reader(query);

%>

    <div class="container" style="margin-top:70px;">
        <h2 class="text-center" style="color:orangered; font-weight:bold;font-family:Castellar">View My Notes</h2>
        <br />
        <table class="table table-hover" id="example">
  <thead>
    <tr>
      <th scope="col">Uploading Date</th>
      <th scope="col">Branch</th>
      <th scope="col">Subject</th>
      <th scope="col">Notes File</th>
        <th scope="col">File Type</th>
        <th scope="col">Description</th>
        <th scope="col">Status</th>
        <th scope="col">Download</th>
        <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
      <%
          while (dr.Read())
          {
              %>
    <tr>
      <td><%=dr.GetValue(2).ToString() %></td>
        <td><%=dr.GetValue(3).ToString() %></td>
        <td><%=dr.GetValue(4).ToString() %></td>
        <td><%=dr.GetValue(5).ToString() %></td>
        <td><%=dr.GetValue(6).ToString() %></td>
        <td><%=dr.GetValue(7).ToString() %></td>
        <td><%=dr.GetValue(8).ToString() %></td>
        <td><a href="<%=dr.GetValue(5).ToString() %>" download>Download</a></td>
        <td><a class="btn btn-danger" href="deletemynotes.aspx?id=<%=dr.GetValue(0).ToString() %>">Delete</a></td>
    </tr>
      <%
          }
          %>
  </tbody>
</table>
    </div>
    <script>
        $(document).ready(function () {
            $('#example').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
                    'pdfHtml5'
                ]
            });
        });
    </script>
</asp:Content>
