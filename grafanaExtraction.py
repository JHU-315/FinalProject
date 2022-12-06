import os
import json

DIRECTORY = 'Grafana Dashboards'

def main():
# assign directory
    
    # iterate over files in
    # that directory
    file = open("grafanaSql.sql", "w")
    for filename in os.listdir(DIRECTORY):
        f = os.path.join(DIRECTORY, filename)
        commentedString = "/*" + filename + "*/\n"
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

        for item in data['panels']:
            title = "no title"
            try:
             title = item['title']       
             file.write("/*"+item['title']+ "*/\n")
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