import requests

def currency_r(valute_name):
    import xmltodict, json
    data = requests.get('http://www.cbr.ru/scripts/XML_daily.asp')
    xpars = xmltodict.parse(data.text, encoding='')
    result = json.dumps(xpars)
    result = json.loads(result)
    result = result['ValCurs']['Valute']
    for i in result:
        if i['CharCode'] == valute_name.upper():
            return i['Value']
