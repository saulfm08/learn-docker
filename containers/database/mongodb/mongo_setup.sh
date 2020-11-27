#!/bin/bash

echo "Waiting mongo go up"
sleep 10
echo "Setting up Replica configurations"
mongo --host mongodb-server:27017 <<EOF
  var cfg = {
    "_id": "rs0",
    "version": 1,
    "members": [
      {
        "_id": 0,
        "host": "mongodb-server:27017",
      }
    ]
  };
  rs.initiate(cfg);
EOF
                                                                                                                                                                                          