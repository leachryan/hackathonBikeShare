<%@ Page Language="C#" AutoEventWireup="true"
     CodeBehind="index.aspx.cs" 
    Inherits="bikeShareWebApp.index"
    Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bike Share Services</title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="refresh" content="10" />
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
        <h1>Bike Dash</h1>
        <!--<asp:Button ID="bikeDataButton" runat="server" Text="Click to refresh" /> OnClick="bikeDataButton_Click" -->
        <center>
            <table>
                <tr>
                    <td><asp:Label CssClass="headerBold" runat="server" Font-Underline="true">Station Name</asp:Label></td>
                    <td><asp:Label CssClass="headerBold" runat="server" Font-Underline="true">Station Address</asp:Label></td>
                    <td><asp:Label CssClass="headerBold" runat="server" Font-Underline="true">Bikes Available</asp:Label></td>
                    <td><asp:Label CssClass="headerBold" runat="server" Font-Underline="true">Docks Available</asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel1"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B053'32.9%22N+96%C2%B048'24.9%22W/@46.89248,-96.8091157,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.89248!4d-96.806927">
                            <asp:Label runat="server" ID="addrLabel1">
                            </asp:Label>
                        </a></td>
                    <td><asp:Label runat="server" ID="avail1"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks1"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel2"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B054'08.8%22N+96%C2%B047'52.1%22W/@46.9022319,-96.7989619,468m/data=!3m1!1e3!4m5!3m4!1s0x0:0x0!8m2!3d46.90244!4d-96.7978">
                            <asp:Label runat="server" ID="addrLabel2">
                            </asp:Label>
                        </a></td>
                    <td><asp:Label runat="server" ID="avail2"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks2"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel3"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B053'49.0%22N+96%C2%B048'09.2%22W/@46.89691,-96.8051124,662m/data=!3m1!1e3!4m5!3m4!1s0x0:0x0!8m2!3d46.89695!4d-96.80257">
                        <asp:Label runat="server" ID="addrLabel3"></asp:Label>
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail3"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks3"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel4"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B053'44.5%22N+96%C2%B048'28.1%22W/@46.8958618,-96.808441,117m/data=!3m1!1e3!4m5!3m4!1s0x0:0x0!8m2!3d46.89569!4d-96.80781">
                        <asp:Label runat="server" ID="addrLabel4"></asp:Label> 
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail4"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks4"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel5"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B053'05.0%22N+96%C2%B047'15.6%22W/@46.8846295,-96.7893408,557m/data=!3m1!1e3!4m5!3m4!1s0x0:0x0!8m2!3d46.88471!4d-96.78766">
                        <asp:Label runat="server" ID="addrLabel5"></asp:Label> 
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail5"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks5"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel6"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'52.0%22N+96%C2%B047'14.6%22W/@46.8812027,-96.7877222,117m/data=!3m1!1e3!4m5!3m4!1s0x0:0x0!8m2!3d46.8811!4d-96.7874">
                        <asp:Label runat="server" ID="addrLabel6"></asp:Label>
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail6"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks6"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel7"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'41.9%22N+96%C2%B047'14.8%22W/@46.8783,-96.7896387,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.8783!4d-96.78745">
                        <asp:Label runat="server" ID="addrLabel7"></asp:Label> 
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail7"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks7"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel8"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'45.0%22N+96%C2%B047'33.9%22W/@46.87917,-96.7949387,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.87917!4d-96.79275">
                        <asp:Label runat="server" ID="addrLabel8"></asp:Label> 
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail8"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks8"></asp:Label></td>



                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel9"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'32.9%22N+96%C2%B047'23.9%22W/@46.87581,-96.7921487,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.87581!4d-96.78996">
                        <asp:Label runat="server" ID="addrLabel9" ></asp:Label>
                        <a />
                    </td>
                    <td><asp:Label runat="server" ID="avail9"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks9"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel10"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'32.9%22N+96%C2%B047'08.4%22W/@46.8758,-96.7878587,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.8758!4d-96.78567">
                        <asp:Label runat="server" ID="addrLabel10" ></asp:Label>
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail10"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks10"></asp:Label></td>


                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="stationNameLabel11"></asp:Label></td>
                    <td>
                        <a href="https://www.google.com/maps/place/46%C2%B052'23.2%22N+96%C2%B047'11.2%22W/@46.8731,-96.7886287,788m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x0!8m2!3d46.8731!4d-96.78644">
                        <asp:Label runat="server" ID="addrLabel11" ></asp:Label>
                        </a>
                    </td>
                    <td><asp:Label runat="server" ID="avail11"></asp:Label></td>
                    <td><asp:Label runat="server" ID="docks11"></asp:Label></td>


                </tr>

            </table>
            </center>
    </div>
    </form>
</body>
</html>
