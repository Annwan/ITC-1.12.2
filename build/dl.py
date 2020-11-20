import json
import requests
import os
HEADERS = { # const
    'User-Agent': 'PackFormaterDownloader/1.0'
}
with open("manifest.json", "r") as f:
    manifest = json.load(f)
file_list = []
for file_desc in manifest["files"]:
    print("getting dowload url for addon #{}".format(file_desc["projectID"]))
    file = requests.get(
        "https://addons-ecs.forgesvc.net/api/v2/addon/{}/file/{}/download-url"
            .format(file_desc["projectID"], file_desc["fileID"]),
        headers=HEADERS
    )
    file_list.append(file.text)
assert(len(file_list) == len(manifest["files"]))
try: os.makedirs("./mods")
except: pass
assert os.path.isdir("./mods")
for f in file_list:
    name = "mods" + f[f.rfind("/"):]
    print("downloading: {} -> {}".format(f, name))
    r = requests.get(f, headers=HEADERS, allow_redirects=True)
    with open(name, "wb") as mod:
        mod.write(r.content)
