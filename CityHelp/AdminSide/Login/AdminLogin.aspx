<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CityHelp.AdminSide.Login.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href="../../CSS/LoginCss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <asp:Image runat="server" ID="signin_image" ImageUrl="../../ClientSide/img/signin-image.jpg" AlternateText="sign in image" />
                            <br />
                            <br />
                            <a href="/adminSide/Login/AdminSignUp.aspx" class="signup-image-link">Create an account</a>
                        </div>
                        <div class="signin-form">
                            <br />
                            <br />
                            <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Size="Medium"></asp:Label>
                            <br />
                            <h2 class="form-title">Sign in</h2>
                            <asp:TextBox runat="server" ID="your_name" CssClass="form-group" placeholder="Your Name"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="your_name" ErrorMessage="Name is required" CssClass="error-message" />

                            <asp:TextBox runat="server" ID="your_pass" CssClass="form-group" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="your_pass" ErrorMessage="Password is required" CssClass="error-message" />

                            <div class="form-group form-button">
                                <asp:Button runat="server" ID="signin" CssClass="form-submit" Text="Log in" OnClick="signin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
