import json
import requests
HEADERS = { # const
    'User-Agent': 'PackFormaterDownloader/1.0'
}
with open("manifest.json", "r") as f:
    manifest = json.load(f)
file_list = []
for file_desc in manifest["files"]:
    file = requests.get(
        "https://addons-ecs.forgesvc.net/api/v2/addon/{}/file/{}/download-url"
            .format(file_desc["projectID"], file_desc["fileID"]),
        headers=HEADERS
    )
    file_list.append(file.text)
assert(len(file_list) == len(manifest["files"]))
for f in file_list:
    name = f[f.rfind("/")+1:]
    r = requests.get(f, headers=HEADERS, allow_redirects=True)
    with open(name, "wb") as mod:
        mod.write(r.content)
