<%@ Page Title="Register"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Register" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Register CSS -->
    <link href="CSS/Register.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="MainContent"
    runat="server">


    <!-- ================= REGISTER SECTION ================= -->

    <section class="register-section">

        <div class="register-container">


            <!-- Heading -->

            <h1 class="register-title">
                Create Your Account
            </h1>


            <p class="register-subtitle">
                Join our network of premium culinary partners and local producers.
            </p>

            <!-- ================= REGISTER FORM ================= -->

            <div class="register-form">


                <!-- ================= FULL NAME ================= -->

                <div class="form-group">

                    <label for="txtName">
                        Full Name
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-person"></i>

                        <asp:TextBox
                            ID="txtName"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Shree Sai">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvName"
                        runat="server"
                        ControlToValidate="txtName"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Full Name is required."
                        Text="Full Name is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revName"
                        runat="server"
                        ControlToValidate="txtName"
                        ValidationGroup="RegisterGroup"
                        ValidationExpression="^[a-zA-Z ]{2,50}$"
                        ErrorMessage="Enter a valid name."
                        Text="Enter a valid name."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= MOBILE NUMBER ================= -->

                <div class="form-group">

                    <label for="txtMobile">
                        Mobile Number
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-telephone"></i>

                        <asp:TextBox
                            ID="txtMobile"
                            runat="server"
                            CssClass="register-input"
                            placeholder="+91 98765 43210"
                            MaxLength="10">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Mobile Number is required."
                        Text="Mobile Number is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ValidationGroup="RegisterGroup"
                        ValidationExpression="^[6-9][0-9]{9}$"
                        ErrorMessage="Enter a valid 10-digit mobile number."
                        Text="Enter a valid 10-digit mobile number."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


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
                            CssClass="register-input"
                            placeholder="Shree@example.com"
                            TextMode="Email">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Email Address is required."
                        Text="Email Address is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="RegisterGroup"
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                        ErrorMessage="Enter a valid email address."
                        Text="Enter a valid email address."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= PASSWORD ================= -->

                <div class="form-group">

                    <label for="txtPassword">
                        Password
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock"></i>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="register-input"
                            placeholder="••••••••"
                            TextMode="Password">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Password is required."
                        Text="Password is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationGroup="RegisterGroup"
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$"
                        ErrorMessage="Password must contain at least 8 characters and one number."
                        Text="Minimum 8 characters and one number."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= CONFIRM PASSWORD ================= -->

                <div class="form-group">

                    <label for="txtConfirmPassword">
                        Confirm Password
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock-fill"></i>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="register-input"
                            placeholder="••••••••"
                            TextMode="Password">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Please confirm your password."
                        Text="Confirm Password is required."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>


                    <asp:CompareValidator
                        ID="cvPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        Operator="Equal"
                        Type="String"
                        ValidationGroup="RegisterGroup"
                        ErrorMessage="Passwords do not match."
                        Text="Passwords do not match."
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:CompareValidator>

                </div>


                <!-- ================= CREATE ACCOUNT ================= -->

                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="CREATE ACCOUNT"
                    CssClass="register-button"
                    ValidationGroup="RegisterGroup"
                    OnClick="btnRegister_Click" />


                <!-- ================= LOGIN LINK ================= -->

                <p class="login-text">

                    Already have an account?

                    <a href="Login.aspx">
                        Log in here
                    </a>

                </p>


            </div>

        </div>

    </section>


</asp:Content>