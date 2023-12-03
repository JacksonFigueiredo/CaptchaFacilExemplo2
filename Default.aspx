<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CaptchaFacilExemplo2WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section style="text-align: center; margin-top: 20px;">
            <div style="margin-bottom: 10px;">
                <asp:TextBox ID="txtLogin" runat="server" CssClass="form-control" Style="width: 49%; display: inline-block;" Placeholder="Usuário"></asp:TextBox>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="form-control" Style="width: 49%; display: inline-block; margin-left: 2%;" Placeholder="Senha"></asp:TextBox>
            </div>
            <div style="margin-bottom: 10px;">
                <asp:Image ID="imgCaptcha" runat="server" />
            </div>
            <div style="margin-bottom: 10px;">
                <asp:TextBox ID="txtCaptcha" runat="server" CssClass="form-control" Placeholder="Digite o Captcha"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Entrar" OnClick="btnLogin_Click" />
            </div>
        </section>
    </main>

</asp:Content>
