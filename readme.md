## Example for node client to call ruby server

```
brew install protobuf
bundle init
bundle add grpc
bundle add grpc-tools
npm init
npm install grpc
mkdir -p  lib/proto lib/services proto
touch proto/myexample.proto
touch lib/services/engine_service.rb
touch lib/server.rb
touch client.js
```

Write the code in the above files

then generate the code from proto

`grpc_tools_ruby_protoc -I proto/ --ruby_out=lib/proto --grpc_out=lib/proto myexample.proto`

Give the server executable permissions, then run it

`chmod +x lib/server.rb`

`bundle exec ruby -I lib/proto lib/server.rb`

In another terminal, 
`node client.js`

