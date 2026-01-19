var options = new RestClientOptions("https://myapi.pk")
{
  MaxTimeout = -1,
};
var client = new RestClient(options);
var request = new RestRequest("/api/send.php", Method.Post);
request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
request.AddParameter("api_key", "YOUR-SECRET-API-KEY");
request.AddParameter("mobile", "08132736003");
request.AddParameter("message", "HelloWorld");
RestResponse response = await client.ExecuteAsync(request);
Console.WriteLine(response.Content);
