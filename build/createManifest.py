#! /usr/bin/env python

import requests
import json
import sys

#TODO : create project on curse to get projectID

with open(sys.argv[2],"r") as f:
    humanManifest = json.load(f)

machineManifest = {
    "minecraft":{
        "version":"1.12.2",
        "modLoaders":[{
            "id":"forge-14.23.5.2847",
            "primary":True
        }]
    },
    "manifestType":"minecraftModpack",
    "manifestVersion":1,
    "name":"ITC",
    "version":sys.argv[1],
    "author":"galyfray",
    "projectID": 306376,
    "files":[]
}

fileHolder = {
    "projectID": 0,
    "fileID": 0,
    "required": True
}

headers = {
    'User-Agent': 'PackFormaterDownloader/1.0'
}

#==#===#==# Functions #==#===#==#

def filterGameVersion(fileList:list) -> list :
    filtered = fileList.copy()

    for fileDict in fileList :
        if not("1.12.2" in fileDict["gameVersion"]) :
            filtered.remove(fileDict)
    return filtered

def findLatestFileID(fileList:dict) -> int:
    fileList = filterGameVersion(fileList)
    fileList.sort(key = lambda fileDict: fileDict["fileDate"],reverse=True)
    return fileList[0]["id"]
    

#==#===#==# Main #==#===#==#

for mod in humanManifest["modlist"]:
    fileDict = fileHolder.copy()
    
    fileDict["projectID"] = mod["id"]

    if mod["version"] == "latest":
        print("getting info for mod {}({})".format(mod["name"], mod["id"]))
        modFileList = requests.get("https://addons-ecs.forgesvc.net/api/v2/addon/{}/files".format(mod["id"]),headers=headers)
        try:
            fileDict["fileID"] = findLatestFileID(modFileList.json())
        except IndexError as identifier:
            raise FileNotFoundError("No file found for mod {} with id {}".format(mod["name"],mod["id"]))
        
    else:
        fileDict["fileID"] = int(mod["version"])

    machineManifest["files"].append(fileDict)

with open("manifest.json","w+") as output:
    print("writing manifest")
    json.dump(machineManifest,output,indent=4)

