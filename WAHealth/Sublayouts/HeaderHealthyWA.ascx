<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderHealthyWA.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.HeaderHealthyWA" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
   
<table border="0" cellpadding="0" cellspacing="0" width="600" id="headerBody">
        <!-- spacing -->
        <tr>
            <td height="10" width="100%"></td>
        </tr>
        <!-- End of spacing -->
        <tr>
            <td align="center" valign="top">
                <!-- col 1 -->
                <table width="280" height="80" align="left" border="0" cellpadding="0" cellspacing="0" id="logoContainer">
                    <tbody>
                        <!-- Logo -->
                        <tr>
                            <td align="center" valign="middle">
                                <a href="#"><sc:FieldRenderer runat="server" ID="ImageField" FieldName="Image" CssClass="logo" Parameters="w=280&h=80"/></a>
                            </td>
                        </tr>
                        <!-- end of logo -->
                    </tbody>
                </table>

                <!-- col 2 -->
                <table width="135" height="80" align="right" border="0" cellpadding="0" cellspacing="0" class="flexibleContainerHeight">
                    <tbody>
                        <tr>
                            <td>
                                <!-- start of social icons table -->
                                <table width="135" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td width="45" align="right" valign="middle">
                                                <a href="https://www.facebook.com/#!/pages/Healthy-WA/482333175154333"><img src="/Ignia/WAHealth/Resources/Images/Social-icon-facebook.png" alt="facebook" border="0" style="display:block; border:none; outline:none; text-decoration:none;" class="social-icon"></a>
                                            </td>
                                            <td width="45" align="right" valign="middle">
                                                <a href="https://twitter.com/wahealth"><img src="/Ignia/WAHealth/Resources/Images/Social-icon-twitter.png" alt="twitter" border="0" style="display:block; border:none; outline:none; text-decoration:none;" class="social-icon"></a>
                                            </td>
                                            <td width="45" align="right" valign="middle">
                                                <a href="https://www.youtube.com/user/wahealth"><img src="/Ignia/WAHealth/Resources/Images/Social-icon-youtube.png" alt="YouTube" border="0" style="display:block; border:none; outline:none; text-decoration:none;" class="social-icon"></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- end of social icons table -->
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- end of col 2 -->
            </td>
        </tr>
        <!-- spacing -->
        <tr>
            <td height="10" width="100%"></td>
        </tr>
        <!-- End of spacing -->
        <tr>
            <td align="center" valign="top" width="100%" id="mainMenu">
                <a href="<%#HealthyLiving%>">Healthy Living</a>
                <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <a href="<%#HealthConditions%>">Health Conditions</a>
                <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <a href="<%#TreatmentsAndTests%>">Treatments and Tests</a>
                <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <a href="<%#SafetyAndFirstAid%>">Safety and First Aid</a>
            </td>
        </tr>
    </table>