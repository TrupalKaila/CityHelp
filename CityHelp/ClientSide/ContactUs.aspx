<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CityHelp.ClientSide.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <main id="main">

        <div class="breadcrumbs d-flex align-items-center" style="background-image: url('img/contact1.jpg');">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>Contact</h2>
                <ol>
                    <li><a href="Home.aspx">Home</a></li>
                    <li>Contact</li>
                </ol>

            </div>
        </div>

        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row gy-4">

                    <div class="col-lg-4 col-md-6">
                        <div class="info-item d-flex flex-column justify-content-center align-items-center">
                            <i class="bi bi-envelope"></i>
                            <h3>Email Us</h3>
                            <p>mumbaicityhelp@help.in</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="info-item  d-flex flex-column justify-content-center align-items-center">
                            <i class="bi bi-telephone"></i>
                            <h3>Call Us</h3>
                            <p>+91 96196 20142</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="info-item d-flex flex-column justify-content-center align-items-center">
                            <i class="bi bi-whatsapp"></i>
                            <h3>Chat with Us</h3>
                            <a href="https://api.whatsapp.com/send?phone=919619620142">Click here</a>
                        </div>
                    </div>
                </div>

                <br>

                <div class="row gy-4">
                    <div class="col-lg-12">
                        <div class="info-item  d-flex flex-column justify-content-center align-items-center">
                            <i class="bi bi-map"></i>
                            <h3>Our Address</h3>
                            <p>Capital Market, Ravapar Chowk, Ravapar Road, Morbi - 363641</p>
                        </div>
                    </div>
                </div>

                <div class="row gy-4 mt-1">
                    <div class="col-lg-12 ">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14712.423820682361!2d70.8263594!3d22.7985375!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39598da17623ba9b%3A0x95f0fa55f7d00704!2sCapital%20Market!5e0!3m2!1sen!2sin!4v1712854924982!5m2!1sen!2sin"           frameborder="0" width="100%" height="384px" style="border: 0;" allowfullscreen></iframe>
                    </div>
                </div>

            </div>
        </section>
    </main>
</asp:Content>
