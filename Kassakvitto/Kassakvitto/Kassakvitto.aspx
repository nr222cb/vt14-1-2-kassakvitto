<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kassakvitto.aspx.cs" Inherits="Kassakvitto.Kassakvitto" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="sv">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="Styles/MyStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server"> <%-- defaultbutton="Calculate" --%>
        <div>
            <p>Total köpesumma:</p>
            <%-- Total köpesumma --%>
            <asp:TextBox ID="TotalSum" runat="server" TextMode="Number" Autofocus="Autofocus"></asp:TextBox><span>kr</span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får inte vara tomt." ControlToValidate="TotalSum" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Texten måste kunna tolkas som flyttal som måste vara större än noll." ControlToValidate="TotalSum" Display="Dynamic" Operator="GreaterThan" Type="Double" ValueToCompare="0" SetFocusOnError="True"></asp:CompareValidator>
            <p>
                <asp:Button ID="Calculate" runat="server" Text="Beräkna rabatt" OnClick="Calculate_Click" />
            </p>

            <%-- Kvitto --%>
            <asp:Panel ID="ReceiptPanel" runat="server" Visible="False">
                <div class="paper">
                <h1>Kvitto</h1>
                <h2>Kondis NoRi</h2>
                <p>Org nr xxxxxx </p>
                <dl>
                    <dt>Totalt
                    </dt>
                    <dd>
                        <asp:Label ID="SubTotal" runat="server" Text=""></asp:Label>
                    </dd>
                    <dt>Rabattsats
                    </dt>
                    <dd>
                        <asp:Label ID="DiscountRate" runat="server" Text=""></asp:Label>
                    </dd>
                    <dt>Rabatt
                    </dt>
                    <dd>
                        <asp:Label ID="Discount" runat="server" Text=""></asp:Label>
                    </dd>
                    <dt>Att betala
                    </dt>
                    <dd>
                        <asp:Label ID="Total" runat="server" Text=""></asp:Label>
                    </dd>
                </dl>
                <p>Välkommen åter!</p>
                <div class="paper_corner_lf"></div>
                <div class="paper_corner_rt"></div>
                </div>
            </asp:Panel>

        </div>
    </form>
    <script src="Scripts/MyJavaScript.js" type="text/javascript"></script>
</body>
</html>
