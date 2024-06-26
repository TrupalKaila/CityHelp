<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSignUp.aspx.cs" Inherits="CityHelp.AdminSide.Login.AdminSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="../../CSS/LoginCss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-top:30px" >
            <section>
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Size="Medium"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" ID="name" CssClass="form-group" placeholder="Your Name"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="Name is required" CssClass="error-message" />

                            <asp:TextBox runat="server" ID="email" CssClass="form-group" placeholder="Your Email"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="Email is required" CssClass="error-message" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error-message" />

                            <asp:TextBox runat="server" ID="pass" CssClass="form-group" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="pass" ErrorMessage="Password is required" CssClass="error-message" />

                            <asp:TextBox runat="server" ID="re_pass" CssClass="form-group" TextMode="Password" placeholder="Repeat your password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="re_pass" ErrorMessage="Repeat password is required" CssClass="error-message" />
                            <asp:CompareValidator runat="server" ControlToValidate="re_pass" ControlToCompare="pass" ErrorMessage="Passwords do not match" CssClass="error-message" />

                            <div class="form-group">
                                <a href="AdminLogin.aspx" class="signin-image-link">Already have an account?</a>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button runat="server" ID="signup" CssClass="form-submit" Text="Register" OnClick="SignUp_Click" />
                            </div>
                        </div>
                        <div class="signup-image">
                            <asp:Image runat="server" ID="signup_image" ImageUrl="../../ClientSide/img/signup-image.jpg" AlternateText="sign up image" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
