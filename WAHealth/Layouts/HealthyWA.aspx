<%@ Page language="c#" Codepage="65001" AutoEventWireup="true" Inherits="WAHealth.ECM.Ignia.WAHealth.Layouts.HealthyWA" CodeBehind="HealthyWA.aspx.cs" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<sc:Placeholder Key="msg-target-item" runat="server" />
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<sc:Placeholder Key="msg-html-title" runat="server" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="CODE_LANGUAGE" content="C#" />
	<meta name="vs_defaultClientScript" content="JavaScript" />
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
	<link href="/Ignia/WAHealth/Resources/CSS/HealthyWA-styles.css" rel="stylesheet" type="text/css" />
	<style type="text/css"> 
			/*////// TABLET STYLES //////*/
			@media only screen and (max-width: 640px) {
				td[id="bodyCell"]{padding-top:20px !important; padding-Right:10px !important; padding-Left:10px !important;}
				td[class="headerFooterCell"]{padding-top:10px !important; padding-bottom:10px !important; padding-Left:10px !important; padding-Right:10px !important;}
				
				td[id="mainMenu"] a {font-size: 10px !important;}

				table[id="emailBody"], table[id="headerBody"]{width:440px !important;}
				table[class="flexibleContainer"], table[class="flexibleCard"] {width:100% !important;}
				table[class="campaignImageContainer"]{width:140px !important;}
				table[class="campaignImageSpacer"]{width:10px !important;}
				td[class="flexibleContainerCellLeft"]{padding-right:20px;}
				td[class="flexibleContainerCellRight"]{padding-left:20px;}
				td[id="footerCell"] table[class="flexibleContainer"] td, td[id="preFooter"] table[class="flexibleContainer"] td { text-align:center !important;}

				table[class="visible-lg-only"], td[class="visible-lg-only"] {display: none !important;}
			}

			/*////// MOBILE STYLES //////*/
			@media only screen and (max-width: 480px){			
				/*////// CLIENT-SPECIFIC STYLES //////*/
				body{width:100% !important; min-width:100% !important;} /* Force iOS Mail to render the email at full width. */

				/*////// FRAMEWORK STYLES //////*/
				/*
					CSS selectors are written in attribute
					selector format to prevent Yahoo Mail
					from rendering media query styles on
					desktop.
				*/
				table[id="emailBody"], table[id="headerBody"], table[class="flexibleContainer"], table[class="flexibleContainerSmall"], table[class="flexibleCard"],  table[class="campaignImageContainer"]{width:100% !important;}

				/*
					The following style rule makes any
					image classed with 'flexibleImage'
					fluid when the query activates.
					Make sure you add an inline max-width
					to those images to prevent them
					from blowing out. 
				*/
				img[class="flexibleImage"], table[class="flexibleContainerHeight"]{height:auto !important; width:100% !important;}

				/*
					Make buttons in the email span the
					full width of their container, allowing
					for left- or right-handed ease of use.
				*/
				table[class="emailButton"]{width:100% !important;}
				td[class="buttonContent"]{padding:0 !important;}
				td[class="buttonContent"] a{padding:15px !important;}

				td[class="textContentLast"], td[class="imageContentLast"]{padding-top:20px !important;}

				/*////// GENERAL STYLES //////*/
				td[id="bodyCell"]{padding-top:10px !important;}
				td[id="mainMenu"]{display: none !important;}
				table[id="logoContainer"]{width:100% !important;}
				td[class="headerFooterCell"] td{ text-align:center !important;}
				td[id="preHeader"] table[class="flexibleContainerSmall"] td {padding:2px !important;}
				td[class="campaignImagesCell"] {display: none !important;}
			}
		</style>
</head>
<body>
	<form method="post" runat="server" id="mainform" >
	<center>
			<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
				<tbody><tr>
					<!-- Pre header 100% width colour band // -->
					<td width="100%" align="center" valign="top" class="headerFooterCell" bgcolor="#243741" id="preHeader">
						<!-- CENTERING TABLE // -->
						<table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
							<tbody><tr>
								<td align="center" valign="top">
									<table width="200" align="left" border="0" cellpadding="0" cellspacing="0" class="flexibleContainerSmall">
										<tbody>
											<tr>
												<td align="left" valign="middle">
													<span runat="server" id="MonthYearSpan"></span> 
												</td>
											</tr>
										</tbody>
									</table>
									<table width="200" align="right" border="0" cellpadding="0" cellspacing="0" class="flexibleContainerSmall">
										<tbody>
											<tr>
												<td align="right" valign="middle">
													<asp:Hyperlink ID="ViewOnlineUrl" runat="server" Text="View Online" />
													<span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
													<asp:Hyperlink ID="ContactUsUrl" runat="server" Text="Contact Us" />
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
				<tr>
					<td align="center" valign="top" id="headerCell">
						<sc:Placeholder Key="msg-header" runat="server" />    
					</td>
			   </tr>

			   <!-- Body -->
			   <tr>  
				   <td align="center" valign="top" id="bodyCell">
				   
							<sc:Placeholder Key="msg-body" runat="server" />
				   
					</td>
				</tr>
				<!-- pre footer - 100% colour band -->
				<tr>
					<td width="100%" align="center" valign="top" id="preFooter" bgcolor="#b3d234">
						<!-- CENTERING TABLE // -->
						<table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
							<tbody><tr>
								<td align="center" valign="top">

									<table align="left" width="288" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
										<tbody><tr>
											<td align="center" valign="top">
												<asp:Hyperlink ID="linkReferenceSite" runat="server">
													<img src="/Ignia/WAHealth/Resources/Images/icon-website-white.png" height="13" width="16" alt="•"/> 
													<span runat="server" id="ReferenceSiteSpan"></span> 
												</asp:Hyperlink>
											</td>
										</tr>
									</tbody></table>
									<!-- spacing -->
									<table width="1" align="left" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td width="100%" height="4" class="verticalSpacer">&nbsp;</td>
											</tr>
										</tbody>
									</table>
									<!-- end of spacing -->
									<table align="right" width="288" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
										<tbody><tr>
											<td align="center" valign="top">
												<asp:Hyperlink ID="ContactEmailUrl" runat="server">
													<img src="/Ignia/WAHealth/Resources/Images/icon-email-white.png" height="13" width="16" alt="•"/>
													<span runat="server" id="ContactEmailSpan"></span> 
												</asp:Hyperlink>
											</td>
										</tr>
									</tbody></table>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
				<!-- //end of pre footer -->
				<!-- footer 100% width colour band // -->
				<tr>
					<td width="100%" align="center" valign="top" class="headerFooterCell" bgcolor="#243741" id="footerCell">
						<!-- CENTERING TABLE // -->
						<table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
							<tbody><tr>
								<td align="center" valign="top">
									<table width="254" align="left" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
										<tbody>
											<tr>
												<td align="left" valign="middle">
													<img src="/Ignia/WAHealth/Resources/Images/DOH-Long-White.png" alt="Department of health" width="254" height="43"/>
												</td>
											</tr>
										</tbody>
									</table>
									<!-- mobile vertical spacing -->
									<table width="2" align="left" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td width="100%" height="5" class="verticalSpacer">&nbsp;</td>
											</tr>
										</tbody>
									</table>
									<!-- end of mobile vertical spacing -->
									<table width="290" align="right" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
										<tbody>
											<tr>
												<td align="right" valign="top" height="6" class="verticalSpacer">&nbsp;</td>
											</tr>
											<tr>
												<td align="right" valign="top">
													<%--<asp:Hyperlink ID="UnsubscribeUrl" runat="server" Text="Unsubscribe" />  
													<span>&nbsp;|&nbsp;</span>
                                                    <asp:Hyperlink ID="UpdatePreferencesUrl" runat="server" Text="Update Preferences" />  
													<span>&nbsp;|&nbsp;</span>--%>
                                                    <asp:Hyperlink ID="PrivacyPolicyUrl" runat="server" Text="Privacy policy" />  
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="4" class="verticalSpacer">&nbsp;</td>
											</tr>
											<tr>
												<td align="right" valign="top">
													<span style="font-size:10px; color:#e2e5e9">©&nbsp;Department of Health</span>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
				<!-- // end of footer -->
				
			</tbody></table>
		</center>
	</form>
</body>
	</html>