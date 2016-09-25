<%@ Page Language="C#" AutoEventWireup="true"
     CodeBehind="index.aspx.cs" 
    Inherits="bikeShareWebApp.index"
    Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <!--<div id="testDiv">
        <asp:Label ID="testLabel" runat="server">Test label</asp:Label>
        <asp:Button ID="testButton" runat="server" Text="test button"/> onclick
        <asp:TextBox ID="testBox" runat="server" Width="360px" SelectionMode="Single" Height="70px" TextMode="MultiLine" Enabled="False" BackColor="Silver"></asp:TextBox>
    </div>
    -->
    <div id="bikeDiv">
        <h1>Bike Share Bikes</h1>
        <!--<asp:Button ID="bikeDataButton" runat="server" Text="Click to refresh" /> OnClick="bikeDataButton_Click" -->
            <table>
                <tr>
                    <td><asp:Label runat="server" Font-Underline="true">Station Name</asp:Label></td>
                    <td><asp:Label runat="server" Font-Underline="true">Station Address</asp:Label></td>
                    <td><asp:Label runat="server" Font-Underline="true">Bikes Available</asp:Label></td>
                    <td><asp:Label runat="server" Font-Underline="true">Docks Available</asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel1"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel1"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail1"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks1"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel2"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel2"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail2"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks2"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel3"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel3"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail3"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks3"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel4"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel4"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail4"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks4"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel5"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel5"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail5"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks5"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel6"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel6"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail6"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks6"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel7"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel7"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail7"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks7"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel8"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel8"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail8"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks8"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel9"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel9"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail9"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks9"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel10"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel10"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail10"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks10"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel11"></asp:Label></td>
                    <td><asp:Label runat="server" ID="addrLabel11"></asp:Label></td>
                    <td><asp:Label runat="server" ID="avail11"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks11"></asp:Label></td>


                </tr>

            </table>
    </div>
    </form>
</body>
</html>
