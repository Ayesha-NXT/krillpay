@extends('frontend::layouts.master')
@section('description', $sitedetail->meta_descriptions)
@section('keywords', $sitedetail->meta_keywords)
@section('fb_image', $sitedetail->logo)
@section('fb_url', Request::url())
@section('title', $page_header)
@section('content')

<!-- particles.js container --> 
<div id="particles-js"></div> 
<!-- Banner Section start -->
<section class="banner-section index">
    <div class="overlay">
        <div class="shape-area">
            <!--<img src="{{ asset('frontend/assets/images/banner-box.png') }}" class="obj-1" alt="image">-->            
            <img src="{{ asset('frontend/assets/images/banner-rocket.png') }}" class="obj-3" alt="image">
            <img src="{{ asset('frontend/assets/images/banner-clock.png') }}" class="obj-4" alt="image">
        </div>
        <div class="banner-content">
            <div class="container">
                <div class="content-shape">
                    <img src="{{ asset('frontend/assets/images/banner-wallet.png') }}" class="obj-1" alt="image">
                </div>
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="main-content">
                            <div class="top-area section-text">

                                <h3 class="sub-title">
                                    {{$sitedetail->homepage_first_section_title}}
                                </h3>
                                
                                <p class="xlr text-dark">{!!$sitedetail->homepage_first_section_desc!!}</p>
                            </div>
                            <div class="bottom-area d-xxl-flex">
                                <a data-toggle="modal" data-target="#demoModal" class="cmn-btn join-mail">Join our mailing list</a>
                                <a class="cmn-btn active d-none mfp-iframe popupvideo" href="https://www.youtube.com/watch?v=tDad6tsZU1Y">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-4 col-xl-5 col-md-6">
                        <div class="banner_img">
                            <!--<img src="{{ asset($sitedetail->homepage_first_banner_image) }}" alt="" class="w-100">-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="demoModal"  tabindex="-1" role="dialog" aria-labelledby="demoModal" aria-hidden="true">
    <div class="modal-dialog   modal-dialog-centered  " role="document">
        <div class="modal-content">
            <button type="button" class="close light" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body" style="background-image: url('https://images.unsplash.com/photo-1536147116438-62679a5e01f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')">
                <div>
                    <div class="px-sm-4 py-sm-4 ">
                        <div class=" bg-light rounded px-4 py-4">
                            <div class="text-center" >
                                <img src="{{asset('frontend/assets/images/gift.svg') }}" alt="">
                            </div>
                            <h2 class="pt-sm-3 text-center">Join our Mailing List</h2>
                            <!--<p class="text-muted text-center">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                            </p>-->
                            <form id="subscribe-form">
                                @csrf
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" name="name" aria-describedby="emailHelp" placeholder="Enter Name">
                                    <span id="newsNameError" class="text-danger"></span>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    <span id="NewsletterEmail" class="text-danger"></span>
                                </div>

                                <button id="newsLetterBtn" class="btn cmn-btn btn-block btn-cta w-100 mt-4">Subscribe</button>
                                <!--<button id="hey" class="btn cmn-btn btn-block btn-cta w-100 mt-4">Subscribe</button>-->
                            </form>
                            <span class="text-success" id="success_message_news_letter"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Section end -->

    @foreach($features as $k=>$item)
    @if($loop->iteration % 2 == 0)
    <section class="features-section ">
        <div class="overlay pt-60">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-6">
                        <div class="top-section" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <span class="head-icon d-flex mb-4 align-items-center">
                                <img src="{{ asset('frontend/assets/images/bell.png') }}" alt="icon" class="bellicon">
                            </span>
                            <h5 class="sub-title">{{ $item->sub_title }}</h5>
                            <h2 class="title">{{ $item->title }}</h2>
                            <p>{!! $item->description !!}</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-end">
                        <div class="img-area" data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <img src="{{ asset($item->image) }}" alt="image" class="w-500">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @else
    <section class="features-section features-section-two">
        <div class="overlay pt-60">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-6">
                        <div class="img-area" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <img src="{{ asset($item->image) }}" alt="image" class="w-500">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="top-section" data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <span class="head-icon d-flex mb-4 align-items-center">
                                <img src="{{ asset('frontend/assets/images/bell.png') }}" alt="icon" class="bellicon" >
                            </span>
                            <h5 class="sub-title">{{ $item->sub_title }}</h5>
                            <h2 class="title">{{ $item->title }}</h2>
                            <p style="color:black;">{!! $item->description !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @endif
    @endforeach
    <!-- Our Solutions start -->
    <section class="our-solutions mt-80">
        <div class="overlay pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section-header dark-sec text-center" data-aos="fade-up" data-aos-duration="1300">
                            <!--<h5 class="sub-title">Provinding the best services</h5>-->                       
                            <h3 class="title" >Multi-layered security to protect your money</h3>
                            <p>{!! $sitedetail->service_header !!}</p>
                        </div>
                    </div>
                </div>
                <div class="row cus-mar">
                    @foreach($services as $item)
                    <div class="col-xl-3 col-6" data-aos="fade-up" data-aos-duration="1800">
                        <div class="single-item">
                            <img src="{{ asset($item->image) }}" alt="icon">
                            <h5>{{ $item->title }}</h5>
                            <p>{!! $item->description !!}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <!-- Our Solutions end -->
    <!-- App In start -->
    <section class="features-section app-download mt-300">
        <div class="overlay pt-30 pb-30">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-6" style="margin: auto">
                        <div class="top-section" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <!-- <h5 class=" text-white sub-title">Download our mobile app</h5>-->                        
                            <h3 class=" text-white title">Our digital banking app</h3>
                            <p class="text-white">{!! $sitedetail->download_header !!}</p>
                        </div>
                        <div class="button-group d-flex align-items-center flex-wrap mt-4" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <a data-toggle="modal" data-target="#demoModal2" class="cmn-btn join-mail2" style="cursor: pointer;">Join our mailing list</a>
                            <!--<a href="{{ $sitedetail->app_link }}" target="_blank" class="cmn-btn green-btn">Download Now</a>join our waitlist.-->                    </div>
                        </div>
                    <div class="col-lg-6 text-end">
                        <div class="img-area" data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
                            <img src="{{ asset($sitedetail->mobile_app_image) }}" alt="image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- App In end -->
<div class="modal fade "   id="demoModal2"  tabindex="-1" role="dialog" aria-labelledby="demoModal2" aria-hidden="true">
    <div class="modal-dialog   modal-dialog-centered  " role="document">
        <div class="modal-content">
            <button type="button" class="close light" data-dismiss="modal"
                    aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body" style="background-image: url('https://images.unsplash.com/photo-1536147116438-62679a5e01f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')">
                <div>
                    <div class="px-sm-4 py-sm-4 ">
                        <div class=" bg-light rounded px-4 py-4">
                            <div class="text-center" >
                                <img src="{{asset('frontend/assets/images/gift.svg') }}" alt="">
                            </div>
                            <h2 class="pt-sm-3 text-center">Join our Mailing List</h2>
                            <!-- <p class="text-muted text-center">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                            </p>-->
                            <form id="subscribe-form2">
                                @csrf
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" name="name" aria-describedby="emailHelp" placeholder="Enter Name">
                                    <span id="newsNameError2" class="text-danger"></span>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    <span id="NewsletterEmail2" class="text-danger"></span>
                                </div>

                                <button id="newsLetterBtn2" class="btn cmn-btn btn-block btn-cta w-100 mt-4">Subscribe</button>
                                <!--  <button id="hey" class="btn cmn-btn btn-block btn-cta w-100 mt-4">Subscribe</button>-->                 
                            </form>
                                <span class="text-success" id="success_message_news_letter2"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Testimonials In start -->
<!--<section class="testimonials bg-white">
    
    <div class="overlay pt-120 pb-120">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="section-header text-center">
                        <h5 class="sub-title">Testimonials</h5>
                        <h3 class="title">Don't take our word for it</h3>
                        <p>{!! $sitedetail->testimonial_header !!}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="testimonials-carousel">
                    @foreach($testimonials as $item)
                    <div class="slide-item">
                        <div class="single-slide d-flex">
                            <div class="thumb">
                                <img src="{{ asset($item->image) }}" alt="image" class="max-un">
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <img src="{{ asset('frontend/assets/images/quote.png') }}" alt="quote">
                                    {{-- <h5 class="mt-4">“I love KrillPay, they're the best”</h5> --}}
                                    <p class="xxlr mt-4 text-dark">
                                        “ {!! $item->description !!}
                                    </p>
                                </div>
                                <div class="bottom-content mt-4">
                                    <h5 class="name text-dark">{{ $item->name }}</h5>
                                    <span class="country text-dark"> {{ $item->designation }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>-->
    <!-- Testimonials In end -->
    <!-- Faq In start -->
    @endsection


    <script src="https://d3js.org/d3.v3.min.js"></script>
    <script src="https://d3js.org/topojson.v1.min.js"></script>

    <script>
        var width = 620,
            height = 620,
            speed = -1e-2,
            start = Date.now();

        var sphere = {type: "Sphere"};

        var projection = d3.geo.orthographic()
            .scale(width / 2.1)
            .translate([width / 2, height / 2])
            .precision(.5);

        var graticule = d3.geo.graticule();
        window.onload = function () {
            var canvas = d3.select(".banner_img").append("canvas")
            .attr("width", width)
            .attr("height", height);

            var context = canvas.node().getContext("2d");
            
            var path = d3.geo.path()
                .projection(projection)
                .context(context);

            d3.json("https://unpkg.com/world-atlas@1/world/110m.json", function(error, topo) {
            if (error) throw error;

            var land = topojson.feature(topo, topo.objects.land),
                grid = graticule();

            d3.timer(function() {
                context.clearRect(0, 0, width, height);

                projection.rotate([speed * (Date.now() - start), -15]).clipAngle(90);

                context.beginPath();
                path(sphere);
                context.lineWidth = 1;
                // globe stroke color
                context.strokeStyle = "#f2f3f9";
                context.stroke();
                context.fillStyle = "#a4a4ba";
                context.fill();

                projection.clipAngle(180);

                context.beginPath();
                path(land);
                //inner globe land color
                context.fillStyle = "#f2f3f9";
                context.fill();

                context.beginPath();
                path();
                context.lineWidth = .5;
                //axis line color
                // context.strokeStyle = "black";
                context.stroke();

                projection.clipAngle(90);

                context.beginPath();
                path(land);
                //outer globe land color
                context.fillStyle = "#e6e6f9";
                context.fill();
                context.lineWidth = .5;
                //land stroke
                context.strokeStyle = "#fff";
                context.stroke();
            });
            });

            d3.select(self.frameElement).style("height", height + "px");
        }
    </script>
    <script src="{{ asset('frontend/assets/js/particles.js') }}"></script>
