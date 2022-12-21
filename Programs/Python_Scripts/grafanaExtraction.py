import os
import json

DIRECTORY = 'Grafana Dashboards'

def main():
    """
        Iterates through all grafana json files and extracts the sql queries
    """
    for filename in os.listdir(DIRECTORY):
        #filename = "National COVID Trends by Gender and Age-1670379900956.json"
        f = os.path.join(DIRECTORY, filename)
        fileOutputName = "Grafana Dashboards/"+filename.replace(".json","") + ".sql"
        file = open(fileOutputName, "w")

        commentedString = "/* DASHBOARD " + fileOutputName + "*/\n"
        file.write(commentedString)
        print(filename)
        if(filename.__contains__("Landing Page")):
            continue
        # checking if it is a file
        if os.path.isfile(f):
            data = getJsonData(f)
            getPanels(data,file)
    file.close()
    

def getPanels(data,file):
    """
        Function to print the sql query to a file
    """
    for item in data['panels']:
            title = "no title"
            try:
             title = item['title']       
             file.write("/*"+item['title']+"\t PANEL "+"*/\n")
            except KeyError:
                print("No title found")
                file.write("/*No title found*/\n")
            try:
                for target in (item['targets']):
                    writeToFile(file, target['rawSql'])
            except KeyError:
                print("No rawSql found "+title)
                file.write("/*No targets found*/\n")



def writeToFile(filename, data):
    filename.write(data.replace("\n","") + "\n\n")


def getJsonData(filename):
    with open(filename) as f:
        data = json.load(f)
        return data
        


if __name__ == '__main__':
    main()