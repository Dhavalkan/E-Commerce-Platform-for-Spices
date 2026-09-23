<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .login-page {
            min-height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #faf9f8;
            padding: 30px 15px;
        }

        .login-box {
            width: 100%;
            max-width: 360px;
            padding: 20px;
        }

        .login-title {
            text-align: center;
            margin: 0;
            font-size: 27px;
            font-weight: 700;
            color: #111;
        }

        .login-subtitle {
            text-align: center;
            margin: 6px 0 26px;
            font-size: 11px;
            color: #666;
        }

        .form-group {
            margin-bottom: 13px;
        }

        .label-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }

        .form-label {
            font-size: 9px;
            font-weight: 600;
            color: #333;
        }

        .forgot-link {
            font-size: 8px;
            font-weight: 600;
            color: #198754;
            text-decoration: none;
        }

        .input-box {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 8px;
            top: 50%;
            transform: translateY(-50%);
            color: #879187;
            font-size: 13px;
        }

        .login-input {
            width: 100%;
            height: 40px;
            padding: 0 10px 0 28px;
            border: 1px solid #d8ddd9;
            border-radius: 7px;
            background: #fff;
            outline: none;
            font-size: 10px;
        }

        .login-input:focus {
            border-color: #087b20;
            box-shadow: 0 0 0 2px rgba(8,123,32,.08);
        }

        .login-button {
            width: 100%;
            height: 35px;
            margin-top: 2px;
            border: none;
            border-radius: 6px;
            background: #087b20;
            color: white;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            box-shadow: 0 3px 5px rgba(0,0,0,.18);
        }

        .login-button:hover {
            background: #06691b;
        }

        .register-text {
            text-align: center;
            margin-top: 27px;
            font-size: 9px;
            color: #555;
        }

        .register-link {
            color: #198754;
            text-decoration: none;
        }

        .register-link:hover {
            text-decoration: underline;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-page">

        <div class="login-box">

            <h1 class="login-title">Welcome Back</h1>

            <p class="login-subtitle">
                Enter your credentials to access your account.
            </p>

            <!-- Email -->
            <div class="form-group">

                <div class="label-row">
                    <label class="form-label">Email Address</label>
                </div>

                <div class="input-box">

                    <span class="input-icon">✉</span>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="login-input"
                        TextMode="Email"
                        placeholder="Shree@example.com">
                    </asp:TextBox>

                </div>

            </div>


            <!-- Password -->
            <div class="form-group">

                <div class="label-row">

                    <label class="form-label">Password</label>

                    <asp:HyperLink
                        ID="lnkForgotPassword"
                        runat="server"
                        NavigateUrl="~/ForgotPassword.aspx"
                        CssClass="forgot-link">
                        Forgot Password?
                    </asp:HyperLink>

                </div>

                <div class="input-box">

                    <span class="input-icon">🔒</span>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="login-input"
                        TextMode="Password"
                        placeholder="••••••••">
                    </asp:TextBox>

                </div>

            </div>


            <!-- Login -->
          

            <!-- Register -->
            <div class="register-text">

                Don't have an account?

                <asp:HyperLink
                    ID="lnkRegister"
                    runat="server"
                    NavigateUrl="~/Register.aspx"
                    CssClass="register-link">
                    Register Account
                </asp:HyperLink>

            </div>

        </div>

    </div>

</asp:Content>