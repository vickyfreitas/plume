<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html><!-- This site was totally hand made -->
<!-- Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eeead" data-wf-site="64f615e4cfda04626e2eee44">
<head>
    <meta charset="utf-8">
    <title>Our Team</title>
    <meta content="Our Team" property="og:title">
    <meta content="Our Team" property="twitter:title">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="/css/styles.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script type="text/javascript">WebFont.load({google: {families: ["Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic", "Oswald:200,300,400,500,600,700", "Inter:regular,500,600,700", "Libre Baskerville:regular,italic,700", "Volkhov:regular,italic,700,700italic", "Noto Serif:regular,italic,700,700italic"]}});</script>
    <script type="text/javascript">!function (o, c) {
        var n = c.documentElement, t = " w-mod-";
        n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
    }(window, document);</script>
    <script type="text/javascript" src="/js/navscript.js"></script>
    <link href="/images/Favicon 1-2.png" rel="shortcut icon" type="image/x-icon">
    <link href="/images/webclip.svg" rel="apple-touch-icon">
</head>
<body>
<!-- navbar tablet and below -->
<div class="nav-wrapper" style="background-image: url('/images/Fotos.png')">
    <div class="nav-leftwrapper">
        <a href="/index/">
            <img src="/images/Untitled-design-26_1.png">
        </a>

    </div>
    <div class="nav-rightwrapper">
        <div class="Hamburger-menu-bg" id="Hamburger-menu-bg"></div>
        <div id="Hamburger-menu">
            <div id="Hamburger-menu-bar" onclick="menuOnClick()">
                <div id="Hamburger-bar1" class="Hamburger-bar"></div>
                <div id="Hamburger-bar2" class="Hamburger-bar"></div>
                <div id="Hamburger-bar3" class="Hamburger-bar"></div>
            </div>
            <nav class="Hamburger-nav" id="Hamburger-nav">
                <ul class="hamburger-list">
                    <sec:authorize access="isAuthenticated()">
                        <li class="Profile-picture-list">
                            <a href="/user/dashboard" class="profile-link w-inline-block">
                                <img src="${user.profilePicPath}" loading="lazy" alt="" class="profile-link-image">
                            </a>
                        </li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <li><a class="listFonts">
                            <form method="GET" action="/auth/login">
                                <button type="submit" class="user-log-in-log-out">
                                    Login
                                </button>
                            </form>
                        </a></li>
                        <li><a class="listFonts">
                            <form method="GET" action="/auth/signup">
                                <button type="submit" class="user-signup">
                                    Signup
                                </button>
                            </form>
                        </a></li>
                    </sec:authorize>
                    <li><a class="listFonts" href="/index/subscription">Subscriptions</a></li>
                    <li><a class="listFonts" href="/index/our-team">Our Team</a></li>
                    <sec:authorize access="isAuthenticated()">
                        <li><a class="listFonts" href="/user/map">Start Birding</a></li>
                        <li><a class="listFonts" href="/user/challenges">Challenges</a></li>
                        <li><a class="listFonts" href="/user/plume-wiki">Plume Wiki</a></li>
                        <li><a class="listFonts" href="/user/dashboard">My Profile</a></li>
                    </sec:authorize>
                </ul>
            </nav>
        </div>
    </div>
</div>

<!-- navbar desktop -->

<div data-collapse="medium" data-animation="default" data-duration="400" data-easing="ease-out-quint"
     data-easing2="ease" data-no-scroll="1" role="banner" class="nav-bar w-nav">
    <div class="uui-navbar07_container-2">
        <a href="/index/" class="uui-navbar07_logo-link-2 w-nav-brand">
            <div href="/index/" class="uui-logo_component-2"><img src="/images/Untitled-design-26_1.png" loading="lazy"
                                                                  width="Auto" id="plume-home" alt=""
                                                                  class="uui-logo_logotype-2">
            </div>
        </a>
        <div role="navigation" class="uui-navbar07_menu-2 w-nav-menu">
            <div class="uui-navbar07_menu-left-2">
                <sec:authorize access="isAuthenticated()">
                    <div data-hover="true" data-delay="300" data-w-id="ec87134d-4ffb-4f4e-d2d8-b8ed9b742c4d"
                         class="uui-navbar07_menu-dropdown-2 w-dropdown">
                        <div class="uui-navbar07_dropdown-toggle-2 w-dropdown-toggle">
                            <div class="uui-dropdown-icon-2 w-embed">
                                <svg width="20" height="20" viewbox="0 0 20 20" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 7.5L10 12.5L15 7.5" stroke="currentColor" stroke-width="1.67"
                                          stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div class="text-block-5">Explore</div>
                        </div>
                        <nav class="uui-navbar07_dropdown-list-2 w-dropdown-list">
                            <div class="uui-navbar07_dropdown-link-list-2">
                                <a href="/user/map" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M4.5 22.5V17.5M4.5 7.5V2.5M2 5H7M2 20H7M13 3.5L11.2658 8.00886C10.9838 8.74209 10.8428 9.10871 10.6235 9.41709C10.4292 9.6904 10.1904 9.92919 9.91709 10.1235C9.60871 10.3428 9.24209 10.4838 8.50886 10.7658L4 12.5L8.50886 14.2342C9.24209 14.5162 9.60871 14.6572 9.91709 14.8765C10.1904 15.0708 10.4292 15.3096 10.6235 15.5829C10.8428 15.8913 10.9838 16.2579 11.2658 16.9911L13 21.5L14.7342 16.9911C15.0162 16.2579 15.1572 15.8913 15.3765 15.5829C15.5708 15.3096 15.8096 15.0708 16.0829 14.8765C16.3913 14.6572 16.7579 14.5162 17.4911 14.2342L22 12.5L17.4911 10.7658C16.7579 10.4838 16.3913 10.3428 16.0829 10.1235C15.8096 9.92919 15.5708 9.6904 15.3765 9.41709C15.1572 9.10871 15.0162 8.74209 14.7342 8.00886L13 3.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Start Birding</div>
                                        <div class="uui-text-size-small-2">Search for other user&#x27;s observations and
                                            hotspots around you
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/dashboard" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M20 19.5V16.5H7C5.34315 16.5 4 17.8431 4 19.5M8.8 22.5H16.8C17.9201 22.5 18.4802 22.5 18.908 22.282C19.2843 22.0903 19.5903 21.7843 19.782 21.408C20 20.9802 20 20.4201 20 19.3V5.7C20 4.57989 20 4.01984 19.782 3.59202C19.5903 3.21569 19.2843 2.90973 18.908 2.71799C18.4802 2.5 17.9201 2.5 16.8 2.5H8.8C7.11984 2.5 6.27976 2.5 5.63803 2.82698C5.07354 3.1146 4.6146 3.57354 4.32698 4.13803C4 4.77976 4 5.61984 4 7.3V17.7C4 19.3802 4 20.2202 4.32698 20.862C4.6146 21.4265 5.07354 21.8854 5.63803 22.173C6.27976 22.5 7.11984 22.5 8.8 22.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">My Profile</div>
                                        <!-- change to href -->
                                        <div class="uui-text-size-small-2">Check your status, plume level and
                                            observations
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/challenges" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22.5C17.5228 22.5 22 18.0228 22 12.5C22 6.97715 17.5228 2.5 12 2.5C6.47715 2.5 2 6.97715 2 12.5C2 18.0228 6.47715 22.5 12 22.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M9.5 9.46533C9.5 8.98805 9.5 8.74941 9.59974 8.61618C9.68666 8.50007 9.81971 8.42744 9.96438 8.4171C10.1304 8.40525 10.3311 8.53429 10.7326 8.79239L15.4532 11.8271C15.8016 12.051 15.9758 12.163 16.0359 12.3054C16.0885 12.4298 16.0885 12.5702 16.0359 12.6946C15.9758 12.837 15.8016 12.949 15.4532 13.1729L10.7326 16.2076C10.3311 16.4657 10.1304 16.5948 9.96438 16.5829C9.81971 16.5726 9.68666 16.4999 9.59974 16.3838C9.5 16.2506 9.5 16.012 9.5 15.5347V9.46533Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Challenges</div> <!-- change to href-->
                                        <div class="uui-text-size-small-2">See how many feather&#x27;s you&#x27;ve
                                            gathered
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/plume-wiki" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M14 2.76953V6.90007C14 7.46012 14 7.74015 14.109 7.95406C14.2049 8.14222 14.3578 8.2952 14.546 8.39108C14.7599 8.50007 15.0399 8.50007 15.6 8.50007H19.7305M14 18L16.5 15.5L14 13M10 13L7.5 15.5L10 18M20 10.4882V17.7C20 19.3802 20 20.2202 19.673 20.862C19.3854 21.4265 18.9265 21.8854 18.362 22.173C17.7202 22.5 16.8802 22.5 15.2 22.5H8.8C7.11984 22.5 6.27976 22.5 5.63803 22.173C5.07354 21.8854 4.6146 21.4265 4.32698 20.862C4 20.2202 4 19.3802 4 17.7V7.3C4 5.61984 4 4.77976 4.32698 4.13803C4.6146 3.57354 5.07354 3.1146 5.63803 2.82698C6.27976 2.5 7.11984 2.5 8.8 2.5H12.0118C12.7455 2.5 13.1124 2.5 13.4577 2.58289C13.7638 2.65638 14.0564 2.77759 14.3249 2.94208C14.6276 3.1276 14.887 3.38703 15.4059 3.90589L18.5941 7.09411C19.113 7.61297 19.3724 7.8724 19.5579 8.17515C19.7224 8.44356 19.8436 8.7362 19.9171 9.0423C20 9.38757 20 9.75445 20 10.4882Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Plume Wiki</div> <!-- change to href-->
                                        <div class="uui-text-size-small-2">Get to know your favourite species in detail
                                        </div>
                                    </div>
                                </a>
                                <a href="/error/404" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.13626 9.63628L4.92893 5.42896M4.92893 19.5711L9.16797 15.3321M14.8611 15.3638L19.0684 19.5711M19.0684 5.42896L14.8287 9.66862M22 12.5C22 18.0228 17.5228 22.5 12 22.5C6.47715 22.5 2 18.0228 2 12.5C2 6.97715 6.47715 2.5 12 2.5C17.5228 2.5 22 6.97715 22 12.5ZM16 12.5C16 14.7091 14.2091 16.5 12 16.5C9.79086 16.5 8 14.7091 8 12.5C8 10.2909 9.79086 8.5 12 8.5C14.2091 8.5 16 10.2909 16 12.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Find a Nest</div>
                                        <!-- change to href -->
                                        <div class="uui-text-size-small-2">Our ecotourism focus, partners and nesting
                                            opportunities
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </nav>
                    </div>
                </sec:authorize>
                <a href="/index/subscription" class="uui-navbar07_link-2 w-nav-link">Subscription Plans</a>
                <a href="/index/our-team" class="uui-navbar07_link-2 w-nav-link">Our Team</a>
            </div>
            <div class="uui-navbar07_menu-right-2">
                <div class="uui-navbar07_button-wrapper-2">
                    <sec:authorize access="isAuthenticated()">
                        <a href="/user/dashboard" class="profile-link w-inline-block">
                            <img src="${user.profilePicPath}" loading="lazy" alt="" class="profile-link-image">
                        </a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <form method="GET" action="/auth/signup">
                            <button type="submit" class="user-signup desktop">
                                Signup
                            </button>
                        </form>
                        <form method="GET" action="/auth/login">
                            <button type="submit" class="user-log-in-log-out desktop">
                                Login
                            </button>
                        </form>

                    </sec:authorize>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="team-section">
    <div class="team-heading">
        <h2>Meet the Team</h2>
        <p class="spark-secondary-paragraph">Meet the passionate team behind Plume, a blend of ornithologists,
            developers, designers, and marketers. Each contributes unique skills and expertise, making Plume more than
            just an app. Get to know the individuals dedicated to enhancing your birdwatching experience.</p>
    </div>
    <div class="team-grid">
        <div id="w-node-_1e5719c8-07f6-9a95-cd0c-f07fc20c3750-6e2eeead" class="team-card spark-stacked">
            <a href="#" class="w-inline-block"><img src="/images/Joana-Our-Team.png" loading="eager" width="80"
                                                    alt="" class="team-images"></a>
            <div class="team-member-details">
                <p class="spark-bold-heading"><span>Joana Freitas</span></p>
                <p class="spark-small-sub-paragraph">CEO and Co-Founder</p>
            </div>
        </div>
        <div id="w-node-_1e5719c8-07f6-9a95-cd0c-f07fc20c375d-6e2eeead" class="team-card spark-stacked">
            <a href="#" class="w-inline-block"><img src="/images/Vitoria-Our-Team.png" loading="eager" width="80"
                                                    alt="" class="team-images"></a>
            <div class="team-member-details">
                <p class="spark-bold-heading">Vitória Freitas</p>
                <p class="spark-small-sub-paragraph">CEO and Co-Founder</p>
            </div>
        </div>
        <div id="w-node-_1e5719c8-07f6-9a95-cd0c-f07fc20c376a-6e2eeead" class="team-card spark-stacked">
            <a href="#" class="w-inline-block"><img src="/images/Miguel-Our-Team.png" loading="eager" width="80"
                                                    alt="" class="team-images"></a>
            <div class="team-member-details">
                <p class="spark-bold-heading">Miguel Devezas</p>
                <p class="spark-small-sub-paragraph">CFO and Co-Founder</p>
            </div>
        </div>
        <div id="w-node-_1e5719c8-07f6-9a95-cd0c-f07fc20c3777-6e2eeead" class="team-card spark-stacked">
            <a href="#" class="w-inline-block"><img src="/images/Joao-Our-Team.jpeg" loading="eager" width="80"
                                                    alt="" class="team-images"></a>
            <div class="team-member-details">
                <p class="spark-bold-heading">João Sousa</p>
                <p class="spark-small-sub-paragraph">CTO and Co-Founder</p>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="footer-container w-container">
        <div class="w-layout-grid footer-grid">
            <div id="w-node-b8d7be4a-ce45-83ab-5947-02d204c8bff0-cf3fcb86" class="footer-logo-block">
                <a data-ix="logo" href="/index/" class="footer-logo w-nav-brand">
                    <img src="/images/Untitled-design-26_1.png" width="204" alt="" class="image-3"></a>
                <p class="paragraph small">Built by Potato Labs Inc.<br>for Plumers with lots of Plumage<br></p>
                <div class="spacer _16"></div>
                <div class="paragraph small">© 2023 Potato Labs Inc. All Potatoes Reserved.</div>
            </div>
            <div class="footer-links-container">
                <h5 class="footer-header">Website</h5>
                <a href="/index/" class="footer-link">Home</a>
                <a href="/index/contact" class="footer-link">Contact Us</a>
                <a href="/index/terms" class="footer-link">Terms &amp; Conditions</a>
                <a href="/index/privacy-policy" class="footer-link">Privacy Policy</a>
            </div>
            <div class="footer-links-container">
                <h5 class="footer-header">Membership</h5>
                <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                    <a href="/auth/login" class="footer-link">Login</a>
                    <a href="/auth/signup" class="footer-link">Sign Up</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a href="/auth/logout" class="footer-link">Logout</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a href="/user/dashboard" class="footer-link">User Account</a>
                </sec:authorize>
                <a href="/index/reset-password" class="footer-link">Reset Password </a>
            </div>
        </div>
    </div>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<script src="/js/webflow.js" type="text/javascript"></script>
</body>
</html>