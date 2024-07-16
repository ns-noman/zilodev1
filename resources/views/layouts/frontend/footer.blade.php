
<!-- footer-area -->
<footer class="footer-area">
    <div class="footer-top pt-65 pb-25">
        <div class="container">
            {{-- <div class="footer-newsletter-wrap footer-newsletter-two">
                <div class="row align-items-center">
                    <div class="col-xl-7 col-lg-6">
                        <div class="newsletter-title">
                            <h4>Subscribe Now !</h4>
                            <span>{{ $basicInfo->title }} By Signing Up To Our Newsletter.</span>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6">
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Enter Your Email....">
                                <button class="btn yellow-btn">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div> --}}
            <div class="footer-alphabet mb-55">
                <div class="row">
                    <div class="col-12">
                        <div class="newsletter-title text-left mb-0">
                            <h4>Find Out More :</h4>
                            <span>Browse Alphabetically :</span>
                            <span><a href="#">A</a></span>
                            <span><a href="#">B</a></span>
                            <span><a href="#">C</a></span>
                            <span><a href="#">D</a></span>
                            <span><a href="#">E</a></span>
                            <span><a href="#">F</a></span>
                            <span><a href="#">G</a></span>
                            <span><a href="#">H</a></span>
                            <span><a href="#">I</a></span>
                            <span><a href="#">J</a></span>
                            <span><a href="#">K</a></span>
                            <span><a href="#">L</a></span>
                            <span><a href="#">M</a></span>
                            <span><a href="#">N</a></span>
                            <span><a href="#">O</a></span>
                            <span><a href="#">P</a></span>
                            <span><a href="#">Q</a></span>
                            <span><a href="#">R</a></span>
                            <span><a href="#">S</a></span>
                            <span><a href="#">T</a></span>
                            <span><a href="#">U</a></span>
                            <span><a href="#">V</a></span>
                            <span><a href="#">W</a></span>
                            <span><a href="#">X</a></span>
                            <span><a href="#">Y</a></span>
                            <span><a href="#">Z</a></span>
                            <span><a href="#">0~9</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget mb-50">
                        <div class="footer-logo mb-30">
                            <a href="{{ url('/home') }}"><img src="{{ asset('public/uploads/basic-info/'. $basicInfo->logo) }}" alt="{{ $basicInfo->title }}" title="{{ $basicInfo->title }}"></a>
                        </div>
                        <div class="footer-text mb-35">
                            <p>{{ $basicInfo->moto }}</p>
                        </div>
                        <div class="footer-social">
                            <ul>
                                <li><a href="{{ $basicInfo->facebook }}"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="{{ $basicInfo->instagram }}"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="{{ $basicInfo->twitter }}"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="{{ $basicInfo->pinterest }}"><i class="fab fa-pinterest-p"></i></a></li>
                                <li><a href="{{ $basicInfo->linkedIn }}"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-3 col-sm-6">
                    <div class="footer-widget mb-50">
                        <div class="fw-title mb-35">
                            <h5>{{ __('translate.customer_serive') }}</h5>
                        </div>
                        <div class="fw-link">
                            <ul>
                                @foreach($custServices as $key => $custService)
                                    <li><a href="{{  url('/services/'.$custService->slug ) }}">{{ $custService->head }}</a></li>
                                @endforeach
                                <li><a href="{{ url('/contact') }}">{{ __('translate.contact') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-3 col-sm-6">
                    <div class="footer-widget mb-50">
                        <div class="fw-title mb-35">
                            <h5>{{ __('translate.quick_links') }}</h5>
                        </div>
                        <div class="fw-link">
                            <ul>
                                @foreach($quickGuides as $key => $quickGuide)
                                    <li><a href="{{  url('/services/'.$quickGuide->slug ) }}">{{ $quickGuide->head }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="footer-widget mb-50">
                        <div class="fw-title mb-35">
                            <h5>{{ __('translate.contacts') }}</h5>
                        </div>
                        <div class="footer-contact">
                            <ul>
                                <li><i class="fas fa-map-marker-alt"></i>{{ $basicInfo->address }}</li>
                                <li><i class="fas fa-headphones"></i>{{ $basicInfo->phone1 }}</li>
                                <li><i class="fas fa-envelope-open"></i>{{ $basicInfo->email }}</li>
                                <li><i class="fas fa-fax"></i>{{ $basicInfo->phone2 }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-wrap copyright-style-two">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="copyright-text">
                        <p>
                            {!! $basicInfo->copyRightName !!}
                        </p>
                        {{-- <p>
                            <p>Copyright © <a href="{{ $basicInfo->copyRightLink }}">{{ $basicInfo->copyRightName }}</a>All Rights Reserved.</p>
                        </p> --}}
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 d-none d-md-block">
                    <div class="payment-method-img text-right">
                        <img src="{{ asset('public/uploads/basic-info/'. $basicInfo->acceptPaymentType) }}" alt="{{ $basicInfo->title }}" title="{{ $basicInfo->title }}">
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer-area-end -->