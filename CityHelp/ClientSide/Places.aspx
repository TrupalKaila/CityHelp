<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Places.aspx.cs" Inherits="CityHelp.ClientSide.Places" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url(img/AboutBg.jpg);">
        <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

            <h2>
                <asp:Label runat="server" ID="lblCategory"></asp:Label></h2>
            <ol>
                <li><a href="Home.html">Home</a></li>
                <li>
                    <asp:Label runat="server" ID="liCategory"></asp:Label></li>
            </ol>

        </div>
    </div>
    <section id="projects" class="projects">
        <div class="container" data-aos="fade-up">
            <div class="row gy-4 portfolio-container" data-aos="fade-up" data-aos-delay="200">
                <asp:Repeater ID="rptPlaces" runat="server" OnItemCommand="rptPlaces_ItemCommand">
                    <ItemTemplate>
                        <div class="col-md-3 portfolio-item">
                            <div class="portfolio-content h-100">
                                <asp:HyperLink runat="server" ID="imgPlaces" ImageUrl='<%# Eval("ImageURL") %>' NavigateUrl='<%#"~/ClientSide/PlacesMain.aspx?Id=" + Eval("Id").ToString().Trim() %>' Width="100%" />
                                <br />
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' />
                                <br />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
