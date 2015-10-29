<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoryTwoColumn290.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.StoryTwoColumn290" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<!-- Sublayout start here -->
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">
<tr>
    <td align="center" valign="top">
        <!-- CENTERING TABLE // -->
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="center" valign="top">
                    <!-- FLEXIBLE CONTAINER // -->
                    <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
                        <tbody><tr>
                            <td valign="top" class="flexibleCardCell">
                                <asp:Repeater ID="CampaignPanelRepeater" runat="server" ItemType="Sitecore.Data.Items.Item" > 
                                <ItemTemplate>  
                                <!-- COL CARD // -->
                                <table align="<%# GetAlignment(Container.ItemIndex) %>" border="0" cellpadding="0" cellspacing="0" width="290" class="flexibleCard">
                                    <tbody><tr>
                                        <td align="center" valign="top" width="100%" class="imageTopCell">
                                            <a href="<%# GetUrl(Item) %>" target="_blank" class="imageLink">
                                                <sc:FieldRenderer runat="server" ID="PromoImageField" FieldName="Newsletter Image" Item="<%# Item %>" CssClass="flexibleImage"  Parameters="w=290&as=1&bc=ffffff"/>  
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="top" class="flexibleContainerCell">
                                            <!-- COL 1 CONTENT TABLE // -->
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <!-- Title -->
                                                <tbody><tr>
                                                    <td class="title2">
                                                        <a href="<%# GetUrl(Item) %>" target="_blank"><sc:FieldRenderer runat="server" ID="TitleField" FieldName="Newsletter Title" Item="<%# Item %>"/></a>
                                                    </td>
                                                </tr>
                                                <!-- End of Title -->
                                                <!-- spacing -->
                                                <tr>
                                                    <td height="10"></td>
                                                </tr>
                                                <!-- End of spacing -->
                                                <!-- content -->
                                                <tr>
                                                    <td class="textContent">
                                                        <sc:FieldRenderer runat="server" ID="DescriptionField" FieldName="Newsletter Description" Item="<%# Item %>"/>
                                                    </td>
                                                </tr>
                                                <!-- End of content -->
                                                <!-- Spacing -->
                                                <tr>
                                                    <td height="15"></td>
                                                </tr>
                                                <!-- Spacing -->
                                                <!-- Button -->
                                                <tr>
                                                    <td align="right" valign="top" class="bottomShim">
                                                        <table border="0" cellpadding="0" cellspacing="0" class="emailButton">
                                                            <tbody><tr>
                                                                <td align="right" valign="middle" class="buttonContent">
                                                                    <a href="<%# GetUrl(Item) %>" target="_blank"><sc:FieldRenderer runat="server" ID="ButtonTextField" FieldName="Newsletter Button Text" Item="<%# Item %>"/></a>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                                <!-- end of button-->
                                            </tbody></table>
                                            <!-- // COL 1 CONTENT TABLE -->
                                        </td>
                                    </tr>
                                </tbody></table>
                                <!-- // COL 1 CARD -->
                                <!-- spacing -->
                                <table width="1" align="left" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td width="100%" height="20" class="verticalSpacer">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- end of spacing -->
                                    </ItemTemplate>
                            </asp:Repeater> 
                            </td>
                        </tr>
                    </tbody></table>
                    <!-- // FLEXIBLE CONTAINER -->
                </td>
            </tr>
        </tbody></table>
        <!-- // CENTERING TABLE -->
    </td>
</tr>
</table>

