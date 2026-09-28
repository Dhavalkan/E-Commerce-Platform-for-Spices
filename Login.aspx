<%@ Page Title="Login"
    Language="C#"
    MasterPageFile="~/Login Register.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Login CSS -->
    <link href="CSS/Login.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ================= LOGIN SECTION ================= -->

    <section class="login-section">

        <div class="login-container">

            <!-- Title -->
            <h1 class="login-title">
                Welcome Back
            </h1>

            <p class="login-subtitle">
                Enter your credentials to access your account.
            </p>

            <!-- ================= LOGIN FORM ================= -->

            <div class="login-form">

                <!-- EMAIL -->
                <div class="form-group">

                    <label for="txtEmail">
                        Email Address
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-regular fa-envelope"></i>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="login-input"
                            placeholder="Shree@example.com"
                            TextMode="Email">
                        </asp:TextBox>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email address is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter a valid email address."
                        CssClass="validation-error"
                        Display="Dynamic"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- PASSWORD -->
                <div class="form-group">

                    <div class="password-label-row">

                        <label for="txtPassword">
                            Password
                        </label>

                        <a href="ForgotPassword.aspx"
                           class="forgot-password">
                            Forgot Password?
                        </a>

                    </div>


                    <div class="input-wrapper">

                        <i class="fa-solid fa-lock"></i>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="login-input"
                            placeholder="Enter your password"
                            TextMode="Password">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- LOGIN BUTTON -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="LOGIN →"
                    CssClass="login-button"
                    OnClick="btnLogin_Click" />


                <!-- REGISTER LINK -->

                <p class="register-text">
                    Don't have an account?
                    <a href="Register.aspx">
                        Register Account
                    </a>
                </p>

            </div>

        </div>

    </section>

</asp:Content>