<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Agenda287.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.Agenda287" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<span id="DataSourceWarning" runat="server" visible="<%#DisplayWarning%>">
    <p><%#Warning%></p>
</span>
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">
    <tr>
        <td align="center" valign="top">
            <!-- CENTERING TABLE // -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="center" valign="top" class="flexibleCardCell">
                        <!-- FLEXIBLE CARD // -->
                        <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleCard">
                            <tr>
                                <td valign="top" class="leftBorderCell">
                                    <!-- COL 1 - ISSUE CONTENTS // -->
                                    <table align="Left" border="0" cellpadding="0" cellspacing="0" width="287" class="flexibleContainer">
                                        <tr>
                                            <td align="center" valign="top" class="flexibleContainerCellLeft">
                                                <!-- CONTENT TABLE // -->
                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                    <!-- Title -->
                                                    <tr>
                                                        <td class="title2">
                                                            <a href="<%# GetUrl(DataSource) %>" target="_blank">
                                                                <sc:FieldRenderer runat="server" ID="AgendaTitleField" FieldName="Agenda Title" />
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <!-- End of Title -->
                                                    <!-- spacing -->
                                                    <tr>
                                                        <td width="100%" height="10" class="verticalSpacer">&nbsp;</td>
                                                    </tr>
                                                    <!-- End of spacing -->
                                                    <!-- content -->
                                                    <tr>
                                                        <td class="textContent">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%" class="linksList">
                                                                <asp:Repeater ID="AgendaLinksRepeater" runat="server">
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td align="left" valign="top" width="15">
                                                                                <img src="<%=PointerImage %>" height="16" width="12" alt="•"></td>
                                                                            <td>
                                                                                <asp:HyperLink runat="server" ID="lnkArticleItem" />
                                                                            </td>
                                                                        </tr>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <!-- End of content -->
                                                </table>
                                                <!-- // CONTENT TABLE -->
                                            </td>
                                        </tr>

                                    </table>
                                    <!-- // COL 1 - TABLE OF CONTENTS -->
                                    <!-- COL 2 - IMAGE // -->
                                    <table align="Right" border="0" cellpadding="0" cellspacing="0" width="287" class="visible-lg-only">
                                        <tr>
                                            <td align="center" valign="top" width="100%">
                                                <sc:FieldRenderer runat="server" ID="PromoImageField" FieldName="Agenda Image" CssClass="flexibleImage" Parameters="w=287&as=1" />
                                            </td>
                                        </tr>

                                    </table>
                                    <!-- // COL 2 - IMAGE -->
                                </td>
                            </tr>
                        </table>
                        <!-- // FLEXIBLE CARD -->
                    </td>
                </tr>
            </table>
            <!-- // CENTERING TABLE -->
        </td>
    </tr>
</table>
