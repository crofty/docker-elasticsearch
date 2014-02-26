# Build the image locally

    docker build -t elasticsearch .
    docker run -p 9200:9200 -v /var/lib/elasticsearch:/var/lib/elasticsearch:rw elasticsearch

This starts elasticsearch and shares the `/var/lib/elasticsearch` dir between the host and the container so that the data persists across container restarts

    $ curl localhost:9200
    {
      "status" : 200,
      "name" : "Sleek",
      "version" : {
        "number" : "1.0.1",
        "build_hash" : "5c03844e1978e5cc924dab2a423dc63ce881c42b",
        "build_timestamp" : "2014-02-25T15:52:53Z",
        "build_snapshot" : false,
        "lucene_version" : "4.6"
      },
      "tagline" : "You Know, for Search"
    }
