<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CityHelp.ClientSide.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <section id="hero" class="hero">

        <div class="info d-flex align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6 text-center">
                        <h2 data-aos="fade-down">HELPING YOU IS OUR
                            <br>
                            <span>TOP MOST PRIORITY!</span></h2>
                        <p data-aos="fade-up">Discover your next adventure with our comprehensive city guide website. Explore top attractions, dining spots, activities, and hidden gems. Plan your perfect trip effortlessly.</p>
                    </div>
                </div>
            </div>
        </div>

        <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

            <div class="carousel-item active" style="background-image:url(img/bg1.jpg)"></div>
            <div class="carousel-item" style="background-image: url(img/bg2.jpg)"></div>
            <div class="carousel-item" style="background-image: url(img/bg3.jpg)"></div>
            <div class="carousel-item" style="background-image: url(img/bg4.jpg)"></div>
            <div class="carousel-item" style="background-image: url(img/bg5.jpg)"></div>

            <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
            </a>

            <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
            </a>

        </div>
    </section>
    <main id="main">

        <section id="constructions" class="constructions">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>Places</h2>
                    <p>Your go-to guide for discovering the best of urban life. Find hidden gems, top attractions, dining hotspots, and local insights for an unforgettable city experience. Dive in today!</p>
                </div>

                <div class="row gy-4">

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                        <div class="card-item">
                            <div class="row">
                                <div class="col-xl-5">
                                    <div class="card-bg" style="background-image: url(img/Restaurant1.jpg);"></div>
                                </div>
                                <div class="col-xl-7 d-flex align-items-center">
                                    <div class="card-body">
                                        <h4 class="card-title">Restaurant</h4>
                                        <p> Embark on a journey of taste with our diverse menu, featuring freshly sourced ingredients and inspired flavors from around the world, all served in a cozy and inviting atmosphere that feels just like home.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="card-item">
                            <div class="row">
                                <div class="col-xl-5">
                                    <div class="card-bg" style="background-image: url(img/Theatre1.jpg);"></div>
                                </div>
                                <div class="col-xl-7 d-flex align-items-center">
                                    <div class="card-body">
                                        <h4 class="card-title">Theatre</h4>
                                        <p>With comfortable seating and state-of-the-art facilities, we invite you to indulge in the magic of live entertainment at its finest.Enjoy a night out with friends or a romantic evening with a loved one</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="card-item">
                            <div class="row">
                                <div class="col-xl-5">
                                    <div class="card-bg" style="background-image: url(img/Bank1.jpg);"></div>
                                </div>
                                <div class="col-xl-7 d-flex align-items-center">
                                    <div class="card-body">
                                        <h4 class="card-title">Bank</h4>
                                        <p>With a commitment to security and personalized service, we offer a seamless banking experience tailored to your needs. From cutting-edge digital solutions to friendly in-person assistance.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                        <div class="card-item">
                            <div class="row">
                                <div class="col-xl-5">
                                    <div class="card-bg" style="background-image: url(img/TouristAttraction1.jpg);"></div>
                                </div>
                                <div class="col-xl-7 d-flex align-items-center">
                                    <div class="card-body">
                                        <h4 class="card-title">Tourist Attractions</h4>
                                        <p>Discover the wonders, where adventure and culture collide. Delve into rich history, marvel at breathtaking landscapes, and immerse yourself in vibrant local traditions. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </main>
</asp:Content>
