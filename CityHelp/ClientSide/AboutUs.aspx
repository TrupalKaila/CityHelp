<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide/ClientMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="CityHelp.ClientSide.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">

    <main id="main">

        <div class="breadcrumbs d-flex align-items-center" style="background-image: url(img/AboutBg.jpg);">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>About</h2>
                <ol>
                    <li><a href="Home.html">Home</a></li>
                    <li>About</li>
                </ol>

            </div>
        </div>

        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row position-relative">

                    <div class="col-lg-7 about-img" style="background-image: url(img/About.jpg);"></div>

                    <div class="col-lg-7">
                        <h2>About Us</h2>
                        <div class="our-story">
                            <h4>Est 2023</h4>
                            <h3>Our Story</h3>
                            <p>CityHelp was born out of a shared vision to build stronger, more resilient cities where every individual has the opportunity to thrive. Recognizing the challenges faced by urban dwellers – from accessing essential services to navigating complex bureaucracies – we set out to create a solution that empowers communities to address their own needs.</p>
                            <ul>
                                <li><i class="bi bi-check-circle"></i><span>We believe in the collective strength of communities.</span></li>
                                <li><i class="bi bi-check-circle"></i><span>Constantly seeking new places added.</span></li>
                                <li><i class="bi bi-check-circle"></i><span>We operate with integrity and transparency.</span></li>
                            </ul>
                            <p>Whether you're a longtime resident passionate about improving your neighborhood or a newcomer looking to connect with your community, we invite you to join us on this journey.</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        <section id="stats-counter" class="stats-counter section-bg">
            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item d-flex align-items-center w-100 h-100">
                            <i class="bi bi-emoji-smile color-blue flex-shrink-0"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="137" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Daily Users</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item d-flex align-items-center w-100 h-100">
                            <i class="bi bi-journal-richtext color-orange flex-shrink-0"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="11" data-purecounter-duration="1" class="purecounter"></span>
                                <p>City</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item d-flex align-items-center w-100 h-100">
                            <i class="bi bi-headset color-green flex-shrink-0"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="24" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Hours Of Support</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="stats-item d-flex align-items-center w-100 h-100">
                            <i class="bi bi-people color-pink flex-shrink-0"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="10" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Hard Workers</p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
    </main>


</asp:Content>
