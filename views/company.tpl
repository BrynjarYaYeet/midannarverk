<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Company</title>
	<link rel="stylesheet" type="text/css" href="/static/styles2.css">
</head>
<body>
	%include("haus.tpl")
	
	<table>
	<tr>
		<th>Fyrirtæki</th>
		<th>Staður</th>

	</tr>
	<%
		cnt=0
		for x in data['results']:
			if x['company'] == co:
				cnt+=1
	%>
		<tr>
			<td><a href="/moreinfo/{{x['key']}}">{{x['company']}}</a></td>
			<td>{{x['name']}}</td>
		</tr>

	<%
			end
		end
	%>
	</table>
	<h3>fjöldi stöðva: {{cnt}}</h3>

	<a href="/">Til baka</a>

	%include("fotur.tpl")
</body>
</html>