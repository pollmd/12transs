<!DOCTYPE html>
<%@ Import Namespace="System.Net" %> 
<%@ Import Namespace="System.Net.Mail" %> 
<script language="c#" runat="server">
private void btnSend_Click(object sender, System.EventArgs e)
{           

        MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();
        m.From = new MailAddress("admin@12transs.com");               
        m.To.Add("info@12transs.com");
        m.Subject = "Email generated from site";
        m.Body = txtFrom.Text; 
        sc.Host = "mail.12transs.com";
        string str1="gmail.com";
        string str2=txtFrom.Text.ToLower();		
		if (str2.Contains(str1))
		{
		try
            {
                sc.Port = 587;
                sc.Credentials = new System.Net.NetworkCredential(txtFrom.Text,"123");                       
                sc.EnableSsl = true;
                sc.Send(m);
                Response.Write("Email Send successfully");
            }
            catch (Exception ex)
            {
                Response.Write ("<BR><BR>* Please double check the From Address and Password to confirm that both of them are correct. <br>");
				Response.Write ("<BR><BR>If you are using gmail smtp to send email for the first time, please refer to this KB to setup your gmail account: http://www.smarterasp.net/support/kb/a1546/send-email-from-gmail-with-smtp-authentication-but-got-5_5_1-authentication-required-error.aspx?KBSearchID=137388");
				Response.End();
			}
		}
	    else
		{
		try
            {
                sc.Port = 25;
                sc.Credentials = new System.Net.NetworkCredential(txtFrom.Text,"123");                       
                sc.EnableSsl = false;
                sc.Send(m);
                Response.Write("Email Send successfully");
            }
            catch (Exception ex)
            {
                Response.Write ("<BR><BR>* Please double check the From Address and Password to confirm that both of them are correct. <br>");
				Response.End();
            }
		}		                                     
}
</script> 
<html lang="en" style="--lqd-mobile-sec-height: 0px; --lqd-sticky-header-height: 0px; --lqd-sticky-header-placeholder-height: 121px; --lqd-sticky-header-sentinel-top: var(--lqd-sticky-header-placeholder-height);">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style>.gm-style-moc{background-color:rgba(0,0,0,.45);pointer-events:none;text-align:center;-webkit-transition:opacity ease-in-out;transition:opacity ease-in-out}.gm-style-mot{color:white;font-family:Roboto,Arial,sans-serif;font-size:22px;margin:0;position:relative;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%)}sentinel{}</style>
      <style>.gm-style img{max-width: none;}.gm-style {font: 400 11px Roboto, Arial, sans-serif; text-decoration: none;}</style>
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <meta name="keywords" content="HTML Template, site template, seo, marketing, creative, corporate, modern, multipurpose, one page, business, responsive, minimal, saas, startup">
      <meta property="og:type" content="website">
      <meta property="og:image" content="./assets/images/common/og-image.jpg">
      <link rel="stylesheet" href="./assets/vendors/liquid-icon/lqd-essentials/lqd-essentials.min.css">
      <link rel="stylesheet" href="./assets/css/theme.min.css">
      <link rel="stylesheet" href="./index_files/utility.min.css">
      <link rel="stylesheet" href="./index_files/base.css">
      <link rel="stylesheet" href="./index_files/company.css">
      <link rel="preconnect" href="https://fonts.googleapis.com/">
      <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
      <link href="./index_files/css2" rel="stylesheet">
      <title>12 Transs</title>
      <script type="text/javascript" charset="UTF-8" src="./index_files/common.js"></script><script type="text/javascript" charset="UTF-8" src="./index_files/util.js"></script><script type="text/javascript" charset="UTF-8" src="./index_files/map.js"></script><script type="text/javascript" charset="UTF-8" src="./index_files/geocoder.js"></script>
   </head>
   <body class="lqd-preloader-style-fade lqd-sticky-footer-shadow-2 lqd-search-style-slide-top" data-localscroll-offset="72" data-mobile-nav-breakpoint="1199" data-mobile-nav-style="classic" data-mobile-nav-scheme="light" data-mobile-nav-trigger-alignment="right" data-mobile-header-scheme="gray" data-mobile-logo-alignment="default" data-overlay-onmobile="false" >
      <div class="bg-white" id="wrap">
         <div class="lqd-sticky-placeholder hidden"></div>
         <header id="site-header" class="main-header main-header-overlay is-not-stuck" data-sticky-header="true" data-sticky-values-measured="true">
            <section class="lqd-section lqd-hide-onstuck w-full flex flex-wrap items-center justify-between border-bottom border-white-10 transition-all px-2percent md:hidden">
               <div class="w-50percent flex items-center justify-start py-10">
                  <div class="flex flex-row text-white">
                     <div class="iconbox items-center mb-0">
                        <div class="iconbox-icon-wrap mr-10">
                           <span class="iconbox-icon-container flex-grow-1">
                              <svg class="w-1em leading-0 text-white text-13" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="correntColor">
                                 <path d="M64 208.1L256 65.9 448 208.1v47.4L289.5 373c-9.7 7.2-21.4 11-33.5 11s-23.8-3.9-33.5-11L64 255.5V208.1zM256 0c-12.1 0-23.8 3.9-33.5 11L25.9 156.7C9.6 168.8 0 187.8 0 208.1V448c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V208.1c0-20.3-9.6-39.4-25.9-51.4L289.5 11C279.8 3.9 268.1 0 256 0z"></path>
                              </svg>
                           </span>
                        </div>
                        <h3 class="m-0 text-13 font-normal text-white iconbox-heading">info@12transs.com</h3>
                     </div>
                     <div class="iconbox items-center mb-0 ml-20 pl-25 border-left border-white-10">
                        <div class="iconbox-icon-wrap mr-10">
                           <span class="iconbox-icon-container flex-grow-1">
                              <svg class="w-1em leading-0 text-white text-13" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" fill="correntColor">
                                 <path d="M565.6 36.24C572.1 40.72 576 48.11 576 56V392C576 401.1 569.8 410.9 560.5 414.4L392.5 478.4C387.4 480.4 381.7 480.5 376.4 478.8L192.5 417.5L32.54 478.4C25.17 481.2 16.88 480.2 10.38 475.8C3.882 471.3 0 463.9 0 456V120C0 110 6.15 101.1 15.46 97.57L183.5 33.57C188.6 31.6 194.3 31.48 199.6 33.23L383.5 94.52L543.5 33.57C550.8 30.76 559.1 31.76 565.6 36.24H565.6zM48 421.2L168 375.5V90.83L48 136.5V421.2zM360 137.3L216 89.3V374.7L360 422.7V137.3zM408 421.2L528 375.5V90.83L408 136.5V421.2z"></path>
                              </svg>
                           </span>
                        </div>
                        <h3 class="iconbox-heading m-0 text-13 font-normal text-white">Orlando, Florida</h3>
                     </div>
                  </div>
               </div>
               <div class="w-50percent flex items-center justify-end py-10 link-white link-font-normal link-14">
                  <a href="#consultation" class="btn btn-naked leading-16" rel="nofollow" data-localscroll="true"><span class="btn-txt" data-text="Consultation">Consultation</span></a>
                  <div class="pl-20 ml-20 border-left text-white-10"><a href="#contact" class="btn btn-naked leading-16" rel="nofollow" data-localscroll="true"><span class="btn-txt" data-text="Contact us">Contact us</span></a></div>
                  <div class="ld-dropdown-menu link-black flex relative pl-20 ml-20 border-left border-white-10" role="menubar">
                     <span class="ld-module-trigger text-14 transition-color collapsed" role="button" data-ld-toggle="true" data-bs-toggle="collapse" data-bs-target="#dropdown-minimenu" aria-controls="dropdown-minimenu" aria-expanded="false" data-bs-toggle-options="{ &quot;type&quot;:  &quot;hoverFade&quot; }"><span class="ld-module-trigger-txt text-white">🇺🇸 English <i class="lqd-icn-ess icon-ion-ios-arrow-down"></i></span></span>
                     <div class="ld-module-dropdown collapse absolute right lqd-dropdown-fade-onhover" id="dropdown-minimenu" aria-expanded="false" role="menuitem">
                        <div class="ld-dropdown-menu-content">
                           <ul id="menu-footer-nav-3">
                              <li><a href="#privacy">Privacy Policy</a></li>
                              <li><a href="#termsofuse">Terms of Use</a></li>
                              <li><a href="#helpcenter">Help Center</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="pl-20 ml-20 border-left border-white-10 ld-module-search lqd-module-search-slide-top items-center" data-module-style="lqd-search-style-slide-top">
                     <span class="ld-module-trigger collapsed lqd-module-trigger-txt-left lqd-module-show-icon lqd-module-icon-plain text-14" role="button" data-ld-toggle="true" data-bs-toggle="collapse" data-bs-target="#search-header-top" aria-controls="search-header-top" aria-expanded="false">
                        <span class="ld-module-trigger-txt"></span> 
                        <span class="ld-module-trigger-icon text-white">
                           <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" height="1em" viewBox="0 0 512 512">
                              <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                           </svg>
                        </span>
                     </span>
                     <div class="ld-module-dropdown flex w-full flex-col fixed overflow-hidden backface-hidden" id="search-header-top" role="searchbox">
                        <div class="ld-search-form-container flex flex-col justify-center h-full mx-auto backface-hidden">
                           <form role="search" method="get" action="#" class="ld-search-form w-full"><input class="w-full" type="search" placeholder="Search" value="" name="s"> <span class="input-icon inline-flex items-center justify-center absolute collapsed" data-ld-toggle="true" data-bs-toggle="collapse" data-bs-target="#search-header-top" aria-controls="search-header-top" aria-expanded="false" role="search"><i class="lqd-icn-ess icon-ld-search"></i> </span><input type="hidden" name="post_type" value="post"></form>
                           <p class="lqd-module-search-info">Type and hit enter</p>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <section class="lqd-section w-full flex flex-wrap items-center justify-between px-2percent module-header md:hidden">
               <div class="w-15percent flex items-center justify-start"><a class="navbar-brand flex relative py-15" href="" rel="home"><span class="navbar-brand-inner post-rel"><img class="logo-sticky" width="74" height="21" src="./img/logo.png" alt="12Transs Theme"> <img class="logo-default" width="100" src="./img/logo.png" alt="12trans theme"></span></a></div>
               <div class="w-85percent flex items-stretch justify-end">
                  <div class="module-primary-nav flex">
                     <div class="navbar-collapse lqd-submenu-default-style inline-flex h-auto p-0" id="main-header-collapse" aria-expanded="false" role="navigation">
                        <ul class="main-nav flex reset-ul inline-ul lqd-menu-counter-right lqd-menu-items-inline main-nav-hover-fade-inactive lqd-submenu-toggle-hover link-14 link-bold" data-submenu-options="{&quot;toggleType&quot;: &quot;fade&quot;, &quot;handler&quot;: &quot;mouse-in-out&quot;}" data-localscroll="true" data-localscroll-options="{&quot;itemsSelector&quot;:&quot;&gt; li &gt; a&quot;, &quot;trackWindowScroll&quot;: true}">
                           <li class="inline-flex flex-col relative w-auto"><a class="text-white hover:text-primary" href="#about">About Us<sup class="link-sup">01</sup></a></li>
                           <li class="inline-flex flex-col relative w-auto"><a class="text-white hover:text-primary" href="#services">Services<sup class="link-sup">02</sup></a></li>
                           <li class="inline-flex flex-col relative w-auto"><a class="text-white hover:text-primary" href="#contact">Contact<sup class="link-sup">03</sup></a></li>
                           <li class="inline-flex flex-col relative w-auto is-active"><a class="text-white hover:text-primary" href="#careers">Careers<sup class="link-sup">04</sup></a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="ml-20 text-end">
                     <h6 class="mt-1em text-white"><span class="text-13 text-inherit">call us now</span><br><span class="text-primary text-16">+1 407 692 1194</span></h6>
                  </div>
               </div>
            </section>
            <div class="lqd-mobile-sec relative w-full">
               <div class="lqd-mobile-sec-inner navbar-header flex items-stretch w-full">
                  <div class="lqd-mobile-modules-container empty"></div>
                  <button type="button" class="navbar-toggle nav-trigger style-mobile collapsed flex relative items-center justify-end border-none p-0 bg-transparent" data-ld-toggle="true" data-bs-toggle="collapse" data-bs-target="#lqd-mobile-sec-nav" aria-expanded="false" data-bs-toggle-options="{ &quot;changeClassnames&quot;:  {&quot;html&quot;:  &quot;mobile-nav-activated&quot;} }"><span class="sr-only">Menu</span> <span class="bars inline-block relative z-1"><span class="bars-inner flex flex-col w-full h-full"><span class="bar inline-block"></span> <span class="bar inline-block"></span> <span class="bar inline-block"></span></span></span></button> <a class="navbar-brand flex relative" href=""><span class="navbar-brand-inner"><img class="logo-default" width="74" height="21" src="./img/logo.png" alt="WordPress Theme"></span></a>
               </div>
               <div class="lqd-mobile-sec-nav w-full absolute z-10 bg-white text-black">
                  <div class="mobile-navbar-collapse navbar-collapse collapse w-full" id="lqd-mobile-sec-nav" aria-expanded="false" role="navigation">
                     <ul id="mobile-primary-nav" class="reset-ul lqd-mobile-main-nav main-nav nav lqd-submenu-toggle-hover" data-localscroll="true" data-localscroll-options="{&quot;itemsSelector&quot;:&quot;&gt; li &gt; a&quot;, &quot;trackWindowScroll&quot;: true}">
                        <li><a href="#about">About Us <sup class="link-sup">01</sup></a></li>
                        <li><a href="#services">Services <sup class="link-sup">02</sup></a></li>
                        <li><a href="#contact">Contact <sup class="link-sup">06</sup></a></li>
                        <li><a href="#careers">Careers <sup class="link-sup">04</sup></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </header>
         <main class="content bg-white bg-repeat" id="lqd-site-content" style="background-image: url(./assets/images/demo/company/bg-lines.svg);">
            <div id="lqd-contents-wrap">
               <section class="lqd-section banner relative bg-center bg-cover transition-all" id="banner" style="background-image: url(&#39;./img/truck2.jpg&#39;);">
                  <div class="background-overlay transition-all bg-green-100 opacity-100"></div>
                  <div class="container">
                     <div class="row min-h-100vh items-center">
                        <div class="w-55percent flex flex-col lg:w-full">
                           <div class="ld-fancy-heading relative mask-text ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.lqd-split-chars .lqd-chars .split-inner&quot;, &quot;duration&quot; : 1000 , &quot;delay&quot; : 40 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;direction&quot;: &quot;random&quot;, &quot;initValues&quot;: {&quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;opacity&quot; : 1}}">
                              <h1 class="ld-fh-element mb-0/15em inline-block relative lqd-highlight-custom lqd-highlight-custom-1 lqd-split-chars text-88 text-white leading-0/9em is-in-view split-text-applied" data-inview="true" data-transition-delay="true" data-delay-options="{&quot;elements&quot;: &quot;.lqd-highlight-inner&quot;, &quot;delayType&quot;: &quot;transition&quot;}" data-split-text="true" data-split-options="{&quot;type&quot;: &quot;chars, words&quot;}">
                                 <mark class="lqd-highlight">
                                    <span class="lqd-highlight-txt">
                                       <div style="position: relative; display: inline-block; --words-index: 0; --words-last-index: 2;" class="split-unit lqd-words">
                                          <span class="split-inner">
                                             <div style="position: relative; display: inline-block; --chars-index: 0; --chars-last-index: 20;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">1</span></div>
                                             <div style="position: relative; display: inline-block; --chars-index: 1; --chars-last-index: 19;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">2</span></div>
										            </span>
                                       </div>
                                    </span>
                                    <span class="lqd-highlight-inner bottom-0 left-0" style="transition-delay: 0ms;">
                                       <svg class="lqd-highlight-brush-svg lqd-highlight-brush-svg-1" xmlns="http://www.w3.org/2000/svg" width="235.509" height="13.504" viewBox="0 0 235.509 13.504" aria-hidden="true" preserveAspectRatio="none" fill="#FFCD28">
                                          <path d="M163,.383a13.044,13.044,0,0,1,1.517-.072,3.528,3.528,0,0,1,1.237-.134q.618.044,1.237.044a.249.249,0,0,1-.1.178.337.337,0,0,0-.1.266q3.092.088,6.184-.044T178.953.4l-.206-.088a12,12,0,0,0,4.123,0,13.467,13.467,0,0,1,5.772,0q1.443-.178,2.68-.266A5.978,5.978,0,0,1,193.8.4,16.707,16.707,0,0,1,198.01.045q2.164.088,4.844.088-.618.088-.824.134L201.412.4a3.893,3.893,0,0,0,2.061,0,5.413,5.413,0,0,1,1.649-.356q.618.088,1.134.178a9.762,9.762,0,0,0,1.544.09,17,17,0,0,1,3.092-.266q1.649,0,3.5.178,2.886.088,5.875.044t5.875-.222q0,.088.206.088h.412a21.975,21.975,0,0,0,2.577.889A12.458,12.458,0,0,1,232.12,2.18a3.962,3.962,0,0,1,1.031.622A3.349,3.349,0,0,1,234.8,3.825a5.079,5.079,0,0,1,.618,1.111q.412.534-1.031.98-1.031.444-.618.98a2.09,2.09,0,0,1,.206.889q0,.444.825.889.618.8-.206,1.245l-1.237.534q-1.443-.088-2.68-.134a17.255,17.255,0,0,1-2.267-.222,3.128,3.128,0,0,0-.928-.044,3.129,3.129,0,0,1-.928-.044q-2.267-.178-4.432-.266T217.7,9.476q-1.649-.088-2.886-.088a17.343,17.343,0,0,1-2.474-.178q-3.916,0-7.73-.088t-7.73-.266l-12.471-.178q-6.287-.088-12.883-.088h-1.958q-.928,0-1.958.088h-2.061q-1.031,0-2.061-.088-2.68-.088-5.256-.134t-5.256.044h-5.462q-2.577,0-5.462.088-4.535.088-8.76.178t-8.554.088q-2.886.088-5.875.088t-5.875.088q-1.443.088-2.886.134t-3.092.044q-4.741.178-9.791.312t-9.791.312q-2.267.088-4.329.088T78.77,10.1q-4.329.266-8.863.49t-9.276.49q-1.237.088-2.68.134a24.356,24.356,0,0,0-2.683.224q-2.68.178-5.462.312t-5.668.4q-2.474.266-4.741.312t-4.741.044q-1.031-.088-1.958-.134a9.684,9.684,0,0,1-1.958-.312,12.5,12.5,0,0,0-1.443-.312q-.825-.134-1.856-.31-2.886.356-6.39.666t-6.8.845a26.709,26.709,0,0,1-2.886.356,20.758,20.758,0,0,1-9.482-.889Q.232,11.962.026,11.25T1.263,9.917q0-.266.825-.266a13.039,13.039,0,0,0,2.886-.444A17.187,17.187,0,0,1,7.86,8.672q3.092-.266,6.184-.8,1.649-.178,3.3-.312t3.5-.312q4.123-.354,8.039-.712t8.039-.622q9.478-.8,18.758-1.338,2.68-.178,5.153-.356t4.741-.356q2.474-.178,5.05-.356T75.88,3.24h1.34a4.829,4.829,0,0,0,1.34-.178q2.267-.178,4.329-.222t4.329-.134a7.256,7.256,0,0,1,2.267,0,3.459,3.459,0,0,0,1.031-.088,6.009,6.009,0,0,1,2.37-.266,14.745,14.745,0,0,0,2.783-.088q1.649,0,2.474.088a1.308,1.308,0,0,1,.185.011,1.226,1.226,0,0,1,.33-.1,3.656,3.656,0,0,0,.515-.088,4.433,4.433,0,0,1,2.886.266q.412-.088,1.031-.178l1.237-.178q.412,0,1.031.044a5.761,5.761,0,0,0,1.237-.044q2.886-.088,5.772-.044a53.829,53.829,0,0,0,5.772-.222,9.505,9.505,0,0,1,1.34-.088h1.34a4.428,4.428,0,0,1,.821-.258l.825-.178a15.178,15.178,0,0,1,1.855.444,3.028,3.028,0,0,1,1.031-.534,4.039,4.039,0,0,1,1.443-.178,6.158,6.158,0,0,1,1.649.178,5.05,5.05,0,0,0,2.267.268q1.855-.088,3.813-.134T138.13,1.2q1.031,0,2.164-.044t2.37-.044q-.206-.088.412-.534h3.092q.412,0,.309.266t.928,0a5.845,5.845,0,0,1,1.443,0,31.833,31.833,0,0,0,5.359.088,21.471,21.471,0,0,1,6.8.178,5.236,5.236,0,0,0,1.031-.4q.412-.222.825-.4a.694.694,0,0,1,.137.07Z" transform="translate(0 0.002)"></path>
                                       </svg>
                                    </span>
                                 </mark>
                                 <span>
                                    <div style="position: relative; display: inline-block; --words-index: 1; --words-last-index: 1;" class="split-unit lqd-words">
                                       <span class="split-inner">
                                          <div style="position: relative; display: inline-block; --chars-index: 5; --chars-last-index: 15;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >t</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 6; --chars-last-index: 14;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >r</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 7; --chars-last-index: 13;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >a</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 8; --chars-last-index: 12;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >n</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 9; --chars-last-index: 11;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >s</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 9; --chars-last-index: 10;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >s</span></div>
									   </span>
                                    </div>
                                    <div style="position: relative; display: inline-block; --words-index: 2; --words-last-index: 0;" class="split-unit lqd-words">
                                       <span class="split-inner">
                                          <div style="position: relative; display: inline-block; --chars-index: 10; --chars-last-index: 10;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >l</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 11; --chars-last-index: 9;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >o</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 12; --chars-last-index: 8;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >g</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 13; --chars-last-index: 7;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner" >i</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 14; --chars-last-index: 6;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">s</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 15; --chars-last-index: 5;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">t</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 16; --chars-last-index: 4;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">i</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 17; --chars-last-index: 3;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">c</span></div>
                                          <div style="position: relative; display: inline-block; --chars-index: 18; --chars-last-index: 2;" class="split-unit lqd-chars lqd-unit-animation-done"><span class="split-inner">s</span></div>
                                       </span>
                                    </div>
                                 </span>
                              </h1>
                           </div>
                           <div data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;power4.out&quot;}" class="ca-initvalues-applied lqd-animations-done">
                              <div class="animation-element ca-initvalues-applied lqd-unit-animation-done lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;startDelay&quot; : 800 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;50px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}" style="-webkit-transform-origin-z: 0px;">
                                 <div class="ld-fancy-heading pr-10percent relative animation-element lqd-unit-animation-done" style="-webkit-transform-origin-z: 0px;">
                                    <p class="ld-fh-element inline-block relative text-22 font-normal leading-1/6em mb-1/5em text-white-70">We will put you on the fast-track to your new driving career</p>
                                 </div>
                                 <a href="#contact-modal" class="btn btn-solid btn-md font-bold btn-icon-right btn-hover-reveal text-16 text-secondary bg-primary rounded-4 hover:bg-secondary hover:text-white animation-element lqd-unit-animation-done" data-lity="#contact-modal" ><span class="btn-txt" data-text="Get a quote">Apply Now</span> <span class="btn-icon text-1/15em"><i aria-hidden="true" class="lqd-icn-ess icon-md-arrow-round-forward"></i></span></a>
                                 <!-- <a href="#contact" class="btn btn-solid btn-md font-bold btn-icon-right btn-hover-reveal whitespace-nowrap text-16 rounded-4 text-secondary bg-primary py-15 px-55 hover:text-white hover:bg-secondary animation-element lqd-unit-animation-done" data-localscroll="true" style="-webkit-transform-origin-z: 0px;"><span class="btn-txt" data-text="Apply Now">Apply Now</span> <span class="btn-icon text-1/25em tracking-0"><i aria-hidden="true" class="lqd-icn-ess icon-md-arrow-round-forward"></i></span></a> -->
                                 <div class="inline-block w-auto relative animation-element lqd-unit-animation-done" style="-webkit-transform-origin-z: 0px;">
                                    <h6 class="ld-fh-element mt-0/5em ml-5em mb-0 inline-block relative"><span class="text-13 text-white">call us now</span><br><span class="text-20 text-primary">+1 407 692 1194</span></h6>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="w-45percent flex lg:w-full items-center p-0 ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;startDelay&quot; : 1500 , &quot;delay&quot; : 100 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;scaleX&quot; : 2.05 , &quot;scaleY&quot; : 2.05 , &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;scaleX&quot; : 1 , &quot;scaleY&quot; : 1 , &quot;opacity&quot; : 1}}">
                           <!-- <div class="w-full items-center justify-end relative flex pr-100 lg:justify-start module-btn-circle animation-element lqd-unit-animation-done" >
                              <a href="https://www.youtube.com/watch?v=QxdxYr6CRN4&amp;ab_channel=Intapp" class="btn btn-naked top btn-icon-circle btn-icon-custom-size btn-icon-bordered btn-icon-border-thickest text-white text-15 whitespace-nowrap fresco"><span class="btn-icon m-0 text-1/5em tracking-0 border-solid w-95 h-95 border-white"><i aria-hidden="true" class="lqd-icn-ess icon-ion-ios-play"></i></span></a>
                           </div> -->
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section contact" id="contact">
                  <div class="container">
                     <div class="row items-center">
                        <div class="col col-12 col-xl-5 pt-40 pb-35 text-start xl:text-center module-title ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;60px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done">
                              <h2 class="ld-fh-element mb-0/5em inline-block relative">Who we are</h2>
                           </div>
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done">
                              <p class="ld-fh-element mb-0/5em inline-block relative">
                                 <h6>Located in Orlando, 12 Transs Logistics has a culture that is built upon excellence in service offering flatbed, step-deck and conestoga.</h6>
                                    Our professional drivers take pride in delivering the highest quality of work in the industry. As a trucking and logistics company, all employees contribute to, and benefit from, the success of 12 Transs Logistics.
12 Trans Logistics top of the line equipment enables us to serve a wide range of customer requirements. All is meticulously maintained by highly-skilled technicians to ensure dependability and safety.
We maintain a commitment to every customer and every load, and that starts with supporting our drivers. That's why we're there with every driver before, during, and after their run.                          
                        </div>
                        </div>
                        <div class="col col-12 col-xl-6 offset-xl-1 p-0">
                           <div id="contact-form" class="relative w-full module-form">
                              <div class="form-mini relative -mt-80 rounded-6 bg-white shadow-md pt-30 pl-50 pb-50 pr-50 transition-all ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                                 <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                    <h6 class="ld-fh-element mb-1em inline-block relative mb-1em">send a message</h6>
                                 </div>
                                 <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                    <h2 class="ld-fh-element mb-1/15em text-30 inline-block relative">request a call back</h2>
                                 </div>
                                 <div class="mb-0 lqd-contact-form lqd-contact-form-inputs-filled lqd-contact-form-button-block lqd-contact-form-button-lg lqd-contact-form-button-round lqd-contact-form-inputs-lg animation-element lqd-unit-animation-done" >
                                    <div role="form" id="mini-form-help" lang="en-US">
                                       <div class="screen-reader-response">
                                          <p role="status" aria-live="polite" aria-atomic="true"></p>
                                       </div>
                                       <form id="MailForm" method="post" runat="server" target="_blank">
                                          <div class="row">
                                             <div class="col col-12 py-0"><span class="mb-0 lqd-form-control-wrap relative"><input class="text-black px-2em text-14 font-normal bg-yellow-100" type="text" name="name" value="" size="40" aria-required="true" aria-invalid="false" placeholder="Your name"> <i class="lqd-icn-ess icon-lqd-user"></i></span></div>
                                             <div class="col col-12 py-0"><span class="mb-0 lqd-form-control-wrap relative"><input class="text-black px-2em text-14 font-normal bg-yellow-100" type="email" name="email" value="" size="40" aria-required="true" aria-invalid="false" placeholder="Email Address"> <i class="lqd-icn-ess icon-lqd-envelope"></i></span></div>
                                             <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                                             <div class="col col-12 py-0">
                                                <div class="mb-0 lqd-form-control-wrap relative">
                                                   <div class="lqd-select-dropdown" role="menubar">
                                                      <div class="ui-selectmenu-menu ui-front">
                                                         <ul aria-hidden="true" aria-labelledby="ui-id-1-button" id="ui-id-1-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
                                                      </div>
                                                   </div>
                                                   <span tabindex="0" id="ui-id-1-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-1-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget text-black text-14 font-normal bg-yellow-100"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span> <span class="ui-selectmenu-text px-2em">How can we help you</span></span>
                                                </div>
                                             </div>

<div>     
          <TR><TD align = center><asp:Button ID="btnSend" runat="server"
              Text="Send" OnClick="btnSend_Click"></asp:Button>				</TR>
      <TR> <TD colspan = 2> <asp:Label ID="lblStatus" runat="server" forecolor=Green Font-Size="15" Bold = true> 
          </asp:Label>
</div>


                                             <div class="col col-12 py-0"><span class="lqd-form-control-wrap" data-name="acceptance"><span class="lqd-cf-form-control lqd-cf-acceptance"><span class="lqd-cf-list-item"><label><input type="checkbox" name="acceptance" value="1" aria-invalid="false"> <span class="lqd-cf-list-item-label">I agree to the terms of service.</span></label></span></span></span></div>
                                             <div class="col col-12 py-0"><input type="submit" value="get a quote" class="mb-0 font-bold text-secondary bg-primary has-spinner text-16 hover:bg-secondary hover:text-white"></div>
                                          </div>
                                       </form>
                                       <div class="lqd-cf-response-output"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section what-we-do my-50" id="what-we-do">
                  <div class="container">
                     <div class="row items-center">
                        <div class="col col-12 col-xl-6 p-0">
                           <div class="w-full flex flex-wrap content-center items-center relative p-10">
                              <div class="w-auto relative">
                                 <div class="lqd-imggrp-single block relative" data-shadow-style="4">
                                    <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center w-50percent">
                                       <figure class="w-full relative"><img class="rounded-6" width="492" height="596" src="./img/truck4.jpg" alt="What We Do"></figure>
                                    </div>
                                 </div>
                              </div>
                              <div class="w-auto relative">
                                 <div class="-mt-40percent -mr-40percent mb-0 ml-35percent">
                                    <div class="lqd-imggrp-single block relative" data-shadow-style="4">
                                       <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center w-55percent">
                                          <figure class="w-full relative"><img class="rounded-6" width="666" height="808" src="./img/truck3.jpg" alt="What We Do"></figure>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col col-12 col-xl-6 p-0 ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                           <div class="w-full flex flex-col items-start pr-5percent pl-30percent module-content">
                              <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                 <h2 class="ld-fh-element mb-0/5em inline-block relative lqd-highlight-classic lqd-highlight-grow-left">Why work with us?</h2>
                              </div>
                              <div class="ld-fancy-heading pb-0/5em relative animation-element lqd-unit-animation-done" >
                                 <p class="ld-fh-element mb-1/25em inline-block relative lqd-highlight-classic lqd-highlight-grow-left">
                                    The mission of 12Transs Logistics is to be the recognized leader in providing high quality transportation services. We will accomplish our mission through trained and empowered employees who are dedicated to continuous improvements that focus on our customers and internal processes. Our ultimate measure of success will come from customer loyalty and partnerships.
                                    <br><br>
                                    Our goal is to provide the best experience for drivers. When a driver is hired the expectation is that this will be the last company they drive for. 12Transs Logistics supports its lofty expectations with competitive wages, outstanding benefits and realistic bonus opportunities.
                                 </p>
                              </div>
                              <a href="#contact-modal" class="btn btn-solid btn-md font-bold btn-icon-right btn-hover-reveal text-16 text-secondary bg-primary rounded-4 hover:bg-secondary hover:text-white animation-element lqd-unit-animation-done" data-lity="#contact-modal" ><span class="btn-txt" data-text="Get a quote">Get a quote</span> <span class="btn-icon text-1/15em"><i aria-hidden="true" class="lqd-icn-ess icon-md-arrow-round-forward"></i></span></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section case-study pt-55 pb-70" id="about">
                  <div class="container">
                     <div class="row">
                        <div class="col col-12 text-center">
                           <div class="w-50percent flex flex-col mx-auto mb-35 text-center lg:w-full ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                              <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" style>
                                 <h2 class="ld-fh-element mb-0/5em inline-block relative">About us</h2>
                              </div>
                              <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                 <p class="ld-fh-element mb-0/5em inline-block relative">12 Transs Logistics provides the best in flatbed, step-deck, reefer conestoga and dry van services in the 48 continental United States.
                                    Our backbone is our dedicated experts who provide our customers with the help and guidance they need. We are go-getters who roll up our sleeves and get down to business solving your cargo challenges. We celebrate people, talent, teamwork and ingenuity. We are continually curious, innovative and looking to the future.
                                    Delivery of goods is highly reliable with 12 Transs Logistics. Our commitment to being leaders in innovative transportation and logistics moves us forward, giving our clients outstanding results.</p>
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section py-100 thin-fixed-bg bg-center bg-cover relative transition-all" style="background-image: url(&#39;./assets/images/demo/company/fixed-bg.jpg&#39;)">    
                  <div class="background-overlay transition-all bg-secondary opacity-90"></div>
                  <div class="container">
                     <div class="row">
                        <div class="col col-lg-12 ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 800 , &quot;delay&quot; : 100 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;opacity&quot; : 1}}">
                           <div class="ld-fancy-heading relative text-center">
                              <h2 class="ld-fh-element text-50 mb-0/5em inline-block relative animation-element lqd-unit-animation-done"><span class="text-white">We speak </span>
                                 <div class="text-primary">English <img width="80" src="img/flags/usa.png"/> Russian <img src="img/flags/ru.png" width="80"/> Romanian <img src="img/flags/ro.png" width="80"/></div></h2>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section blog pt-80" id="services">
                  <div class="container mb-50">
                     <div class="row">
                        <div class="col col-12 flex flex-col">
                           <div class="w-45percent flex flex-col mx-auto lg:w-full ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;addChildTimelines&quot;: false, &quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;}}">
                              <div class="flex flex-col text-center mb-35">
                                 <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                    <h2 class="ld-fh-element mb-0/5em inline-block relative lqd-highlight-classic lqd-highlight-grow-left">Services</h2>
                                 </div>
                                 <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                                    <p class="ld-fh-element mb-0/5em inline-block relative lqd-highlight-classic lqd-highlight-grow-left p">We offers 3 kinds of wagon types for transportation</p>
                                 </div>
                              </div>
                           </div>
                           <div class="flex flex-wrap -mr-15 -ml-15">
                              <div class="w-33percent flex mb-30 px-15 md:w-full">
                                 <article class="lqd-lp relative lqd-lp lqd-lp-style-16 text-start post-10007 post type-post status-publish format-standard has-post-thumbnail hentry category-blog-single tag-beauty">
                                    <div class="lqd-lp-img rounded-4 overflow-hidden relative mb-2rem">
                                       <figure class="relative bg-cover bg-center w-full"><img width="720" height="400" src="./img/truck1.jpg" class="w-full" alt="Blog"></figure>
                                    </div>
                                    <header class="lqd-lp-header mb-1em">
                                       <h2 class="entry-title lqd-lp-title h5 m-0">Step Deck</h2>
                                    </header>
                                    <div class="lqd-lp-excerpt mb-1em">
                                       <p>A step deck trailer, also known as a drop deck or lowboy trailer, is a commercial trailer designed to carry tall cargo that exceeds the legal height limit if transported on a traditional flatbed trailer.</p>
                                    </div>
                                    <footer class="lqd-lp-footer relative z-2">
                                       <a href="#" class="btn btn-naked uppercase tracking-0/1em size-sm font-bold lqd-lp-read-more items-center text-12">
                                          <span class="btn-line btn-line-before inline-block relative text-secondary text-12"></span> <span class="btn-txt inline-block text-secondary">Order</span> 
                                          <span class="btn-line btn-line-after inline-block text-secondary relative">
                                             <svg class="inline-block absolute" xmlns="http://www.w3.org/2000/svg" width="12" height="32" viewBox="0 0 12 32" style="height: 2em;">
                                                <path fill="currentColor" d="M8.375 16L.437 8.062C-.125 7.5-.125 6.5.438 5.938s1.563-.563 2.126 0l9 9c.562.562.624 1.5.062 2.062l-9.063 9.063c-.312.312-.687.437-1.062.437s-.75-.125-1.063-.438c-.562-.562-.562-1.562 0-2.125z"></path>
                                             </svg>
                                          </span>
                                       </a>
                                    </footer>
                                 </article>
                              </div>
                              <div class="w-33percent flex mb-30 px-15 md:w-full">
                                 <article class="lqd-lp relative lqd-lp lqd-lp-style-16 text-start post-10006 post type-post status-publish format-standard has-post-thumbnail hentry category-blog-single tag-business tag-travel">
                                    <div class="lqd-lp-img rounded-4 overflow-hidden relative mb-2rem">
                                       <figure class="relative bg-cover bg-center w-full"><img width="720" height="400" src="./img/truck2.jpg" class="w-full" alt="Blog"></figure>
                                    </div>
                                    <header class="lqd-lp-header mb-1em">
                                       <h2 class="entry-title lqd-lp-title h5 m-0">Flatbed</h2>
                                    </header>
                                    <div class="lqd-lp-excerpt mb-1em">
                                       <p>Flatbed shipping freight includes anything from construction equipment, pipes, heavy machinery, and more. A flatbed’s design allows any type of equipment to be loaded from any angle.</p>
                                    </div>
                                    <footer class="lqd-lp-footer relative z-2">
                                       <a href="#" class="btn btn-naked uppercase tracking-0/1em size-sm font-bold lqd-lp-read-more items-center text-12">
                                          <span class="btn-line btn-line-before inline-block relative text-secondary text-12"></span> <span class="btn-txt inline-block text-secondary">Order</span> 
                                          <span class="btn-line btn-line-after inline-block text-secondary relative">
                                             <svg class="inline-block absolute" xmlns="http://www.w3.org/2000/svg" width="12" height="32" viewBox="0 0 12 32" style="height: 2em;">
                                                <path fill="currentColor" d="M8.375 16L.437 8.062C-.125 7.5-.125 6.5.438 5.938s1.563-.563 2.126 0l9 9c.562.562.624 1.5.062 2.062l-9.063 9.063c-.312.312-.687.437-1.062.437s-.75-.125-1.063-.438c-.562-.562-.562-1.562 0-2.125z"></path>
                                             </svg>
                                          </span>
                                       </a>
                                    </footer>
                                 </article>
                              </div>
                              <div class="w-33percent flex mb-30 px-15 md:w-full">
                                 <article class="lqd-lp relative lqd-lp lqd-lp-style-16 text-start post-10003 post type-post status-publish format-standard has-post-thumbnail hentry category-blog-single category-lifestyle category-travel tag-spain tag-travel">
                                    <div class="lqd-lp-img rounded-4 overflow-hidden relative mb-2rem">
                                       <figure class="relative bg-cover bg-center w-full"><img width="720" height="400" src="./img/truck3.jpg" class="w-full" alt="Blog"></figure>
                                    </div>
                                    <header class="lqd-lp-header mb-1em">
                                       <h2 class="entry-title lqd-lp-title h5 m-0">Canestoga</h2>
                                    </header>
                                    <div class="lqd-lp-excerpt mb-1em">
                                       <p>Conestoga is a flatbed with a rolling tarp-on-frame system that protects the cargo, as if traveling in a closed truck. They allow a fast loading and unloading since it can be done from the sides or from the top. It protects loads from weather conditions.</p>
                                    </div>
                                    <footer class="lqd-lp-footer relative z-2">
                                       <a href="#" class="btn btn-naked uppercase tracking-0/1em size-sm font-bold lqd-lp-read-more items-center text-12">
                                          <span class="btn-line btn-line-before inline-block relative text-secondary text-12"></span> <span class="btn-txt inline-block text-secondary">Order</span> 
                                          <span class="btn-line btn-line-after inline-block text-secondary relative">
                                             <svg class="inline-block absolute" xmlns="http://www.w3.org/2000/svg" width="12" height="32" viewBox="0 0 12 32" style="height: 2em;">
                                                <path fill="currentColor" d="M8.375 16L.437 8.062C-.125 7.5-.125 6.5.438 5.938s1.563-.563 2.126 0l9 9c.562.562.624 1.5.062 2.062l-9.063 9.063c-.312.312-.687.437-1.062.437s-.75-.125-1.063-.438c-.562-.562-.562-1.562 0-2.125z"></path>
                                             </svg>
                                          </span>
                                       </a>
                                    </footer>
                                 </article>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section has-accordion pt-60 pb-120 bg-gray-100" id="careers">
                  <div class="container">
                     <div class="row">
                        <div class="col col-lg-12">
                              <h4 class="ld-fh-element mb-0/5em inline-block relative text-primary">We are hiring</h4>                           </div>
                        </div>
                     <div class="row items-center">
                        <div class="col col-12 col-xl-5 ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}" data-localscroll="true" data-localscroll-options="{&quot;itemsSelector&quot;:&quot;a&quot;}">
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                              <h2 class="ld-fh-element mb-0/5em inline-block relative">DRIVERS BENEFITS</h2>
                           </div>
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                              <ul>
                                 <li>Weekly competitive pay</li>
                                 <li>70 cents per mile for company drivers</li>
                                 <li>24/7 hours assistance</li>
                                 <li>Fuel Discount</li>
                                 <li>OTR/Regional/Local</li>
                              </ul>
                           </div>
                           </div>
                        <div class="col col-12 col-xl-5 ca-initvalues-applied lqd-animations-done" data-custom-animations="true" data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;duration&quot; : 1800 , &quot;delay&quot; : 180 , &quot;ease&quot;: &quot;power4.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;35px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}" data-localscroll="true" data-localscroll-options="{&quot;itemsSelector&quot;:&quot;a&quot;}">
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                              <h2 class="ld-fh-element mb-0/5em inline-block relative">OWNER OPERATORS</h2>
                           </div>
                           <div class="ld-fancy-heading relative animation-element lqd-unit-animation-done" >
                              <ul>
                                 <li>90% from gross for owner operators</li>
                                 <li>24/7 hours assistance</li>
                                 <li>We cover all 48 states</li>
                              </ul>
                           </div>
                           <br>
                           <a href="#what-we-do" class="btn btn-solid btn-md font-bold btn-icon-right btn-hover-reveal text-16 text-secondary bg-primary rounded-4 hover:bg-secondary hover:text-white animation-element lqd-unit-animation-done" target="_blank" rel="nofollow" ><span class="btn-txt" data-text="learn more">learn more</span> <span class="btn-icon text-1/15em"><i aria-hidden="true" class="lqd-icn-ess icon-md-arrow-round-forward"></i></span></a>
                        </div>
                     </div>
                  </div>
               </section>
               <section class="lqd-section map bg-yellow-100">
                  <div class="container-fluid">
                     <div class="row">
                        <div class="col col-12 p-0">
                           <div class="ld-gmap-container relative h-550">
                              <div class="ld-gmap w-full h-full" data-plugin-map="true" data-plugin-options="{&quot;style&quot;: &quot;assassinsCreedIV&quot;, &quot;address&quot;: &quot;Manhattan&quot;, &quot;marker_style&quot;: &quot;html&quot;, &quot;markers&quot; : null , &quot;map&quot;: {&quot;zoom&quot; : 14 , &quot;mapTypeId&quot;: &quot;roadmap&quot;, &quot;zoomControl&quot;: true}}" style="position: relative; overflow: hidden;">
                                 <div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
                                    <div tabindex="0" aria-label="Hartă" aria-roledescription="hartă" role="region" aria-describedby="2999CBC8-95BC-48A0-9E5A-08AE843EA1EE" style="position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;">
                                       <div id="2999CBC8-95BC-48A0-9E5A-08AE843EA1EE" style="display: none;"></div>
                                    </div>
                                    <div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
                                       <div style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
                                          <div style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; will-change: transform;">
                                             <div style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"></div>
                                             <div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
                                             <div style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
                                             <div style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"></div>
                                          </div>
                                          <div style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
                                             <div style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; will-change: transform;">
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"><span id="87BB8A13-E807-4B83-B14D-C2B1F5A7CB06" style="display: none;">Pentru a naviga, apasă pe tastele săgeți.</span></div>
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
                                             </div>
                                          </div>
                                          <div class="gm-style-moc" style="z-index: 4; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
                                             <p class="gm-style-mot"></p>
                                          </div>
                                       </div>
                                       <iframe aria-hidden="true" frameborder="0" tabindex="-1" style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none; opacity: 0;" src="./index_files/saved_resource.html"></iframe>
                                       <div style="pointer-events: none; width: 100%; height: 100%; box-sizing: border-box; position: absolute; z-index: 1000002; opacity: 0; border: 2px solid rgb(26, 115, 232);"></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
            </div>
         </main>
         <div class="lqd-back-to-top fixed" data-back-to-top="true">
            <a href="#wrap" class="inline-flex items-center justify-center rounded-full relative overflow-hidden" data-localscroll="true">
               <svg class="inline-block" xmlns="http://www.w3.org/2000/svg" width="21" height="32" viewBox="0 0 21 32" style="width: 1em; height: 1em;">
                  <path fill="white" d="M10.5 13.625l-7.938 7.938c-.562.562-1.562.562-2.124 0C.124 21.25 0 20.875 0 20.5s.125-.75.438-1.063L9.5 10.376c.563-.563 1.5-.5 2.063.063l9 9c.562.562.562 1.562 0 2.125s-1.563.562-2.125 0z"></path>
               </svg>
            </a>
         </div>
         <footer id="site-footer" class="main-footer link-white-50 link-14 bg-center bg-inherit bg-green-700 bg-no-repeat" style="background-image: url(&#39;./assets/images/demo/company/footer-bg.png&#39;);" data-sticky-footer="true" data-sticky-footer-options="{&quot;shadow&quot;: &quot;2&quot;}">
            <section class="lqd-section module-top pt-60">
               <div class="container">
                  <div class="row">
                     <div class="col col-12 col-xl-4">
                        <div class="mr-50 mb-30 flex flex-col">
                           <div class="mb-35"><img src="./img/logo-white.png" alt="12 Transs"></div>
                           <div class="ld-fancy-heading relative">
                              <p class="mb-3em text-white opacity-50 inline-block relative">12 Transs Logistics will put you on the fast-track to your new driving career</p>
                           </div>
                           <div class="module-icon -mr-10 -ml-10">
                              <ul class="reset-ul icon-list-items inline-items flex items-center mb-0">
                                 <li class="mx-10 icon-list-item inline-item inline-flex">
                                    <a href="#">
                                       <span class="icon-list-icon flex">
                                          <svg class="text-24 w-25 h-25" viewBox="0 0 512 512" fill="#849493">
                                             <path d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"></path>
                                          </svg>
                                       </span>
                                       <span class="icon-list-text"></span>
                                    </a>
                                 </li>
                                 <li class="mx-10 icon-list-item inline-item inline-flex">
                                    <a href="#">
                                       <span class="icon-list-icon flex">
                                          <svg class="text-24 w-25 h-25" viewBox="0 0 448 512" fill="#849493">
                                             <path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path>
                                          </svg>
                                       </span>
                                       <span class="icon-list-text"></span>
                                    </a>
                                 </li>
                                 <li class="mx-10 icon-list-item inline-item inline-flex">
                                    <a href="#">
                                       <span class="icon-list-icon flex">
                                          <svg class="text-24 w-25 h-25" viewBox="0 0 496 512" fill="#849493">
                                             <path d="M496 256c0 137-111 248-248 248-25.6 0-50.2-3.9-73.4-11.1 10.1-16.5 25.2-43.5 30.8-65 3-11.6 15.4-59 15.4-59 8.1 15.4 31.7 28.5 56.8 28.5 74.8 0 128.7-68.8 128.7-154.3 0-81.9-66.9-143.2-152.9-143.2-107 0-163.9 71.8-163.9 150.1 0 36.4 19.4 81.7 50.3 96.1 4.7 2.2 7.2 1.2 8.3-3.3.8-3.4 5-20.3 6.9-28.1.6-2.5.3-4.7-1.7-7.1-10.1-12.5-18.3-35.3-18.3-56.6 0-54.7 41.4-107.6 112-107.6 60.9 0 103.6 41.5 103.6 100.9 0 67.1-33.9 113.6-78 113.6-24.3 0-42.6-20.1-36.7-44.8 7-29.5 20.5-61.3 20.5-82.6 0-19-10.2-34.9-31.4-34.9-24.9 0-44.9 25.7-44.9 60.2 0 22 7.4 36.8 7.4 36.8s-24.5 103.8-29 123.2c-5 21.4-3 51.6-.9 71.2C65.4 450.9 0 361.1 0 256 0 119 111 8 248 8s248 111 248 248z"></path>
                                          </svg>
                                       </span>
                                       <span class="icon-list-text"></span>
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="col col-12 col-md-6 col-xl-4">
                        <div class="ml-60 mb-30 flex flex-col items-start sm:ml-0 module-contact">
                           <div class="ld-fancy-heading relative">
                              <h3 class="ld-fh-element mb-2em text-white text-16 inline-block relative">Contact</h3>
                           </div>
                           <div class="mb-30 pb-10 iconbox relative items-center">
                              <div class="iconbox-icon-wrap mr-25">
                                 <div class="iconbox-icon-container inline-flex w-20 text-20">
                                    <svg class="w-1em h-1em" xmlns="http://www.w3.org/2000/svg" width="15.438" height="15.438" viewBox="0 0 15.438 15.438">
                                       <path d="M0-14.844l-.315.2-7.4,4.824V.594H7.719V-9.815L.315-14.64Zm0,1.41L6.049-9.5,0-5.585-6.049-9.5ZM-6.531-8.405-.315-4.379l.315.2,6.531-4.23V-.594H-6.531Z" transform="translate(7.719 14.844)" fill="#29E9FF"></path>
                                    </svg>
                                 </div>
                              </div>
                              <div class="contents flex flex-col">
                                 <h3 class="lqd-iconbox-heading opacity-50 text-white text-13 font-normal leading-1em mb-0">Looking for collaboration?</h3>
                                 <p><span class="text-16 text-white">info@12transs.com</span></p>
                              </div>
                           </div>
                           <div class="mb-30 pb-10 iconbox relative items-center">
                              <div class="iconbox-icon-wrap mr-25">
                                 <div class="iconbox-icon-container inline-flex w-20 text-20">
                                    <svg class="w-1em h-1em" xmlns="http://www.w3.org/2000/svg" width="15.75" height="16.099" viewBox="0 0 15.75 16.099">
                                       <path d="M3.938-16.406a3.8,3.8,0,0,0-1.969.533A4.013,4.013,0,0,0,.533-14.437,3.8,3.8,0,0,0,0-12.469a3.366,3.366,0,0,0,.164.984,8.121,8.121,0,0,0,.41,1.066q.472,1.046,1.148,2.235Q2.563-6.747,3.4-5.537l.533.779L5-6.316Q5.64-7.28,6.152-8.183A20.572,20.572,0,0,0,7.3-10.418a8.121,8.121,0,0,0,.41-1.066,3.366,3.366,0,0,0,.164-.984,3.8,3.8,0,0,0-.533-1.969,4.013,4.013,0,0,0-1.436-1.436A3.8,3.8,0,0,0,3.938-16.406Zm-6.583,1.271L-7.875-12.9V-.308L-2.6-2.584,2.646-.615,7.875-2.851V-8.572q-.513.984-1.312,2.256v2.6L3.281-2.317V-3.384L1.969-5.291v3.035L-1.969-3.732v-9.762l.718.267A5.446,5.446,0,0,1-.9-14.5Zm6.583.041a2.6,2.6,0,0,1,1.323.349,2.554,2.554,0,0,1,.954.954,2.6,2.6,0,0,1,.349,1.323,2.49,2.49,0,0,1-.123.625,7.614,7.614,0,0,1-.328.892Q5.742-10.131,5-8.839q-.472.82-.964,1.538l-.1.164-.1-.164q-.492-.718-.964-1.538a22.116,22.116,0,0,1-1.107-2.112,7.614,7.614,0,0,1-.328-.892,2.49,2.49,0,0,1-.123-.625,2.6,2.6,0,0,1,.349-1.323,2.554,2.554,0,0,1,.954-.954A2.6,2.6,0,0,1,3.938-15.094Zm-7.219,1.641v9.741L-6.562-2.317v-9.721Z" transform="translate(7.875 16.406)" fill="#29E9FF"></path>
                                    </svg>
                                 </div>
                              </div>
                              <div class="contents flex flex-col">
                                 <h3 class="lqd-iconbox-heading opacity-50 text-white text-13 font-normal leading-1em mb-0">Visit our Local Store</h3>
                                 <p><span class="text-16 text-white">Orlando, FL</span></p>
                              </div>
                           </div>
                           <div class="mb-30 pb-10 iconbox relative items-center">
                              <div class="iconbox-icon-wrap mr-25">
                                 <div class="iconbox-icon-container inline-flex w-20 text-20">
                                    <svg class="w-1em h-1em" xmlns="http://www.w3.org/2000/svg" width="19.063" height="19.057" viewBox="0 0 19.063 19.057">
                                       <path d="M1.969-18.375v1.313a7.172,7.172,0,0,1,3.65.984A7.31,7.31,0,0,1,8.2-13.494a7.172,7.172,0,0,1,.984,3.65H10.5A8.353,8.353,0,0,0,9.331-14.15a8.4,8.4,0,0,0-3.056-3.056A8.353,8.353,0,0,0,1.969-18.375Zm-6.788,1.969a1.442,1.442,0,0,0-.964.349L-7.9-13.9l.062-.041A1.966,1.966,0,0,0-8.5-12.879a2.041,2.041,0,0,0,.072,1.23A20.666,20.666,0,0,0-6.891-8.367,20.038,20.038,0,0,0-3.671-4.2,21.246,21.246,0,0,0,3.773.554h.021a2.245,2.245,0,0,0,1.2.082A2.32,2.32,0,0,0,6.07.1L8.142-1.969a1.379,1.379,0,0,0,.41-1.015A1.379,1.379,0,0,0,8.142-4L5.455-6.706a1.391,1.391,0,0,0-1.025-.41,1.391,1.391,0,0,0-1.025.41L2.112-5.394A10.206,10.206,0,0,1-.595-7.229,8.015,8.015,0,0,1-2.42-9.905l1.313-1.312a1.505,1.505,0,0,0,.431-1.077,1.234,1.234,0,0,0-.492-1.015l.062.062-2.748-2.81A1.442,1.442,0,0,0-4.819-16.406Zm6.788.656v1.313a4.5,4.5,0,0,1,2.307.615,4.558,4.558,0,0,1,1.671,1.671,4.5,4.5,0,0,1,.615,2.307H7.875a5.809,5.809,0,0,0-.8-2.974A6.127,6.127,0,0,0,4.942-14.95,5.809,5.809,0,0,0,1.969-15.75Zm-6.788.656a.253.253,0,0,1,.144.062l2.687,2.748a.142.142,0,0,1-.041.144l-1.948,1.928.144.41.267.574A11.008,11.008,0,0,0-2.81-7.875,7.98,7.98,0,0,0-1.5-6.3,11.479,11.479,0,0,0,.82-4.573,8.9,8.9,0,0,0,1.969-4l.41.185L4.368-5.8q.041-.041.062-.041t.062.041L7.26-3.035q.041.041.041.051t-.041.051L5.209-.9A.945.945,0,0,1,4.225-.7a19.676,19.676,0,0,1-6.973-4.43A19.5,19.5,0,0,1-5.763-9.044,17.408,17.408,0,0,1-7.2-12.1v-.021a.679.679,0,0,1-.021-.441.745.745,0,0,1,.226-.4l2.03-2.071A.2.2,0,0,1-4.819-15.094Zm6.788,1.969v1.313a1.9,1.9,0,0,1,1.395.574,1.9,1.9,0,0,1,.574,1.395H5.25a3.21,3.21,0,0,0-.441-1.641,3.258,3.258,0,0,0-1.2-1.2A3.21,3.21,0,0,0,1.969-13.125Z" transform="translate(8.563 18.375)" fill="#29E9FF"></path>
                                    </svg>
                                 </div>
                              </div>
                              <div class="contents flex flex-col">
                                 <h3 class="lqd-iconbox-heading opacity-50 text-white text-13 font-normal leading-1em mb-0">Monday-Friday: 08am-9pm</h3>
                                 <p><span class="text-16 text-white">+(1) 407 692 1194</span></p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col col-12 col-md-6 col-xl-4 p-0">
                        <div class="module-list">
                           <div class="container-fluid">
                              <div class="row items-start">
                                 <div class="col col-6 mb-30">
                                    <div class="ld-fancy-heading relative">
                                       <h3 class="ld-fh-element mb-2em text-white text-16 inline-block relative">Useful Links</h3>
                                    </div>
                                    <div class="lqd-fancy-menu lqd-custom-menu relative lqd-menu-td-none">
                                       <ul class="reset-ul">
                                          <li class="mb-10"><a href="#">Management</a></li>
                                          <li class="mb-10"><a href="#">Reporting</a></li>
                                          <li class="mb-10"><a href="#">Press</a></li>
                                          <li class="mb-10"><a href="#">Company</a></li>
                                          <li><a href="#">Careers</a></li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="col col-6 mb-30">
                                    <div class="ld-fancy-heading relative">
                                       <h3 class="ld-fh-element text-white text-16 mb-2em inline-block relative">Company</h3>
                                    </div>
                                    <div class="lqd-fancy-menu lqd-custom-menu relative lqd-menu-td-none">
                                       <ul class="reset-ul">
                                          <li class="mb-10"><a href="#">Company</a></li>
                                          <li class="mb-10"><a href="#">Careers</a></li>
                                          <li class="mb-10"><a href="#">Press media</a></li>
                                          <li><a href="#">Our Blog</a></li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <section class="lqd-section module-bottom py-30 border-top text-white-10 transition-all">
               <div class="container">
                  <div class="row justify-between">
                     <div class="col col-12 col-md-4">
                        <div class="ld-fancy-heading relative">
                           <p class="ld-fh-element text-13 text-white-50 inline-block relative mb-0/5em">Copyright ©2024 12Trans Logistics</p>
                        </div>
                     </div>
                     <div class="col col-12 col-md-8 text-end sm:text-start">
                        <div class="lqd-fancy-menu lqd-custom-menu relative lqd-menu-td-none">
                           <ul class="reset-ul inline-ul">
                              <li class="mr-25"><a href="#">Management</a></li>
                              <li class="mr-25"><a href="#">Reporting</a></li>
                              <li class="mr-25"><a href="#">Press</a></li>
                              <li class="mr-25"><a href="#">Company</a></li>
                              <li><a href="#">Careers</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </footer>
      </div>
      <div id="contact-modal" class="lqd-modal lity-hide" data-modal-type="fullscreen">
         <div class="lqd-modal-inner py-25 px-2em">
            <div class="lqd-modal-head">
               <h2>Get in touch</h2>
            </div>
            <div class="lqd-modal-content">
               <div class="relative flex flex-wrap -mr-15 -ml-15 module-bottom">
                  <div class="container-fluid">
                     <div class="row items-center">
                        <div class="col col-12 col-md-6">
                           <div class="relative flex flex-col justify-content transition-all border-1 border-black-10 rounded-4 pt-55 pb-35 px-60 module-inner">
                              <div class="ld-fancy-heading">
                                 <h2 class="ld-fh-element mb-0/5em text-34 font-semibold">Get in touch</h2>
                              </div>
                              <div class="ld-fancy-heading">
                                 <p class="ld-fh-element mb-2/5em">We are here to answer any question you may have. Feel free to reach via contact form.</p>
                              </div>
                              <div class="iconbox text-align-default mb-10 items-start">
                                 <div class="iconbox-icon-wrap flex">
                                    <span class="iconbox-icon-container text-gray-200 text-16 mr-15">
                                       <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" height="1em" viewBox="0 0 384 512">
                                          <path d="M384 192c0 87.4-117 243-168.3 307.2c-12.3 15.3-35.1 15.3-47.4 0C117 435 0 279.4 0 192C0 86 86 0 192 0S384 86 384 192z"></path>
                                       </svg>
                                    </span>
                                 </div>
                                 <h3 class="text-15 text-black-60 leading-1/5em">Orlando, Florida</h3>
                              </div>
                              <div class="iconbox text-align-default mb-10 items-start">
                                 <div class="iconbox-icon-wrap flex">
                                    <span class="iconbox-icon-container text-gray-200 text-16 mr-15">
                                       <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" height="1em" viewBox="0 0 512 512">
                                          <path d="M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z"></path>
                                       </svg>
                                    </span>
                                 </div>
                                 <h3 class="text-15 text-black-60 leading-1/5em"><span>Email: </span><span class="text-black-60">info@12transs.com</span></h3>
                              </div>
                              <div class="iconbox text-align-default mb-10 items-start">
                                 <div class="iconbox-icon-wrap flex">
                                    <span class="iconbox-icon-container text-gray-200 text-16 mr-15">
                                       <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" height="1em" viewBox="0 0 384 512">
                                          <path d="M16 64C16 28.7 44.7 0 80 0H304c35.3 0 64 28.7 64 64V448c0 35.3-28.7 64-64 64H80c-35.3 0-64-28.7-64-64V64zM144 448c0 8.8 7.2 16 16 16h64c8.8 0 16-7.2 16-16s-7.2-16-16-16H160c-8.8 0-16 7.2-16 16zM304 64H80V384H304V64z"></path>
                                       </svg>
                                    </span>
                                 </div>
                                 <h3 class="text-15 text-black-60 leading-1/5em">Phone: +1 407 692 1194</h3>
                              </div>
                           </div>
                        </div>
                        <div class="col col-12 col-md-6 col-lg-5 offset-lg-1">
                           <div class="lqd-contact-form lqd-contact-form-inputs-filled lqd-contact-form-inputs-round lqd-contact-form-button-block lqd-contact-form-button-round pr-12percent">
                              <div role="form" class="lqd-cf" lang="en-GB">
                                 <div class="screen-reader-response">
                                    <p role="status" aria-live="polite" aria-atomic="true"></p>
                                 </div>
                                 <form action="todo/rrrr/mailer.php" method="post" class="lqd-cf-form" novalidate="novalidate" data-status="init">
                                    <p><span class="lqd-form-control-wrap text"><input type="text" name="name" value="" size="40" class="lqd-cf-form-control px-2em text-13 bg-gray-100 text-slate-300" aria-required="true" aria-invalid="false" placeholder="Your name"> </span><span class="lqd-form-control-wrap"><input type="email" name="email" value="" size="40" class="lqd-cf-form-control px-2em text-13 bg-gray-100 text-slate-300" aria-required="true" aria-invalid="false" placeholder="Your Email Address"> </span><span class="lqd-form-control-wrap textarea"><textarea name="message" cols="10" rows="4" class="lqd-cf-form-control px-2em text-13 bg-gray-100 text-slate-300" aria-required="true" aria-invalid="false" placeholder="Your message"></textarea> </span><input type="submit" value="Send email" class="lqd-cf-form-control px-2em text-14 bg-primary text-white"></p>
                                 </form>
                                 <div class="lqd-cf-response-output"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="lqd-modal-foot"></div>
         </div>
      </div>
      <script src="./index_files/js"></script><script src="./index_files/jquery.min.js"></script><script src="./index_files/bootstrap.min.js"></script><script src="./index_files/gsap.min.js"></script><script src="./index_files/SplitText.min.js"></script><script src="./index_files/ScrollTrigger.min.js"></script><script src="./index_files/fastdom.min.js"></script><script src="./index_files/flickity.pkgd.min.js"></script><script src="./index_files/flickity-fade.min.js"></script><script src="./index_files/lity.min.js"></script><script src="./index_files/fresco.js"></script><script src="./index_files/fontfaceobserver.js"></script><script src="./index_files/liquid-gdpr.min.js"></script><script src="./index_files/theme.min.js"></script><script src="./index_files/liquid-ajax-contact-form.min.js"></script>
      <div class="lqd-cc lqd-cc--inner fixed pointer-events-none"></div>
      <div class="lqd-cc--el lqd-cc-solid lqd-cc-explore flex items-center justify-center rounded-full fixed pointer-events-none">
         <div class="lqd-cc-solid-bg flex absolute lqd-overlay"></div>
         <div class="lqd-cc-solid-txt flex justify-center text-center relative">
            <div class="lqd-cc-solid-txt-inner">Explide</div>
         </div>
      </div>
      <div class="lqd-cc--el lqd-cc-solid lqd-cc-drag flex items-center justify-center rounded-full fixed pointer-events-none">
         <div class="lqd-cc-solid-bg flex absolute lqd-overlay"></div>
         <div class="lqd-cc-solid-ext lqd-cc-solid-ext-left inline-flex items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" style="width: 1em; height: 1em;">
               <path fill="currentColor" d="M19.943 6.07L9.837 14.73a1.486 1.486 0 0 0 0 2.25l10.106 8.661c.96.826 2.457.145 2.447-1.125V7.195c0-1.27-1.487-1.951-2.447-1.125z"></path>
            </svg>
         </div>
         <div class="lqd-cc-solid-txt flex justify-center text-center relative">
            <div class="lqd-cc-solid-txt-inner">Drag</div>
         </div>
         <div class="lqd-cc-solid-ext lqd-cc-solid-ext-right inline-flex items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" style="width: 1em; height: 1em;">
               <path fill="currentColor" d="M11.768 25.641l10.106-8.66a1.486 1.486 0 0 0 0-2.25L11.768 6.07c-.96-.826-2.457-.145-2.447 1.125v17.321c0 1.27 1.487 1.951 2.447 1.125z"></path>
            </svg>
         </div>
      </div>
      <div class="lqd-cc--el lqd-cc-arrow inline-flex items-center fixed top-0 left-0 pointer-events-none">
         <svg width="80" height="80" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M60.4993 0V4.77005H8.87285L80 75.9207L75.7886 79.1419L4.98796 8.35478V60.4993H0V0H60.4993Z"></path>
         </svg>
      </div>
      <div class="lqd-cc--el lqd-cc-custom-icon rounded-full fixed pointer-events-none">
         <div class="lqd-cc-ci inline-flex items-center justify-center rounded-full relative">
            <svg width="32" height="32" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" style="width: 1em; height: 1em;">
               <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd" d="M16.03 6a1 1 0 0 1 1 1v8.02h8.02a1 1 0 1 1 0 2.01h-8.02v8.02a1 1 0 1 1-2.01 0v-8.02h-8.02a1 1 0 1 1 0-2.01h8.02v-8.01a1 1 0 0 1 1.01-1.01z"></path>
            </svg>
         </div>
      </div>
      <div class="lqd-cc lqd-cc--outer fixed top-0 left-0 pointer-events-none"></div>
      <template id="lqd-snickersbar"></template>
      <template id="lqd-temp-sticky-header-sentinel"></template>
      <div class="lity" role="dialog" aria-label="Dialog Window (Press escape to close)" tabindex="-1" data-modal-type="default">
         <div class="lity-wrap" data-lity-close="" role="document">
            <div class="lity-loader" aria-hidden="true">Loading...</div>
            <div class="lity-container">
               <div class="lity-content"></div>
            </div>
            <button class="lity-close" type="button" aria-label="Close (Press escape to close)" data-lity-close="">×</button>
         </div>
      </div>
      <div class="lqd-sticky-sentinel invisible absolute pointer-events-none"></div>
      <div class="lqd-parallax-sentinel pointer-events-none pos-abs z-index--1 invisible absolute -z-1" style="width: 85.0625px; height: 67.0875px; top: 4762.05px; left: 89.6px;"></div>
      <div style="position: absolute; left: 0px; top: -2px; height: 1px; overflow: hidden; visibility: hidden; width: 1px;"><span style="position: absolute; font-size: 300px; width: auto; height: auto; margin: 0px; padding: 0px; font-family: Roboto, Arial, sans-serif;">BESbswy</span></div>
   </body>
</html>