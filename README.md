In Parsing JSON mini assignment, I have tried to parse the JSON using JSONSerilization and JSONDecoder.

I have comented the JSONSerilization approach, just for reference in future. I know its not good to comment your code
only reference I have kept it as it is.

Table of Content:-
What is JSON ?
Steps to Parse JSON
Various method to Parse JSON

# What is JSON ?
JSON is the most commonly used format to send and receive data from the web services. The data is in the form of key-value pairs. Using Swift Dictionaries we can easily fetch the values from the keys.

In this tutorial, weíll be parsing JSON data from a local resource file.

The JSONSerialization class is used to parse a JSON data into a dictionary of key-value pairs by converting the Data object.


# Steps to Parse JSON
* Create model object for your JSON.
* To make request you create a data task of class URL sessionDataTask and you provide it with a URL and completeion handler.

URLSessionDataTask :- Creates a task that retrieves the contents of a URL based on the specified URL request object, 
and calls a handler upon completion.

Parameters :- 
request
A URL request object that provides the URL, cache policy, request type, body data or body stream, and so on.

completionHandler
The completion handler to call when the load request is complete. This handler is executed on the delegate queue.

If you pass nil, only the session delegate methods are called when the task completes, making this method equivalent to the dataTask(with:) method.

This completion handler takes the following parameters:

data
The data returned by the server.

response
An object that provides response metadata, such as HTTP headers and status code. If you are making an HTTP or HTTPS request, the returned object is actually an HTTPURLResponse object.

error
An error object that indicates why the request failed, or nil if the request was successful.

After you create the task, you must start it by calling its resume() method.

The type of a JSON data is [String: Any].

* Parse JSON using JSON Seriliazation or Using JSONDecoder


# Various method to Parse JSON :-

* JSON Serilization :-  

An object that converts between JSON and the equivalent Foundation objects.

```
class JSONSerialization : NSObject

```

* JSONDecoder 
JSONDecoder is an object that decodes instances of a data type from JSON objects. 
We can get the object back from the JSON string.


# Additional Information :-

Difference between Any and Any-Object
* Any can represent an instance of any type at all, including function types and optional types.
* AnyObject can represent an instance of any class type.

Thanks to Brian Voong!!!! 



