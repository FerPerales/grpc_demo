# gRPC Demo

## Prerequisites

* asdf
* grpc
* protobuf

Alternatively, you can install Ruby and Go versions manually or using another tool. Make sure the versions
match what appears in `.tool-versions`


## Setup

Install Ruby and Go:

```sh
asdf install
```

Go to the Ruby directory and install dependencies:

```sh
cd ruby
bundle install
```

Start the server:

```sh
bin/run_server
```

Your gRPC server is waiting for requests at port 50051

Send a message from the client:

```sh
bin/hello "EuRuko 2024"
```




