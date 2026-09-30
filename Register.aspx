<%@ Page Title="Register"
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Create Account</title>

    <!-- Register CSS -->
    <link href="CSS/Register.css" rel="stylesheet" />

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

    <!-- ================= REGISTER SECTION ================= -->

    <section class="register-section">

        <div class="register-container">

            <!-- TITLE -->

            <h1 class="register-title">
                Create Your Account
            </h1>

            <p class="register-subtitle">
                Join our network of premium culinary partners and local producers.
            </p>


            <!-- ================= REGISTER FORM ================= -->

            <div class="register-form">


                <!-- NAME -->

                <div class="form-group">

                    <label for="txtName">
                        Full Name
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-regular fa-user"></i>

                        <asp:TextBox
                            ID="txtName"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your full name">
                        </asp:TextBox>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvName"
                        runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Name is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revName"
                        runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Enter a valid name."
                        CssClass="validation-error"
                        Display="Dynamic"
                        ValidationExpression="^[a-zA-Z ]{2,50}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- MOBILE -->

                <div class="form-group">

                    <label for="txtMobile">
                        Mobile Number
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-mobile-screen-button"></i>

                        <asp:TextBox
                            ID="txtMobile"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your mobile number"
                            MaxLength="10">
                        </asp:TextBox>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ErrorMessage="Mobile number is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ErrorMessage="Enter a valid 10-digit mobile number."
                        CssClass="validation-error"
                        Display="Dynamic"
                        ValidationExpression="^[6-9][0-9]{9}$">
                    </asp:RegularExpressionValidator>

                </div>


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
                            CssClass="register-input"
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
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- PASSWORD -->

                <div class="form-group">

                    <label for="txtPassword">
                        Password
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-lock"></i>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="register-input"
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

                    <asp:RegularExpressionValidator
                        ID="revPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password must contain letters and numbers and be at least 8 characters."
                        CssClass="validation-error"
                        Display="Dynamic"
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- CONFIRM PASSWORD -->

                <div class="form-group">

                    <label for="txtConfirmPassword">
                        Confirm Password
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-lock"></i>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Confirm your password"
                            TextMode="Password">
                        </asp:TextBox>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Please confirm your password."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:CompareValidator
                        ID="cvPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        ErrorMessage="Passwords do not match."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:CompareValidator>

                </div>


                <!-- REGISTER BUTTON -->

                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="CREATE ACCOUNT →"
                    CssClass="register-button"
                    OnClick="btnRegister_Click" />


                <!-- LOGIN LINK -->

                <p class="login-text">

                    Already have an account?

                    <a href="Login.aspx">
                        Login
                    </a>

                </p>

            </div>

        </div>

    </section>

</form>

</body>

</html>