import sys
import pandas as pd

def main():

    if(len(sys.argv) < 2):
        print("Usage: generator.py <number of files>")
        return
        
    inputFile = open(sys.argv[1], "r")
    csvFile = pd.read_csv(inputFile)

    printData(csvFile)
    while(True):
        usrInput = input("Select an option\nrmKey: removes key\nPrint the table: printTab\ntoquit: q\nUser Input: ")
        if(usrInput == "rmKey"):
            selectKeys(csvFile)
        elif(usrInput == "q"):
            break
        elif(usrInput == "printTab"):
            printData(csvFile)

    print("PROGRAM FINISHED")
    inputFile.close()


def printData(data):
    print("This is what the data looks like: ")
    print(data)

def selectKeys(data):
    print("These are the attributes. Select keys to REMOVE, type in -1 to stop adding keys:")
    i = 0
    pandasKeys = data.keys()
    for key in pandasKeys:
        print(str(i) + ":"+ key)
        i += 1
    keysToRemove = []

    dictionaryKeys = pandasKeys.tolist()
    print(dictionaryKeys)
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
    





if __name__ == "__main__":
    main()