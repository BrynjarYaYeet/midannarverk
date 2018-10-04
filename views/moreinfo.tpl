<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Meira info</title>
	<link rel="stylesheet" type="text/css" href="/static/styles3.css">
</head>
<body>
	%include("haus.tpl")
	<div class="main">

		<h3>Nánari upplýsingar</h3>
		<%
		for x in data['results']:
			if x['key'] ==k:
		%>

		<h3>Díesel verð: {{x['diesel']}} Kr</h3>
		<h3>Bensín verð: {{x['bensin95']}} Kr</h3>
		<h3>Söluaðili: {{x['company']}}</h3>
		<h3>Staður: {{x['name']}}</h3>



		<div class="kort">
			<h2>Staðsetning á korti</h2>
			<ul>
				<li>Breiddargráða: {{x['geo']['lat']}}</li>
				<li>Lengdargráða: {{x['geo']['lon']}}</li>
				<li><a href="https://www.google.com/maps/@{{x['geo']['lat']}},{{x['geo']['lon']}},18z/">Google maps</a></li>
			</ul>
			
		</div>

		<%
			end
		end
		%>

		<a href="/">Til baka</a>
	</div>

	%include("fotur.tpl")
</body>
</html>