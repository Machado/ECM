<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MonthlyTopic289.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.MonthlyTopic289" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<!-- Sublayout start here -->
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">

    <tr>
        <td align="center" valign="top">
            <!-- CENTERING TABLE // -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                    <tr>
                        <td align="center" valign="top" class="flexibleCardCell">
                            <!-- FLEXIBLE CARD // -->
                            <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleCard">
                                <tbody>
                                    <tr>
                                        <td valign="top">
                                            <!-- COL 1 - IMAGE // -->
                                            <table align="Left" border="0" cellpadding="0" cellspacing="0" width="289" class="flexibleContainer">
                                                <tbody>
                                                    <tr>
                                                        <td width="100%" valign="middle" class="subject">
                                                            <sc:FieldRenderer runat="server" ID="CategoryField" FieldName="Monthly Topic Category" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="top" width="100%">
                                                            <sc:FieldRenderer runat="server" ID="PromoImageField" FieldName="Monthly Topic Image" CssClass="flexibleImage" />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- // COL 1 - IMAGE -->
                                            <!-- COL 2 - TEXT // -->
                                            <table align="Right" border="0" cellpadding="0" cellspacing="0" width="289" class="flexibleContainer">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" valign="top" class="flexibleContainerCellRight">
                                                            <!-- CONTENT TABLE // -->
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <!-- Title -->
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="title2">
                                                                            <sc:FieldRenderer runat="server" ID="AgendaTitleField" FieldName="Monthly Topic Title" />
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
                                                                            <asp:Repeater ID="AgendaLinksRepeater" runat="server">
                                                                                <HeaderTemplate>
                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="linksList">
                                                                                        <tbody>
                                                                                </HeaderTemplate>
                                                                                <ItemTemplate>
                                                                                    <tr>
                                                                                        <td align="left" valign="top" width="15">
                                                                                            <img src="<%=PointerImage %>" height="16" width="12" alt="•"></td>
                                                                                        <td>
                                                                                            <asp:HyperLink runat="server" ID="lnkArticleItem" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </ItemTemplate>
                                                                                <FooterTemplate>
                                                                                    </tbody></table> 
                                                                                </FooterTemplate>
                                                                            </asp:Repeater>
                                                                        </td>
                                                                    </tr>
                                                                    <!-- End of content -->
                                                                </tbody>
                                                            </table>
                                                            <!-- // CONTENT TABLE -->
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- // COL 2 - TEXT -->
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- // FLEXIBLE CARD -->
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- // CENTERING TABLE -->
        </td>
    </tr>
</table>
