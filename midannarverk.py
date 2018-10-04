from sys import argv

import bottle
from bottle import *
import urllib.request, json

@route("/")
def index():
    return template("index", data=data)


with urllib.request.urlopen('http://apis.is/petrol') as url:
    data = json.loads(url.read().decode())


@route("/company/<company>")
def index (company):
    return template("company", data=data,  co=company)

@route("/moreinfo/<key>")
def index(key):
    return template("moreinfo", data=data, k=key)

@error(404)
def villa(error):
    return """
    <h2 style='color:red'>Þessi síða finnst ekki </h2>
    """

@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")


#run(host="localhost", port=8760, reloader=True, debug=True)
run(host='0.0.0.0', port=argv[1])
