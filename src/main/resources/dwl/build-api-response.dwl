%dw 2.0
output application/json
---
if (vars.httpStatus == "200")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.200') }
else 
if (payload.country == "206")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.206') }
else 
if (payload.country == "210")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.210') }
else 
if (payload.country == "216")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.216') }
else 
if (payload.country == "220")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.220') }
else 
if (payload.country == "226")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.226') }
else 
if (payload.country == "404")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.404') }
	else 
if (payload.country == "409")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.409') }
else 
if (payload.country == "410")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.410') }
else 
if (payload.country == "403")
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.403') }
else 
if (payload.country == 503)
	{ "responseCode" : vars.httpStatus,
	"responseText" : p('errors.calm2.response.status.503') }
else { "responseCode" : vars.httpStatus,
	"responseText" : "" }