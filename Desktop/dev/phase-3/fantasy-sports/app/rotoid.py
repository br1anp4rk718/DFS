from bs4 import BeautifulSoup
import requests
import csv
import concurrent.futures


def get_webdata(idnum):
    baseurl = "http://www.rotoworld.com/player/mlb/"
    data = requests.get(baseurl + str(idnum))
    return data


with concurrent.futures.ThreadPoolExecutor(max_workers=25) as executor:
    future_to_url = {executor.submit(get_webdata, idnum): idnum for idnum in range(1000,10001)}
    for future in concurrent.futures.as_completed(future_to_url):
        idnum = future_to_url[future]
        data = future.result()
        soup = BeautifulSoup(data.text, "html.parser")
        title = soup.title.string.strip()
        name = title.split(" - ")[0]
        name = None if name == "- ARZ" else name
        print([idnum, name])
        f = open("playerids.csv", "a")
        writer = csv.writer(f)
        writer.writerow([idnum, name])
        f.close()