<%@ Page Language="c#" CodePage="65001" AutoEventWireup="true" Inherits="WAHealth.ECM.Ignia.WAHealth.Layouts.Hospital" CodeBehind="Hospital.aspx.cs" %>

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
    <asp:Literal runat="server" ID="PageCssFile"></asp:Literal>
    <style type="text/css" runat="server">
        /*////// TABLET STYLES //////*/
        @media only screen and (max-width: 640px) {
            td[id="bodyCell"] {
                padding-top: 20px !important;
                padding-Right: 10px !important;
                padding-Left: 10px !important;
            }

            td[class="headerFooterCell"] {
                padding-top: 10px !important;
                padding-bottom: 10px !important;
                padding-Left: 10px !important;
                padding-Right: 10px !important;
            }

            td[class="headerCorp"] {
                padding-Left: 10px !important;
                padding-Right: 10px !important;
            }

            td[id="mainMenu"] a {
                font-size: 10px !important;
            }

            table[id="emailBody"], table[id="headerBody"] {
                width: 440px !important;
            }

            table[class="flexibleContainer"], table[class="flexibleCard"] {
                width: 100% !important;
            }

            table[class="campaignImageContainer"] {
                width: 140px !important;
            }

            table[class="campaignImageSpacer"] {
                width: 10px !important;
            }

            td[class="flexibleContainerCellLeft"] {
                padding-right: 20px;
            }

            td[class="flexibleContainerCellRight"] {
                padding-left: 20px;
            }
            /*td[id="footerCell"] td, table[id="footerRow"] td { text-align:center !important;}*/

            table[class="visible-lg-only"], td[class="visible-lg-only"] {
                display: none !important;
            }
        }

        /*////// MOBILE STYLES //////*/
        @media only screen and (max-width: 480px) {
            /*////// CLIENT-SPECIFIC STYLES //////*/
            body {
                width: 100% !important;
                min-width: 100% !important;
            }
            /* Force iOS Mail to render the email at full width. */

            /*////// FRAMEWORK STYLES //////*/
            /*
					CSS selectors are written in attribute
					selector format to prevent Yahoo Mail
					from rendering media query styles on
					desktop.
				*/
            table[id="emailBody"], table[id="headerBody"], table[class="flexibleContainer"], table[class="flexibleContainerSmall"], table[class="flexibleCard"], table[class="campaignImageContainer"] {
                width: 100% !important;
            }

            /*
					The following style rule makes any
					image classed with 'flexibleImage'
					fluid when the query activates.
					Make sure you add an inline max-width
					to those images to prevent them
					from blowing out. 
				*/
            img[class="flexibleImage"], table[class="flexibleContainerHeight"] {
                height: auto !important;
                width: 100% !important;
            }

            /*
					Make buttons in the email span the
					full width of their container, allowing
					for left- or right-handed ease of use.
				*/
            table[class="emailButton"] {
                width: 100% !important;
            }

            td[class="buttonContent"] {
                padding: 0 !important;
            }

                td[class="buttonContent"] a {
                    padding: 15px !important;
                }

            td[class="textContentLast"], td[class="imageContentLast"] {
                padding-top: 20px !important;
            }

            /*////// GENERAL STYLES //////*/
            td[id="bodyCell"] {
                padding-top: 10px !important;
            }

            td[id="mainMenu"] {
                display: none !important;
            }

            table[id="logoContainer"] {
                width: 100% !important;
            }

            td[class="headerFooterCell"] td {
                text-align: center !important;
            }

            td[id="preHeader"] table[class="flexibleContainerSmall"] td {
                padding: 2px !important;
                text-align: center !important;
            }

            td[class="campaignImagesCell"] {
                display: none !important;
            }
        }
    </style>
</head>
<body>
    <form method="post" runat="server" id="mainform">
        <center>
            <table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
                <tbody>
                    <tr>
                        <!-- Pre header 100% width colour band // -->
                        <td width="100%" align="center" valign="top" bgcolor="#F6F5F4" id="preHeader" class="preHeaderLight">
                            <!-- CENTERING TABLE // -->
                            <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
                                <tbody>
                                    <tr>
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
                                                            <asp:HyperLink ID="ViewOnlineUrl" runat="server" Text="View Online" />
                                                            <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                                            <asp:HyperLink ID="ContactUsUrl" runat="server" Text="Contact Us" />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center" valign="top" class="headerCorp" bgcolor="#004b8d" id="header">
                            <sc:Placeholder Key="msg-header" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" id="bodyCell">
                            <!-- EMAIL CONTAINER // -->
                            <table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">

                                <sc:Placeholder Key="msg-body" runat="server" />

                            </table>
                            <!-- // EMAIL CONTAINER -->
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            <!-- CENTERING TABLE // -->
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td align="center" valign="top">
                                            <!-- FLEXIBLE CONTAINER // -->
                                            <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer" id="footerRow">
                                                <tbody>
                                                    <tr>
                                                        <td width="100%" height="20" class="verticalSpacer">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img id="imgFooter" runat="server" class="flexibleImage" alt="footer">
                                                            <%--<sc:FieldRenderer runat="server" ID="ImageFooterField" FieldName="Image Footer" CssClass="flexibleImage" />--%>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- // FLEXIBLE CONTAINER -->
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- // CENTERING TABLE -->
                        </td>
                    </tr>
                    <!-- // SWOOSH - graphic above footer  -->

                    <!-- FOOTER - 100% width colour band // -->
                    <tr>
                        <td width="100%" align="center" valign="top" id="preFooter" bgcolor="#004b8d">
                            <!-- CENTERING TABLE // -->
                            <table class="footerBackground" style="width: 100%; border-collapse: collapse; border-spacing: 0;">
                                <tbody>
                                    <tr>
                                        <td align="center">
                                            <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
                                                <tbody class="footerBackground">
                                                    <tr>
                                                        <td align="center" valign="top">
                                                            <table align="left" width="190" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" valign="top">
                                                                            <asp:HyperLink ID="linkReferenceSite" runat="server">
                                                                                <img src="/Ignia/WAHealth/Resources/Images/icon-website-white.png" height="13" width="16" alt="•" />
                                                                                <span runat="server" id="ReferenceSiteSpan"></span>
                                                                            </asp:HyperLink>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <!-- spacing -->
                                                            <table width="14" align="left" border="0" cellpadding="0" cellspacing="0" class="campaignImageSpacer">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="100%" height="10" class="verticalSpacer">&nbsp;</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <!-- end of spacing -->
                                                            <table align="left" width="190" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="center" valign="top">
                                                                            <img src="/Ignia/WAHealth/Resources/Images/icon-phone-white.png" height="13" width="16" alt="•" />
                                                                            <span runat="server" id="PhoneNumberSpan"></span>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <!-- spacing -->
                                                            <table width="1" align="left" border="0" cellpadding="0" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="100%" height="10" class="verticalSpacer">&nbsp;</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <!-- end of spacing -->
                                                            <table align="Right" width="190" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="right" valign="top">
                                                                            <asp:HyperLink ID="ContactEmailUrl" runat="server">
                                                                                <img src="/Ignia/WAHealth/Resources/Images/icon-email-white.png" height="13" width="16" alt="•" />
                                                                                <span runat="server" id="ContactEmailSpan"></span>
                                                                            </asp:HyperLink>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <!-- Spacing -->
                                                    <tr>
                                                        <td width="100%" height="10" class="verticalSpacer">&nbsp;</td>
                                                    </tr>
                                                    <!-- End of spacing -->
                                                    <tr>
                                                        <td align="center" valign="top">
                                                            <span runat="server" id="AddressSpan"></span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center" valign="top" class="headerFooterCell" bgcolor="#4d4d52" id="footerCell">
                            <table class="footerBottomBackground" style="width: 100%; border-collapse: collapse; border-spacing: 0;" border="0" cellpadding="0" cellspacing="0">

                                <tbody>
                                    <tr>
                                        <td align="center" valign="top">
                                            <!-- CENTERING TABLE // -->
                                            <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
                                                <tbody class="footerBottomBackground">
                                                    <tr>
                                                        <td align="center" valign="top">
                                                            <table width="254" align="left" border="0" cellpadding="0" cellspacing="0" class="flexibleContainer">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" valign="middle">
                                                                            <img src="/Ignia/WAHealth/Resources/Images/DOH-Long-White.png" alt="Department of health" width="254" height="43" />
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
                                                                            <%-- <asp:Hyperlink ID="UnsubscribeUrl" runat="server" Text="Unsubscribe" />  
													<span>&nbsp;|&nbsp;</span>
                                                    <asp:Hyperlink ID="UpdatePreferencesUrl" runat="server" Text="Update Preferences" />  
													<span>&nbsp;|&nbsp;</span>
                                                                            --%><asp:HyperLink ID="PrivacyPolicyUrl" runat="server" Text="Privacy policy" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="top" height="6" class="verticalSpacer">&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="top">
                                                                            <span style="font-size: 10px; color: #e2e5e9">©&nbsp;Department of Health</span>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </center>
    </form>
</body>
</html>
