<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="Bulbizi.KayitOl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Üye Kayıt Sayfası | bulbizi.com</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/3-col-portfolio.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body style="background-color: #efefef">
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: white; padding-top: 30px; padding-bottom: 30px;">
            <div class="container">
                <div class=" navbar-collapse">
                    <p class="text-center">
                        <img src="images/logo.png" class="img-responsive" alt="bulbizi_logo" />
                    </p>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

       
        <div class="col-xs-4" style="border: 1px #000000 solid; background-color: white; padding: 20px">
            <div class="col-xs-12">
                <p class="text-left">
                    <h2 style="color: #1562a3; font-weight: 600;">
                        <asp:Label ID="lblBaslik" runat="server" Text="Label"></asp:Label>
                    </h2>
                </p>
            </div>
        </div>
        <div class="container">
            <div class="row"></div>
        </div>
        <div class="col-xs-4" style="border: 1px #000000 solid; background-color: white; padding: 20px">
            <div class="col-xs-12">
                <p class="text-left">
                    <asp:RadioButton ID="rdGirisYap" runat="server" Text="Giriş Yap" GroupName="a" AutoPostBack="True" OnCheckedChanged="rdGirisYap_CheckedChanged" />
                </p>
                <p class="text-left">
                    <asp:RadioButton ID="rdUyeOl" runat="server" Text="Üye Ol" GroupName="a" AutoPostBack="True" Checked="True" />
                </p>
            </div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="row"></div>
        </div>
        <asp:Panel ID="PanelUyeOl" runat="server" Visible="false">
            <asp:UpdatePanel ID="UpdatePanelUyeOl" runat="server">
                <ContentTemplate>

                    <%--   <div class="container" style="border: 1px #000000 solid; background-color: white; padding: 20px">
                        <div class="row">--%>
                    <div class="col-xs-4" style="border: 1px #000000 solid; background-color: white; padding: 20px">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Ad-Soyad
                            <span runat="server" visible="true" style="color: red" id="spanAdSoyad">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtAdSoyad"></asp:RequiredFieldValidator>
                            </span>
                                </label>
                                <asp:TextBox ID="txtAdSoyad" CssClass="form-control" runat="server" placeholder="Ad-Soyad" OnTextChanged="txtAdSoyad_TextChanged"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    Email
                            <span runat="server" visible="true" style="color: red" id="spanEmail">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                            </span>
                                </label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    Şifre
                            <span runat="server" visible="true" style="color: red" id="spansifre">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtSifre"></asp:RequiredFieldValidator>
                            </span>
                                </label>
                                <asp:TextBox ID="txtSifre" CssClass="form-control" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    İl
                            <span runat="server" visible="true" style="color: red" id="spanIl">*
                            </span>
                                </label>
                                <asp:DropDownList ID="ddIl" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    İlçe
                            <span runat="server" visible="true" style="color: red" id="spanIlce">*
                            </span>
                                </label>
                                <asp:DropDownList ID="ddIlce" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <asp:Button ID="btnKaydol" CssClass="btn btn-primary" runat="server" Text="Kaydol" />
                        </div>
                    </div>
                    <%--   </div>
                    </div>--%>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnKaydol" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
        <div class="container">
            <div class="row"></div>
        </div>
        <asp:Panel ID="PanelGirisYap" runat="server">
            <asp:UpdatePanel ID="UpdatePanelGirisYap" runat="server">
                <ContentTemplate>
                    <div class="col-xs-4" style="border: 1px #000000 solid; background-color: white; padding: 20px">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    Email
                            <span runat="server" visible="true" style="color: red" id="span2">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtEmailGiris"></asp:RequiredFieldValidator>
                            </span>
                                </label>
                                <asp:TextBox ID="txtEmailGiris" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">
                                    Şifre
                            <span runat="server" visible="true" style="color: red" id="span3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtSifreGiris"></asp:RequiredFieldValidator>
                            </span>
                                </label>
                                <asp:TextBox ID="txtSifreGiris" CssClass="form-control" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnGiris" CssClass="btn btn-primary" runat="server" Text="Giriş Yap" />
                        </div>
                    </div>

                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnGiris" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
        <div class="container">
            <div class="row"></div>
        </div>
        <footer class="panel-footer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-8">
                        <a href="#" style="font-size: 12px">Anasayfa </a>|
                        <a href="#" style="font-size: 12px">Biz Kimiz? </a>| 
                        <a href="#" style="font-size: 12px">Müşterilerimiz </a>|
                         <a href="#" style="font-size: 12px">İletişim </a>
                    </div>
                </div>
            </div>

        </footer>


    </form>


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
