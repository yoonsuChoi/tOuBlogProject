<!DOCTYPE html>
<html lang="en-us">
<head>
<title></title>
<style>
ol, ul {
	list-style: none;
	padding: 0;
}

ul {
	list-style-type: disc;
	margin: 0 0 2em;
	padding-left: 1.12em;
}

.bio-recently {
	list-style-type: none;
	padding-left: 0px;
	border-bottom: 0.063rem solid rgba(0, 0, 0, 0.2);
	margin-bottom: 4%;
}
	
div {
	padding: 0;
}

.centered {
	max-width: 31em;
	margin: 0 auto;
	clear: both;
	width: 90%;
}
/* @media all and (min-width:600px) */
.centered {
	width: 84%;
}

.container::after, .centered::after {
	content: "";
	display: table;
	clear: both;
}

article, aside, canvas, details, figcaption, figure, footer, header,
	hgroup, main, menu, nav, section, summary {
	display: block;
}

.home .content {
	margin: 3em auto;
}
/* @media all and (min-width:600px) */
.home .content {
	font-size: 1.12em;
}
/* @media all and (min-width:800px) */
.home .content {
	margin: 8% auto;
	font-size: 1.18em;
}
/* @media all and (min-width:1030px) */
.home .content {
	margin: 10vh auto 10vh;
	font-size: 1.25em;
}
/* @media all and (min-width:1250px) */
.home .content {
	margin: 10vh auto 12vh;
	font-size: 1.31em;
}

html, body {
	background: #ffffff;
	margin: 0;
	padding: 0;
}

body {
	color: #3a3a3a;
	background: #fff;
	margin: 0;
	font-family: "colfax-web", sans-serif;
	font-weight: 400;
	line-height: 1.65;
	font-size: 106.3%;
}
/* @media all and (min-width:600px) */
body {
	font-size: 118.8%;
}
/* @media all and (min-width:800px) */
body {
	font-size: 131.3%;
}
/* @media all and (min-width:1030px) */
body {
	font-size: 137.5%;
}
/* @media all and (min-width:1250px) */
body {
	font-size: 143.8%;
}
/* @media all and (min-width:1400px) */
body {
	font-size: 1.56em;
}

html {
	overflow-y: auto;
}

.bio-recently li {
	border-top: 0.063rem solid rgba(0, 0, 0, 0.2);
	padding: 4% 0;
}
/* @media all and (min-width:600px) */
.bio-recently li {
	display: -webkit-flex;
	display: flex;
}
/* @media all and (min-width:600px) */
.bio-recently li span {
	width: 40%;
}

p {
	margin: 0 0 2em 0;
}
/* @media all and (min-width:600px) */
.bio-recently li p {
	margin: auto;
	padding-left: 5%;
}
/* @media all and (min-width:600px) */
.bio-recently li p {
	width: 60%;
}
/* @media all and (min-width:600px) */
.home .content p {
	font-size: 16px;
}
/* @media all and (min-width:800px) */
.home .content p {
	font-size: 18px;
}
/* @media all and (min-width:1030px) */
.home .content p {
	font-size: 21px;
}
/* @media all and (min-width:1250px) */
.home .content p {
	font-size: 23px;
}

a {
	text-decoration: none;
	color: #ee4938;
	transition: color 0.2s ease-out;
}

img, video {
	max-width: 100%;
	height: auto;
}

img {
	width: auto;
	max-width: 100%;
	height: auto;
	margin: 0 auto 2em;
	display: block;
}

a img {
	border: none;
}

.bio-recently a img {
	transition: opacity 0.2s ease-out;
	-webkit-backface-visibility: hidden;
}

.bio-recently li img {
	margin-bottom: 1em;
}
/* @media all and (min-width:600px) */
.bio-recently li img {
	margin-bottom: 0px;
}
</style>
</head>
<body class="home blog">
	<div id="pagewrap">
		<main role="main">
		<section class="content">
			<div class="centered">
				<ul class="bio-recently col-2">
					<li><span><a href="http://godaytrip.com"><img
								alt="day trip" src="assets/uploads/2015/08/daytrip.jpg"></a></span>
						<p>
							Near and dear to our hearts, <a href="http://godaytrip.com">DayTrip</a>
							is a Paravel project designed to make it easy to find something
							great to do and someplace great to go. Austin/Texas area private
							beta out now.
						</p></li>
					<li><span><a href="http://themanyfacesof.com"><img
								alt="The Many Faces Of" src="assets/uploads/2016/03/tmfo-pd.jpg"></a></span>
						<p>
							We recently published two new <a href="http://themanyfacesof.com">TMFO</a>
							posts. One for <a href="http://themanyfacesof.com/burt-reynolds/">Burt
								Reynolds</a>, and another one called <a
								href="http://themanyfacesof.com/punch-dancing">Punch&nbsp;Dancing</a>.
						</p></li>
					<li><span><a href="http://paravelinc.com"><img
								alt="Paravel" src="assets/uploads/2015/08/paravel.jpg"></a></span>
						<p>
							We recently updated <a href="http://paravelinc.com/">paravelinc.com</a>
							with some new portfolio items, talks, podcasts, interviews, and a
							brand new home page graphic from <a
								href="http://www.neighborhood-studio.com/">Curtis Jinkins</a>.
						</p></li>
					<li><span><a
							href="http://trentwalton.com/2014/03/10/device-agnostic/"><img
								alt="Device Agnostic Post"
								src="assets/uploads/2015/08/device-agnostic.jpg"></a></span>
						<p>
							<a href="http://trentwalton.com/2014/03/10/device-agnostic/">Device
								Agnostic</a> summarizes how I view and approach building for the
							web. My perception has been shaped while working on responsive,
							component-based systems on a large-ish scale.
						</p></li>
					<li><span><a href="http://www.csszengarden.com/218/"><img
								alt="CSS Zen Garden" src="assets/uploads/2015/08/zen-garden.jpg"></a></span>
						<p>
							I was thrilled that <a href="https://typekit.com/">Typekit</a>
							and <a href="http://www.mezzoblue.com/about/dave/">Dave Shea</a>
							asked me to contribute a theme to <a
								href="http://www.csszengarden.com/218/">CSS Zen Garden</a> to
							celebrate its recent responsive update. Read about the process <a
								href="http://blog.typekit.com/2013/11/26/typekits-second-css-zen-garden-theme-apothecary/">here</a>
							and <a
								href="http://trentwalton.com/2014/06/23/optimizing-images/">here</a>.
						</p></li>
				</ul>
			</div>
		</section>
		</main>
	</div>
</body>
</html>
