<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="CompanyRegistration.aspx.cs" Inherits="productDemandForecasting.Guest.CompanyRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:Panel ID="panelCompanyRegistration" runat="server">
 
    <!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h4 class="style">Company Registration</h4>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	
	<div class="login_left">
		<h3>register new company</h3>
		<p>By creating an account with our application, you will be able to make use of services such as product demand forecasting, discussion forum, etc..</p>
		<div class="registration_left">
		<a href="#"><div class="reg_fb"><i>Specify Details</i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form -->
			<form id="registration_form" action="contact.php" method="post">
				<div>
                Company Id
					<label>
						<input type="text" tabindex="1" required="" autofocus="" runat="server" id="txtCompanyId"><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtCompanyId" CssClass="error" ErrorMessage="*" 
                        ToolTip="Only Alphabets and Numbers Allowed" 
                        ValidationExpression="[a-zA-Z0-9]*$" ValidationGroup="a">Only Alphabets and Numbers Allowed</asp:RegularExpressionValidator>
&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <div>
                Password
					<label>
						<input type="password" tabindex="2" required="" runat="server" id="txtPassword"><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword" 
                        CssClass="error" Display="Dynamic" 
                        ErrorMessage="Password Must be 8 Characters including 1 Uppercase letter, 1 Special Character and Alphanumeric Characters." 
                        ToolTip="Password Must be 8 Characters including 1 Uppercase letter, 1 Special Character and Alphanumeric Characters." 
                        ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" 
                        ValidationGroup="a">Password 
                                    Must be 8 Characters including 1 Uppercase letter, 1 Special Character and 
                                    Alphanumeric Characters.</asp:RegularExpressionValidator>
                    <br />
&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>						
				<div>
                Retype Password
					<label>
						<input type="password" tabindex="3" required="" runat="server" id="txtConfirmPassword">
                          <asp:CompareValidator runat="server" ErrorMessage="mismatch" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                        ToolTip="mismatch" ValidationGroup="a" CssClass="failureNotification"></asp:CompareValidator>
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
				<div>
                Company Name
					<label>
						<input type="text" tabindex="4" required="" autofocus="" runat="server" id="txtCompanyName">
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ControlToValidate="txtCompanyName" CssClass="error" 
                        ErrorMessage="*" ToolTip="Only Alphabetes" ValidationExpression="^[a-zA-Z ]*$" 
                        ValidationGroup="a">Only Alphabetes</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div>
                Address
					<label>
						<input type="text" tabindex="5" required="" autofocus="" runat="server" id="txtAddress">
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div>
                City
					<label>
						<input type="text" tabindex="6" required="" autofocus="" runat="server" id="txtCity">
					<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtCity" CssClass="error" ErrorMessage="*" 
                        ToolTip="Only Alphabetes" ValidationExpression="^[a-zA-Z ]*$" 
                        ValidationGroup="a">Only Alphabetes</asp:RegularExpressionValidator>
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div>
                Contact No
					<label>
						<input type="text" tabindex="7" required="" autofocus="" runat="server" id="txtContactNo">
                        <asp:RegularExpressionValidator runat="server" 
                        ErrorMessage="input 10 digits" ControlToValidate="txtContactNo" 
                        CssClass="failureNotification" ToolTip="input 10 digits" 
                        ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
				
				<div>
                Email Id
					<label>
						<input type="text" tabindex="8" required="" runat="server" id="txtEmailId">
                         <asp:RegularExpressionValidator runat="server" 
                        ErrorMessage="invalid format" ControlToValidate="txtEmailId" 
                        CssClass="failureNotification" ToolTip="invalid format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="a"></asp:RegularExpressionValidator>
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div>
                Website Address
					<label>
						<input type="text" tabindex="9" required="" autofocus="" runat="server" id="txtWebsiteAddress">
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div>
                Recepit Number
					<label>
						<input type="text" tabindex="10" required="" autofocus="" runat="server" id="txtReceiptNumber">
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" 
                        runat="server" ControlToValidate="txtReceiptNumber" CssClass="error" ErrorMessage="*" 
                        ToolTip="Only Numbers Allowed" ValidationExpression="[0-9]*$" 
                        ValidationGroup="a">Only Numbers Allowed</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                  <div>
                  Upload Logo
					<label>
                        <asp:FileUpload runat="server" required="" autofocus="" id="fileuploadPhoto">
                        </asp:FileUpload>


						
					</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
					
				<div>
                    <asp:Button ID="btnRegister" runat="server" Text="create an account" 
                        onclick="btnRegister_Click" ValidationGroup="a" />
					
				</div>
				
			</form>
			<!-- /Form -->
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>


    </asp:Panel>



</asp:Content>
