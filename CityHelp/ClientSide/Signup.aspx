<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CityHelp.ClientSide.Signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Page</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="formSignup" runat="server" class="container mt-5">
        <h2>Signup</h2>
        <div class="form-group">
            <asp:Label runat="server" for="txtName">Name</asp:Label>
            <asp:TextBox runat="server" type="text" class="form-control" ID="txtName" placeholder="Enter your name"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" for="txtEmail">Email</asp:Label>
            <asp:TextBox runat="server" type="email" class="form-control" ID="txtEmail" placeholder="Enter your email"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" for="txtPassword">Password</asp:Label>
            <asp:TextBox runat="server" type="password" class="form-control" ID="txtPassword" placeholder="Enter your password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" for="ddlGender">Gender</asp:Label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" Required="true">
                <asp:ListItem Value="">Select Gender</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
                <asp:ListItem Value="Other">Other</asp:ListItem>
            </asp:DropDownList>

        </div>
        <div class="form-group">
            <asp:Label runat="server" for="txtContact">Contact</asp:Label>
            <asp:TextBox runat="server" type="text" class="form-control" ID="txtContact" placeholder="Enter your contact number"></asp:TextBox>
        </div>
        <button type="submit" class="btn btn-primary">Signup</button>
    </form>
    <!-- Include Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Client-side validation -->
    <script>
        $(document).ready(function () {
            $('#formSignup').submit(function (e) {
                // Perform client-side validation
                var name = $('#txtName').val();
                var email = $('#txtEmail').val();
                var password = $('#txtPassword').val();
                var gender = $('#ddlGender').val();
                var contact = $('#txtContact').val();

                if (!name || !email || !password || !gender || !contact) {
                    alert("Please fill in all fields.");
                    e.preventDefault(); // Prevent form submission
                }
            });
        });
    </script>
</body>
</html>
