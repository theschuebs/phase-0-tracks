What are some common HTTP status codes?
	200 OK
		Request has been successful, this is what we hope to see.

	201 Moved Permanently
		There is a new URI that needs to be used.

	302 Found
		The requested resource resides temporarily under a different URI. Needs redirection, but since it might be altered
		on occation, the client should continue to use the Request-URI for future requests.

	307 Temporary Redirect
		The requested resource resides temporarily under a different URI. 

	400 Bad Request
		Server could not understand request due to malformed syntax. Modify the request.

	401 Unauthorized
		Requres authentication.

	403 Forbidden
		Server understood request, but is refusing to fulfill it. 

	404 Not Found
		Server couldn't find anything matching the Request-URI. Doesn't know if it's temporary or permanent.


What is the difference between a GET request and POST request? When might each be used?
	GET AND POST are the two most frequent methods.
	Get- REQUESTS data from a specific resource
		Can be cached
		remains in browser history
		can be bookmarked
		NEVER used with sensitive data
		length restrictions
		data retrieval only
	Post- SUBMITS data to be processed to a specific resource
		NEVER cached
		do not remain in browser history
		cannot be bookmarked
		no restrictions on data length

What is a cookie? How does it relate to HTTP requests?

	A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing.

	Client-side storage.