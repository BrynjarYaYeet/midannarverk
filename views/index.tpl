<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Aðalsíða</title>
	<link rel="stylesheet" type="text/css" href="/static/styles1.css">
</head>
<body>
	%include("haus.tpl")

	<%

	minpriceP = 2000.0
	minpriceD = 2000.0

	le=len(data['results'])
	c=0

	for x in range(le -1):
		c=x
		if minpriceP > data['results'][x]['bensin95']:
			minpriceP = data['results'][x]['bensin95']
			companyP = data['results'][x]['company']
		end

		if minpriceD > data['results'][x]['diesel']:
			minpriceD = data['results'][x]['diesel']
			companyP = data['results'][x]['company']
		end



	if (data['results'][x]['company'] != data['results'][x-1]['company']):
	%>
	
	<div class="row">
		<a href="/company/{{data['results'][x]['company']}}">
		{{data['results'][x]['company']}}</a>
	
	</div>
		<% 
		end
	end	
	%>

	<div class="verd">
		<h3 class="texti">Besta verðið</h3>
		<h4 class="texti2">Bensín 95 oktan: <i>{{minpriceP}}</i> Kr hjá {{companyP}}</h4>

		<h3 class="texti">Besta verðið</h3>
		<h4 class="texti2">Díesel: <i>{{minpriceD}}</i> Kr hjá {{companyP}}</h4>
	</div>
	<% 
		end
	end
	%>
	
	<%
	import datetime
	date=data['timestampPriceCheck']
	%>

	<div class="timi">
		<h3>Tími síðustu uppfærslu: <i class="dagsetning">{{date}}</i></h3>
	</div>


		<% 
		end
	end
	%>



	%include("fotur.tpl")
</body>
</html>