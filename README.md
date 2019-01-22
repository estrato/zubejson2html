# zubejson2html
Converts JSON-exported Zube.io issue cards to a HTML suitable for printing in a browser.

The bash script and the HTML/CSS template were developed and tested in MacOS Mojave with Chrome 71.

## Usage

1. Navigate to your Issue manager at Zube.io website and filter out issues that you will want to print. 
2. Export the issue list from Zube as JSON and allow the file to download.
3. Open a terminal (bash shell).
4. Change to the directory in which you've placed zubejson2html.sh
5. Invoke zubejson2html.sh with your download JSON-file as first argument.
```
$ ./zubejson2html.sh ~/Downloads/2019-01-22-zube-cards-export.json 
Wrote cards-20190122155936.html
```
6. Open the generated file in your web-browser and print it.
