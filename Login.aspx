<%@ Page Title="Login"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Login" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Login CSS -->
    <link href="CSS/Login.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <!-- ================= LOGIN SECTION ================= -->

    <section class="login-section">

        <div class="login-container">

            <!-- Heading -->

            <h1 class="login-title">
                Welcome Back
            </h1>

            <p class="login-subtitle">
                Enter your credentials to access your account.
            </p>

            <!-- ================= LOGIN FORM ================= -->

            <div class="login-form">


                <!-- ================= EMAIL ================= -->

                <div class="form-group">

                    <label for="txtEmail">
                        Email Address
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-envelope"></i>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="login-input"
                            placeholder="Shree@example.com"
                            TextMode="Email">
                        </asp:TextBox>

                    </div>


                    <!-- Required Email -->

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="LoginGroup"
                        ErrorMessage="Email address is required."
                        Text="Email address is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <!-- Email Format -->

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="LoginGroup"
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                        ErrorMessage="Please enter a valid email address."
                        Text="Please enter a valid email address."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= PASSWORD ================= -->

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

                        <i class="bi bi-lock"></i>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="login-input"
                            placeholder="••••••••"
                            TextMode="Password">
                        </asp:TextBox>

                    </div>


                    <!-- Required Password -->

                    <asp:RequiredFieldValidator
                        ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationGroup="LoginGroup"
                        ErrorMessage="Password is required."
                        Text="Password is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <!-- Password Format -->

                    <asp:RegularExpressionValidator
                        ID="revPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationGroup="LoginGroup"
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$"
                        ErrorMessage="Password must contain at least 8 characters and one number."
                        Text="Password must contain at least 8 characters and one number."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= LOGIN BUTTON ================= -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="LOGIN →"
                    CssClass="login-button"
                    ValidationGroup="LoginGroup"
                    OnClick="btnLogin_Click" />


                <!-- ================= REGISTER ================= -->

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