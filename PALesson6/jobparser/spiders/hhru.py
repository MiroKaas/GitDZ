import scrapy
from scrapy.http import HtmlResponse
from jobparser.items import JobparserItem
# x: dict # присваиваем класс

class HhruSpider(scrapy.Spider):
    name = 'hhru'
    allowed_domains = ['hh.ru']
    start_urls = ['https://hh.ru/search/vacancy?clusters=true&area=1&ored_clusters=true&enable_snippets=true&salary=&text=Python&from=suggest_post', 
    'https://hh.ru/search/vacancy?area=2&search_field=name&search_field=company_name&search_field=description&clusters=true&ored_clusters=true&enable_snippets=true&text=Python&from=suggest_post']

    def parse(self, response: HtmlResponse):
        next_page = response.xpath("//a[@data-qs='pager-next']/@href").get()
        if next_page:
            yield response.follow(next_page, callback=self.parse)

        links = response.xpath("//span/a[@data-qa='vacancy-serp__vacancy-title']/@href").getall()
        for link in links:
            yield response.follow(link, callback=self.vacancy_parse)

    def vacancy_parse(self, response: HtmlResponse):
        name = response.xpath("//h1//text()").get()
        salary = response.xpath("//div[@data-qa='vacancy-salary']//text()").get()
        url = response.url
        yield JobparserItem(name=name, salary=salary, url=url)
