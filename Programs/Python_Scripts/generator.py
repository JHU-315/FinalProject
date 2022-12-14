import sys
import pandas as pd
import locale
locale.setlocale(locale.LC_ALL, 'en_US.UTF-8')

def main():
    """
        Main function, options are given to the user as to what they desire to do with the data
    """
    if(len(sys.argv) < 2):
        print("Usage: generator.py <fileName>")
        return
    parentDir = "CSV Files\\"
    inputFile = open(parentDir + sys.argv[1], "r")
    csvFile = pd.read_csv(inputFile)

    printData(csvFile)
    while(True):
        usrInput = input("Select an option\nremoves key: rmKey\nGenerate SQL Insertion File: \
        genSql\nPrint the table: printTab\nGenerate Schema File: genSch\ntoquit: q\nUser Input:  ")
        print("=====================================")
        if(usrInput == "rmKey"):
            selectKeys(csvFile)
        elif(usrInput == "q"):
            break
        elif(usrInput == "printTab"):
            printData(csvFile)
        elif(usrInput == "genSql"):
            generateSQLInsertionScript(csvFile, sys.argv[1])
        elif(usrInput == "genSch"):
            generateSQLSchema(csvFile, sys.argv[1])
        else:
            print("Invalid input")
        print("=====================================")

    print("PROGRAM FINISHED")
    inputFile.close()


def printData(data):
    """
        print the raw data of the file
    """
    print("This is what the data looks like: ")
    print(data)

def selectKeys(data):
    """
        Allows user to select keys (attributes) from the CSV file to remove
    """
    print("These are the attributes. Select keys to REMOVE by INDEX, type in -1 to stop adding keys:")
    i = 0
    pandasKeys = data.keys()
    for key in pandasKeys:
        print(str(i) + ":"+ key)
        i += 1
    keysToRemove = []

    dictionaryKeys = pandasKeys.tolist()
    while(True):
        key = int(input("Key index to remove: "))
        if(key == -1):
            break
        if(key < 0 or key >= len(dictionaryKeys)):
            print("Invalid key index")
            continue
        keysToRemove.append(dictionaryKeys[key])
    
    for key in keysToRemove:
        del data[key]
    
def generateSQLSchema(data, fileName):
    """
        Generate a schema file with database DDL language
    """
    title = fileName.split(".")[0]
    sqlFile = open("sqlSchema.sql", "w")

    sqlFile.write("DROP TABLE IF EXISTS " + title + ";\n")
    sqlFile.write("CREATE TABLE " + title + " (\n")
    for key in data.keys():
        testData = data[key][0]
        try: 
            int(testData)
            sqlFile.write(key + " INT,\n")
        except ValueError:
            try:
                float(testData)
                sqlFile.write(key + " FLOAT,\n")
            except ValueError:
                sqlFile.write(key + " VARCHAR(255),\n")

    sqlFile.write(");\n")
    
    sqlFile.close()




def generateSQLInsertionScript(data, fileName):
    """
        Generates the SQL insertion scripts
    """

    title = input("Enter the name of the table: ")

    sqlFile = open("sqlInsertionScript.sql", "w")
    pandasKeys = data.keys()
    dictionaryKeys = pandasKeys.tolist()
    totalElements = len(data[dictionaryKeys[0]])

    for i in range(totalElements):
        sqlFile.write("INSERT INTO ")
        sqlFile.write(title+ " VALUES (")
        count = 0
        for key in dictionaryKeys:
            if(str(data[key][i]) == "nan"):
                sqlFile.write("NULL")
                if( count != len(dictionaryKeys) - 1):
                    sqlFile.write(", ")
            else:
                writeValue = checkString(str(data[key][i]))
                sqlFile.write(writeValue)
                if( count != len(dictionaryKeys) - 1):
                    sqlFile.write(", ")
            count += 1
        sqlFile.write(");\n")
    sqlFile.close()
    print("Write Successful")


def checkString(value):
    try: 
        locale.atoi(value)
        value = value.replace(',', '')

        int(value)
        return value
    except ValueError:
        try:
            float(value)
            return value
        except ValueError:
            return "\""+value+"\""

if __name__ == "__main__":
    main()