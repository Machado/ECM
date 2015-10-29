<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Story289.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.Story289" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<!-- Sublayout start here -->
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">
<tr>
    <td align="center" valign="top">
        <!-- CENTERING TABLE // -->
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="center" valign="top" class="flexibleCardCell">
                    <!-- FLEXIBLE CARD // -->
                    <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleCard">
                        <tbody><tr>
                            <td valign="top">
                                <!-- COL 1 - IMAGE // -->
                                <table align="Left" border="0" cellpadding="0" cellspacing="0" width="289" class="flexibleContainer">
                                    <tbody><tr>
                                        <td align="center" valign="top" width="100%">
                                            <a href="<%# GetUrl(DataSource) %>" target="_blank" class="imageLink">
                                                <sc:FieldRenderer runat="server" ID="ImageField" FieldName="Newsletter Image" CssClass="flexibleImage"/> 
                                            </a>
                                        </td>
                                    </tr>
                                </tbody></table>
                                <!-- // COL 1 - IMAGE -->
                                <!-- COL 2 - TEXT // -->
                                <table align="Right" border="0" cellpadding="0" cellspacing="0" width="289" class="flexibleContainer">
                                    <tbody><tr>
                                        <td align="center" valign="top" class="flexibleContainerCellRight">
                                            <!-- CONTENT TABLE // -->
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <!-- Title -->
                                                <tbody><tr>
                                                    <td class="title2">
                                                        <a href="<%# GetUrl(DataSource) %>" target="_blank"><sc:FieldRenderer runat="server" ID="TitleField" FieldName="Newsletter Title"/></a>
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
                                                        <sc:FieldRenderer runat="server" ID="DescriptionField" FieldName="Newsletter Description"/>
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
                                                    <td align="right" valign="top">
                                                        <table border="0" cellpadding="0" cellspacing="0" class="emailButton">
                                                            <tbody><tr>
                                                                <td align="right" valign="middle" class="buttonContent">
                                                                    <a href="<%# Sitecore.Links.LinkManager.GetItemUrl(DataSource) %>"> 
                                                                        <sc:FieldRenderer runat="server" ID="ButtonTextField" FieldName="Newsletter Button Text"/>
                                                                    </a> 
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                                <!-- end of button-->
                                            </tbody></table>
                                            <!-- // CONTENT TABLE -->
                                        </td>
                                    </tr>
                                </tbody></table>
                                <!-- // COL 2 - TEXT -->
                            </td>
                        </tr>
                    </tbody></table>
                    <!-- // FLEXIBLE CARD -->
                </td>
            </tr>
        </tbody></table>
        <!-- // CENTERING TABLE -->
    </td>
</tr>
</table>