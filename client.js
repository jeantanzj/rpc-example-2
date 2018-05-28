
const grpc = require('grpc');
const protoDescriptor = grpc.load(`${__dirname}/proto/myexample.proto`);

const client = new protoDescriptor.myexample.Engine('127.0.0.1:9999', grpc.credentials.createInsecure());

let request = new protoDescriptor.myexample.Request('Arg A', 'Arg B')
client.GetResponse(request, function(err, res){
    if(err) {
        console.log(err)
    }
    else{
        console.log(res)
    } 
})
