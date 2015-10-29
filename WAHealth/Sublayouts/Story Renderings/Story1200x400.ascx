<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Story1200x400.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.Story_Renderings.Story1200x400" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
 <!-- Sublayout start here -->
<table border="0" cellpadding="0" cellspacing="0" width="600" id="emailBody">
<tr>
    <td align="center" valign="top">
        <!-- CENTERING TABLE // -->
        <!-- The centering table keeps the content tables centered in the emailBody table, in case its width is set to 100%. -->
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="center" valign="top" class="flexibleCardCell">
                    <!-- FLEXIBLE CARD // -->
                    <!-- The flexible card is the same as a flexible container except has a background colour and a border.  
                            It has a set width that gets overridden by the media query. Most content tables within can then be
                            given 100% widths. -->
                    <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleCard">
                        <tbody><tr>
                            <td align="center" valign="top" width="100%" class="">
                                <a href="<%# GetUrl(DataSource) %>" target="_blank" class="imageLink"> 
                                    <sc:FieldRenderer runat="server" ID="ImageField" FieldName="Newsletter Image" Parameters="width=600"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top" width="600" class="flexibleContainerCell">
                                <!-- CONTENT TABLE // -->
                                <!-- The content table is the first element that's entirely separate from the structural framework of the email. -->
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <!-- Title -->
                                    <tbody><tr>
                                        <td class="title1">
                                            <a href="<%#GetUrl(DataSource) %>" target="_blank"><sc:FieldRenderer runat="server" ID="TitleField" FieldName="Newsletter Title"/></a>
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
                                        <td align="right" valign="top" class="bottomShim">
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
                    <!-- // FLEXIBLE CARD -->
                </td>
            </tr>
        </tbody></table>
        <!-- // CENTERING TABLE -->
    </td>  
</tr>
</table>