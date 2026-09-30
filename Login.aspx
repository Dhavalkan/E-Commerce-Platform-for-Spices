<%@ Page Title="Login"
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Login</title>

    <!-- Login CSS -->
    <link href="CSS/Login.css" rel="stylesheet" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
          rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</head>

<body>

<form id="form1" runat="server">

    <!-- ================= LOGIN SECTION ================= -->

    <section class="login-section">

        <div class="login-container">

            <!-- TITLE -->

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


                    <!-- REQUIRED EMAIL -->

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email address is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- EMAIL FORMAT -->

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


                    <!-- REQUIRED PASSWORD -->

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

</form>

</body>

</html>