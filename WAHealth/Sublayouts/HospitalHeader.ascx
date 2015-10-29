<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HospitalHeader.ascx.cs" Inherits="WAHealth.ECM.Ignia.WAHealth.Sublayouts.HospitalHeader" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>


    <table border="0" cellpadding="0" cellspacing="0" width="600" class="flexibleContainer">
        <tbody>
            <tr>
                <td align="center" valign="top">
                    <table width="280" height="50" align="left" border="0" cellpadding="0" cellspacing="0" id="logoContainer">
                        <tbody>
                            <tr>
                                <td align="left" valign="middle">
                                    <sc:FieldRenderer runat="server" ID="ImageField" FieldName="Image" CssClass="logo" Parameters="w=280&h=80"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="120" height="50" align="right" border="0" cellpadding="0" cellspacing="0" class="flexibleContainerHeight">
                        <tbody>
                            <tr>
                                <td>
                                    <!--Add social media here-->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <!--spacing-->
            <tr><td height="20" width="100%"></td></tr>
            <!--end spacing-->
            <tr>
                <td align="left" valign="top" width="100%" id="titleCell">
                    <sc:FieldRenderer runat="server" ID="TitleField" FieldName="Title"/>
                </td>
            </tr>
            <!--spacing-->
            <tr><td height="5" width="100%"></td></tr>
            <!--end spacing-->
            <tr><td align="left" valign="top" width="100%" id="subTitleCell"><sc:FieldRenderer runat="server" ID="SublineField" FieldName="Subline"/></td></tr>
        </tbody>
    </table>
    
