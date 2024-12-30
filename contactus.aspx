<%@ Page Title="Bloom & Grace | Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Assg1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/css/StyleSheet1.css" rel="stylesheet" />
    <style>
        .contact-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 30px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            margin: 40px auto;
            width: 80%;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            gap: 40px;
            position: relative;
            background-image: url('/images/blurry.jpg');
        }
        .contact-container::before {
            content: "";
            position: absolute;
            width: 2px;
            background-color: #ccc;
            top: 10%;
            bottom: 10%;
            left: 50%;
            transform: translateX(-50%);
            z-index: 1;
        }
        .contact-container:hover {
            background-color: #ffffff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            transform: scale(1.05);
            transition: all 0.3s ease;
        }
        .contact-info, .contact-form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 45%;
        }
        .contact-info h1, .contact-form h2 {
            margin-bottom: 15px;
            color: #333;
        }
        .contact-info p, .contact-info a {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
        }
        .contact-info a {
            color: #007BFF;
            text-decoration: none;
        }
        .contact-info a:hover {
            text-decoration: underline;
        }
        .support-sections h4 {
            margin-top: 20px;
            font-size: 16px;
            color: #333;
        }
        .phone-input-group {
            display: flex;
            align-items: center;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            background-color: #f9f9f9;
            margin: 10px 0;
        }
        .phone-input-group .country-code-dropdown {
            border: none;
            padding: 10px;
            background-color: #e8e8e8;
            font-size: 14px;
            outline: none;
        }
        .phone-input-group .phone-input {
            flex: 1;
            border: none;
            padding: 15px;
            font-size: 16px;
            outline: none;
        }
        .phone-input-group .phone-input::placeholder {
            color: #aaa;
        }
        .form-input, .form-textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-note {
            font-size: 12px;
            color: #666;
        }
        .faq-container {
            margin-right: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 10px;
            width: 60%;
            text-align: center;
        }
        .faq-container:hover {
            background-color: #f0f8ff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            transform: scale(1.03);
            transition: all 0.3s ease;
        }
        .faq-form h2, .faq-questions h3 {
            color: #444;
            margin-bottom: 15px;
        }
        .email-box {
            width: 80%;
            padding: 10px;
            margin: 10px auto;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .submit-button {
            padding: 10px 20px;
            background-color: #5DB996;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
        .faq-item h4 {
            cursor: pointer;
            color: #007BFF;
        }
        .faq-item p {
            display: none;
            margin-top: 10px;
            color: #555;
        }
        .faq-item h4:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>
    <form id="form1" runat="server">
        <div class="contact-container">
            <div class="contact-info">
                <h1>Contact Us</h1>
                <p>To find out how we can help, send us an email, give us a call, or fill out the form.</p>
                <p><strong><a href="mailto:info@bloomandgrace.com">✉️ info@bloomandgrace.com</a></strong></p>
                <a href="tel:0129693227">📞 012-9693227</a>
                <div class="support-sections">
                    <div>
                        <br/>
                        <h3>Customer Support</h3>
                        <p>Our support staff is on hand anytime, anywhere to answer any questions or issues.</p>
                    </div>
                    <br/>
                    <div>
                        <h3>Feedback and Suggestions</h3>
                        <p>We appreciate your input so that we can keep improving our services.</p>
                    </div>
                    <br/>
                    <div>
                        <h3>Media Inquiries</h3>
                        <p>For media-related questions, email us at <a href="mailto:info@bloomandgrace.com">✉️ info@bloomandgrace.com</a></p>
                    </div>
                    <br />
                    <br />
                        <h3>Looking for answers to common questions? Check out our FAQ!</h3>
                        <h4><a href="https://localhost:44352/WebForm3.aspx">Visit our FAQ Page</a></h4>
                </div>
            </div>

            <div class="contact-form">
                <h2>Get in Touch</h2>
                <p>You can reach us anytime</p>
                
                <label for="TxtFirstName">First Name <span style="color: red;">*</span></label>
                <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-input" placeholder="First name" required="required"></asp:TextBox>
                
                <label for="TxtLastName">Last Name <span style="color: red;">*</span></label>
                <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-input" placeholder="Last name" required="required"></asp:TextBox>
                
                <label for="TxtEmail">✉️ Email <span style="color: red;">*</span></label>
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-input" placeholder="Your email" required="required"></asp:TextBox>
                <br />
                <label for="Phoneno"> 📞Phone Number <span style="color: red;">*</span></label>
                <div class="phone-input-group">
                    <asp:DropDownList ID="DdlCountryCode" runat="server" CssClass="country-code-dropdown" OnSelectedIndexChanged="DdlCountryCode_SelectedIndexChanged">
                        <asp:ListItem Text="+60" Value="60"></asp:ListItem>
                        <asp:ListItem Text="+61" Value="61"></asp:ListItem>
                        <asp:ListItem Text="+62" Value="62"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TxtPhoneNumber" runat="server" CssClass="phone-input" placeholder="Phone number"></asp:TextBox>
                </div>
                
                <label for="TxtMsg">✉️ Leave Your Message Here <span style="color: red;">*</span></label>
                <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-textarea" TextMode="MultiLine" placeholder="How can we help?" MaxLength="300"></asp:TextBox>
                
                <div id="fileUploads">

                    <label for="FileUpload1">Upload File 1 (JPG, PNG, PDF)[Max 3 upload file]:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-input" />
                </div>

                <asp:Button ID="BtnAddFile" runat="server" Text="Add More Files" CssClass="submit-button" OnClientClick="return addFileUpload();" />

               <br />
               <br />
                <div class="g-recaptcha" data-sitekey="6LdzyqgqAAAAAM37Z6nqoHoKKlPuOkTXDN044aAW"></div>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="submit-button" OnClick="BtnSubmit_Click" />
            </div>
        </div>
    </form>

    <script type="text/javascript">
        let fileCount = 1; // Track the number of file uploads

        function addFileUpload() {
            if (fileCount < 3) { // Limit to 3 uploads
                fileCount++;
                const fileUploadsDiv = document.getElementById('fileUploads');

                const newFileUpload = document.createElement('div');
                newFileUpload.innerHTML = `
                    <label for="FileUpload${fileCount}">Upload File ${fileCount} (JPG, PNG, PDF):</label>
                    <input type="file" id="FileUpload${fileCount}" name="FileUpload${fileCount}" class="form-input" />
                `;

                fileUploadsDiv.appendChild(newFileUpload);
            } else {
                alert("You can only upload a maximum of 3 files.");
            }
            return false; // Prevent postback
        }
    </script>
</asp:Content>
