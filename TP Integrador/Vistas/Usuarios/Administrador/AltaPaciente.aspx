﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.AltaPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Alta Paciente</title>

   <link href="../../Estilos/Estilos.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 0px;
            width: 454px;
        }
        .auto-style4 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 0px;
            width: 156px;
        }
        .auto-style5 {
            position: relative;
            margin-bottom: 20px;
            left: -1px;
            top: 8px;
        }
        .auto-style6 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 10px;
        }
        .auto-style7 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 1px;
        }
        .auto-style8 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 9px;
        }
        .auto-style9 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 8px;
        }
        .auto-style10 {
            position: relative;
            margin-bottom: 20px;
            left: 0px;
            top: 7px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <header>
            <p>Clinica Pacheco</p>
            <nav>
                <ul class="nav-bar">
                    <li><a href="AltaMedico.aspx">Medicos</a></li>
                    <li><a href="AltaPaciente.aspx">Pacientes</a></li>
                    <li><a href="AsignacionTurno.aspx">Turnos</a></li>
                    <li><a href="Informes.aspx">Informes</a></li>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                    <asp:Label ID="lblUsuarioEnSesion" runat="server" CssClass="auto-style1"></asp:Label>
                </ul>
            </nav>
        </header>
        <div class="wrapper">
            <h1><asp:Label ID="lblTituloPaciente" runat="server" Font-Size="XX-Large" Text="Alta Paciente"></asp:Label></h1>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblDniPaciente" runat="server" Text="DNI:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDni" runat="server" CssClass="auto-style5" placeholder="DNI"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblNombrePaciente" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style9" placeholder="Nombre"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblApellidoPaciente" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style8" placeholder="Apellido"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblGeneroPaciente" runat="server" Text="Genero:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="1">Masculino</asp:ListItem>
                            <asp:ListItem Value="2">Femenino</asp:ListItem>
                            <asp:ListItem Value="3">Prefiero no decirlo</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblNacionalidadPaciente" runat="server" Text="Nacionalidad:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlNacionalidad" runat="server" CssClass="input-box">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="ddlNacionalidad" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblFechaNacimientoPaciente" runat="server" Text="Fecha Nacimiento:"></asp:Label>

                    </td>
                    <td class="auto-style7">
                            <input type="date"/></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblDireccionPaciente" runat="server" Text="Direccion:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblProvinciaPaciente" runat="server" Text="Provincia:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="input-box">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblLocalidadPaciente" runat="server" Text="Localidad:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="auto-style6">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblEmailPaciente" runat="server" Text="E-mail:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style9" placeholder="E-mail"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTelefonoPaciente" runat="server" Text="Teléfono:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style10" placeholder="Telefono"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnGuardarPaciente" runat="server" Text="Guardar" CssClass="btn" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
