from bs4 import BeautifulSoup
import requests

def practiceSessionScraping(raceNum, raceName, sessionName):
    url = f"https://www.formula1.com/en/results.html/2022/races/{raceNum}/{raceName}/{sessionName}.html"

    page = requests.get(url).text
    doc = BeautifulSoup(page, "html.parser")
    page_text = doc.find(class_="resultsarchive-table")
    x = doc.findAll("td")

    # Numbers
    search_text = "awd"
    for i in range(2, 182, 9):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Names
    search_text2 = "zxc"
    for i in range(3, 183, 9):
        replace_text = x[i].text[-4:-1]
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text2, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Teams
    search_text3 = "cvb"
    for i in range(4, 184, 9):
        textFor4 = ""
        if (x[i].text == "Red Bull Racing RBPT"):
            textFor4 = "redbullColor"
        if (x[i].text == "Ferrari"):
            textFor4 = "ferrariColor"
        if (x[i].text == "Mercedes"):
            textFor4 = "mercedesColor"
        if (x[i].text == "AlphaTauri RBPT"):
            textFor4 = "alphatauriColor"
        if (x[i].text == "Aston Martin Aramco Mercedes"):
            textFor4 = "astonMartinColor"
        if (x[i].text == "Alpine Renault"):
            textFor4 = "alpineColor"
        if (x[i].text == "Alfa Romeo Ferrari"):
            textFor4 = "alfaromeoColor"
        if (x[i].text == "Williams Mercedes"):
            textFor4 = "williamsColor"
        if (x[i].text == "McLaren Mercedes"):
            textFor4 = "mclarenColor"
        if (x[i].text == "Haas Ferrari"):
            textFor4 = "haasColor"
        replace_text = textFor4
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text3, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Time differences
    search_text4 = "dfg"
    # Replace the fastest time manually
    for i in range(15, 185, 9):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text4, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Fastest time
    search_text5 = "lkj"
    replace_text = x[5].text
    with open(r'allDataOfSessions.json', 'r') as file:
        data = file.read()
        data = data.replace(search_text5, replace_text, 1)
    with open(r'allDataOfSessions.json', 'w') as file:
        file.write(data)


def qualifyingSessionScraping(raceNum, raceName, sessionName):
    url = f"https://www.formula1.com/en/results.html/2022/races/{raceNum}/{raceName}/{sessionName}.html"

    page = requests.get(url).text
    doc = BeautifulSoup(page, "html.parser")
    page_text = doc.find(class_="resultsarchive-table")
    x = doc.findAll("td")

    # Numbers
    search_text = "awd"
    for i in range(2, 142, 7):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Names
    search_text2 = "zxc"
    for i in range(3, 143, 7):
        replace_text = x[i].text[-4:-1]
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text2, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Teams
    search_text3 = "cvb"
    for i in range(4, 144, 7):
        textFor4 = ""
        if (x[i].text == "Red Bull Racing RBPT"):
            textFor4 = "redbullColor"
        if (x[i].text == "Ferrari"):
            textFor4 = "ferrariColor"
        if (x[i].text == "Mercedes"):
            textFor4 = "mercedesColor"
        if (x[i].text == "AlphaTauri RBPT"):
            textFor4 = "alphatauriColor"
        if (x[i].text == "Aston Martin Aramco Mercedes"):
            textFor4 = "astonMartinColor"
        if (x[i].text == "Alpine Renault"):
            textFor4 = "alpineColor"
        if (x[i].text == "Alfa Romeo Ferrari"):
            textFor4 = "alfaromeoColor"
        if (x[i].text == "Williams Mercedes"):
            textFor4 = "williamsColor"
        if (x[i].text == "McLaren Mercedes"):
            textFor4 = "mclarenColor"
        if (x[i].text == "Haas Ferrari"):
            textFor4 = "haasColor"
        replace_text = textFor4
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text3, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Time differences
    search_text4 = "dfg"
    # Replace the fastest time manually
    for i in range(12, 145, 7):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text4, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Fastest time
    search_text5 = "lkj"
    replace_text = x[5].text
    with open(r'allDataOfSessions.json', 'r') as file:
        data = file.read()
        data = data.replace(search_text5, replace_text, 1)
    with open(r'allDataOfSessions.json', 'w') as file:
        file.write(data)


def raceSessionScraping(raceNum, raceName, sessionName):
    url = f"https://www.formula1.com/en/results.html/2022/races/{raceNum}/{raceName}/{sessionName}.html"
    page = requests.get(url).text
    doc = BeautifulSoup(page, "html.parser")
    page_text = doc.find(class_="resultsarchive-table")
    x = doc.findAll("td")

    # Numbers
    search_text = "awd"
    for i in range(2, 182, 9):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Names
    search_text2 = "zxc"
    for i in range(3, 183, 9):
        replace_text = x[i].text[-4:-1]
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text2, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Teams
    search_text3 = "cvb"
    for i in range(4, 184, 9):
        textFor4 = ""
        if (x[i].text == "Red Bull Racing RBPT"):
            textFor4 = "redbullColor"
        if (x[i].text == "Ferrari"):
            textFor4 = "ferrariColor"
        if (x[i].text == "Mercedes"):
            textFor4 = "mercedesColor"
        if (x[i].text == "AlphaTauri RBPT"):
            textFor4 = "alphatauriColor"
        if (x[i].text == "Aston Martin Aramco Mercedes"):
            textFor4 = "astonMartinColor"
        if (x[i].text == "Alpine Renault"):
            textFor4 = "alpineColor"
        if (x[i].text == "Alfa Romeo Ferrari"):
            textFor4 = "alfaromeoColor"
        if (x[i].text == "Williams Mercedes"):
            textFor4 = "williamsColor"
        if (x[i].text == "McLaren Mercedes"):
            textFor4 = "mclarenColor"
        if (x[i].text == "Haas Ferrari"):
            textFor4 = "haasColor"
        replace_text = textFor4
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text3, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Time differences
    search_text4 = "dfg"
    # Replace the fastest time manually
    for i in range(15, 185, 9):
        replace_text = x[i].text
        with open(r'allDataOfSessions.json', 'r') as file:
            data = file.read()
            data = data.replace(search_text4, replace_text, 1)
        with open(r'allDataOfSessions.json', 'w') as file:
            file.write(data)

    # Fastest time
    search_text5 = "lkj"
    replace_text = x[6].text
    with open(r'allDataOfSessions.json', 'r') as file:
        data = file.read()
        data = data.replace(search_text5, replace_text, 1)
    with open(r'allDataOfSessions.json', 'w') as file:
        file.write(data)


# Sample execution - All methods export into a file assumed to be previously existing called "allDataOfSessions.json"
practiceSessionScraping(1138, "abu-dhabi", "practice-1")
practiceSessionScraping(1138, "abu-dhabi", "practice-2")
practiceSessionScraping(1138, "abu-dhabi", "practice-3")
qualifyingSessionScraping(1138, "abu-dhabi", "starting-grid")
raceSessionScraping(1138, "abu-dhabi", "race-result")
