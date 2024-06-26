<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide/ClientMaster.Master" AutoEventWireup="true" CodeBehind="PlacesMain.aspx.cs" Inherits="CityHelp.ClientSide.PlacesMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url(img/AboutBg.jpg);">
        <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

            <h2>
                <asp:Label runat="server" ID="lblCategory"></asp:Label>
            </h2>
            <ol>
                <li><a href="Home.html">Home</a></li>
                <li>
                    <asp:Label runat="server" ID="liCategory"></asp:Label>
                </li>
            </ol>

        </div>
    </div>
    <section id="projects" class="projects">
        <div class="row" data-aos="fade-up">
            <div class="col-md-5" style="padding-left:50px;">
                <asp:Image runat="server" ID="imgImageURL" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" />
            </div>
            <div class="col-md-7">
                <b>Name : </b>
                <asp:Label ID="lblName" runat="server" text='<%# Eval("Name") %>'></asp:Label>
                <br />
                <b>Rating : </b>
                <asp:Label ID="lblRating" runat="server" text='<%# Eval("Rating") %>'></asp:Label>
                <br />
                <b>Address : </b>
                <asp:Label ID="lblAddress" runat="server" text='<%# Eval("Address") %>'></asp:Label>
                <br />
                <b>ContactNo : </b>
                <asp:Label ID="lblContactNo" runat="server" text='<%# Eval("ContactNo") %>'></asp:Label>
                <br />
            </div>
        </div>
    </section>
</asp:Content>
