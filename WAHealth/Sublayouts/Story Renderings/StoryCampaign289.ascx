<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoryCampaign289.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.StoryCampaign289" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<!-- Sublayout start here -->
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">
    <tr>
        <td align="center" valign="top">
            <!-- CENTERING TABLE // -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                    <tr>
                        <td align="center" valign="top" class="campaignImagesCell">
                            <!-- FLEXIBLE CONTAINER // -->
                            <!-- 598 px width to make up for the lack of border on left and right -->
                            <table border="0" cellpadding="0" cellspacing="0" width="598" class="flexibleContainer">
                                <tbody>
                                    <tr>
                                        <td valign="top">
                                            <asp:Repeater ID="CampaignPanelRepeater" runat="server">
                                                <ItemTemplate>
                                                    <!-- COL IMAGE // -->
                                                    <table align="Left" border="0" cellpadding="0" cellspacing="0" width="190" class="campaignImageContainer">
                                                        <tbody>
                                                            <tr>
                                                                <td align="center" valign="top" width="100%">
                                                                    <asp:Image runat="server" ID="PromoImageField" CssClass="flexibleImage" />
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
                                                </ItemTemplate>
                                            </asp:Repeater>
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
</table>
