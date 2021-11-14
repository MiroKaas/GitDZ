# 1. Не используя библиотеки для парсинга, распарсить (получить определённые данные) файл логов web-сервера nginx_logs.txt
# (https://github.com/elastic/examples/raw/master/Common%20Data%20Formats/nginx_logs/nginx_logs) — получить список кортежей вида: 
# (<remote_addr>, <request_type>, <requested_resource>). Например:

# [
# ...
# ('141.138.90.60', 'GET', '/downloads/product_2'),
# ('141.138.90.60', 'GET', '/downloads/product_2'),
# ('173.255.199.22', 'GET', '/downloads/product_2'),
# ...
# ]

# Примечание: код должен работать даже с файлами, размер которых превышает объем ОЗУ компьютера.

chunk_size = 1000

with open('nginx_logs.txt', 'r', encoding='utf-8') as f:
    parse_file = []
    while True:
        read_data = f.readlines(chunk_size)
        if not read_data:
            break
        for line in read_data:
            block = line.split(' ')
            remote_addr = block[0]
            request_type = block[5].replace('"', '')
            requested_resource = block[6]
            parse_file.append((remote_addr, request_type, requested_resource))

print(parse_file)