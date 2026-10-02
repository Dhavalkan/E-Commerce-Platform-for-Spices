<%@ Page Title="Contact"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- CONTACT CSS -->
    <link href="CSS/Contact.css" rel="stylesheet" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />


    <!-- ================= CONTACT IMAGE ================= -->

    <section class="contact-hero">

        <div class="contact-image">

            <img src="Images/contect.png"
                 class="img-fluid about-img"
                 alt="Contact" />

        </div>

    </section>


    <!-- ================= CONTACT SECTION ================= -->

    <section class="contact-section">

        <div class="contact-container">


            <!-- ================= LEFT SIDE ================= -->

            <div class="contact-information">

                <h2>Contact Information</h2>

                <p class="contact-description">
                    Reach out directly or fill out the form, and we'll get back to you promptly.
                </p>


                <!-- ================= ADDRESS ================= -->

                <div class="contact-card">

                    <div class="contact-icon">

                        <i class="fa-solid fa-location-dot"></i>

                    </div>

                    <div class="contact-card-content">

                        <h3>Shree Ram Gruh Udyog</h3>

                        <p>
                            Gondal - Rajkot Main<br />
                            Highway Gujarat
                        </p>

                    </div>

                </div>


                <!-- ================= PHONE ================= -->

                <div class="contact-card">

                    <div class="contact-icon">

                        <i class="fa-solid fa-phone"></i>

                    </div>

                    <div class="contact-card-content">

                        <h3>Phone</h3>

                        <p>
                            +91 9876543210<br />
                            Mon-Fri, 9am - 5pm IST
                        </p>

                    </div>

                </div>


                <!-- ================= EMAIL ================= -->

                <div class="contact-card">

                    <div class="contact-icon">

                        <i class="fa-solid fa-envelope"></i>

                    </div>

                    <div class="contact-card-content">

                        <h3>Email</h3>

                        <p>
                            ShreeRamGruhUdyog@gmail.com
                        </p>

                    </div>

                </div>

            </div>


            <!-- ================= RIGHT SIDE ================= -->

            <div class="inquiry-box">

                <h2>Send an Inquiry</h2>


                <!-- ================= EMAIL ================= -->

                <div class="contact-form-group">

                    <label for="txtContactEmail">
                        Email Address
                    </label>

                    <asp:TextBox
                        ID="txtContactEmail"
                        runat="server"
                        CssClass="contact-input"
                        TextMode="Email"
                        placeholder="Shree@example.com">
                    </asp:TextBox>


                    <!-- Required -->

                    <asp:RequiredFieldValidator
                        ID="rfvContactEmail"
                        runat="server"
                        ControlToValidate="txtContactEmail"
                        ErrorMessage="Email address is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- Email Format -->

                    <asp:RegularExpressionValidator
                        ID="revContactEmail"
                        runat="server"
                        ControlToValidate="txtContactEmail"
                        ErrorMessage="Enter a valid email address."
                        CssClass="validation-error"
                        Display="Dynamic"
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- ================= INQUIRY TYPE ================= -->

                <div class="contact-form-group">

                    <label for="ddlInquiryType">
                        Inquiry Type
                    </label>

                    <asp:DropDownList
                        ID="ddlInquiryType"
                        runat="server"
                        CssClass="contact-input">

                        <asp:ListItem
                            Text="Select an option"
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Product Inquiry"
                            Value="Product Inquiry">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Wholesale Inquiry"
                            Value="Wholesale Inquiry">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Order Inquiry"
                            Value="Order Inquiry">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="General Inquiry"
                            Value="General Inquiry">
                        </asp:ListItem>

                    </asp:DropDownList>


                    <!-- Required -->

                    <asp:RequiredFieldValidator
                        ID="rfvInquiry"
                        runat="server"
                        ControlToValidate="ddlInquiryType"
                        InitialValue=""
                        ErrorMessage="Please select an inquiry type."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- ================= MESSAGE ================= -->

                <div class="contact-form-group">

                    <label for="txtMessage">
                        Message
                    </label>

                    <asp:TextBox
                        ID="txtMessage"
                        runat="server"
                        CssClass="contact-message"
                        TextMode="MultiLine"
                        Rows="5"
                        MaxLength="500"
                        placeholder="How can we help you?">
                    </asp:TextBox>


                    <!-- Required -->

                    <asp:RequiredFieldValidator
                        ID="rfvMessage"
                        runat="server"
                        ControlToValidate="txtMessage"
                        ErrorMessage="Message is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- Message Length -->

                    <asp:CustomValidator
                        ID="cvMessage"
                        runat="server"
                        ControlToValidate="txtMessage"
                        ErrorMessage="Message must be between 10 and 500 characters."
                        CssClass="validation-error"
                        Display="Dynamic"
                        OnServerValidate="cvMessage_ServerValidate">
                    </asp:CustomValidator>

                </div>


                <!-- ================= SEND BUTTON ================= -->

                <asp:Button
                    ID="btnSendMessage"
                    runat="server"
                    Text="Send Message ➤"
                    CssClass="send-message-button"
                    OnClick="btnSendMessage_Click" />

            </div>

        </div>

    </section>

</asp:Content>