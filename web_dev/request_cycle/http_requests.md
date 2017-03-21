# What are some common HTTP status codes?
* 1xx Informational
* 2xx Success
    - 200 OK: the request has succeeded. The information returned with the response is dependent on the method used in the request
        + GET an entity corresponding to the requested resource is sent in the response;
        + HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
        + POST an entity describing or containing the result of the action;
        + TRACE an entity containing the request message as received by the end server.

* 3xx Redirection
    - 301 Moved Permanently: The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. 
* 4xx client error
    - 400 Bad request- The request could not be understood by the server due to malformed syntax.
    - 401 Unauthorized- the request requires user authentication. 
    - 403 Forbidden- Server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
    - 404 Not Found- The server has not found anything matching the request-URI.
    - 408 REquest Timeout- The client did not produce a request within the time that the server was prepared to wait. 
*5xx Server Error
    - 500 Internal server error - The server encountered an unexpected condition which prevented it from fulfilling the request.
    - 501 Not implemented- The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource. 
    - -503 Service Unavailable- The server is currently unable to handle the request due to a temporary overloading or maintenance of the server.

# What is the difference between a GET request and a POST request? When might each be used?


* POST requests supply additional data from the client(browser) to the server in the message body. 
* GET requests include all required data in the URL
* GET VS POST
    - BACK button/reload
        + G: harmless
        + P: Data will be re-submitted (the browser should alert the user that the data are about to be re-submitted)
    - Bookmarked
        + G: Can be bookmarked
        + P: Cannot be
    - Cached
        + G: Can be cached
        + P: Cannot be
    - Encoding type
        + G: application/x-www-form-urlencoded
        + P: application/x-www-form-urlencoded or multipart/form-data. Use multipart encoding for binary data
    - History
        + G: Parameters remain in browser history
        + P: Parameters are not saved in browser history
    - Restrictions on data length
        + G: Yes, when sending data, the GET method adds the data to the URL; and the length of a URL is limited (maximum URL length is 2048 characters)
        + P: no restrictions
    - Restrictions on data type
        + G: ONly ASCII characters allowed
        + P: No restrictions. Binary data is allowed
    - security
        + G:GET is less secure compared to POST because data sent is part of the URL. Never use GET when sending passwords or other sensitive information!
        + P:  POST is a little safer than GET because the parameters are not stored in browser history or in web server logs
    - visibility 
        + G: Data is visible to everyone in the URL
        + P: Data is not displayed in the URL




# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
*