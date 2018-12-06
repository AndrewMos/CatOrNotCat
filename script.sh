#!/bin/bash


curl -X POST \
-H "Authorization: Key deb3ceb8076d47d581e99a260720ee5d" \
-H "Content-Type: application/json" \
-d @- https://api.clarifai.com/v2/models/aaa03c23b3724a16a56b629203edc62c/outputs << FILEIN
{
  "inputs": [
    {
      "data": {
        "image": {
          "base64": "$(base64 /home/andrew/Pictures/cat.png)"
        }
      }
    }
  ]
}
FILEIN
