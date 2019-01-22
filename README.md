# zubejson2html
Users of Zube.io currently have no way of exporting issues in a format suitable for printing. 
However, it allows users to export issues to a JSON file. 
This script converts Zube's JSON file to a HTML file designed to be printed from a browser.

The bash script and the HTML/CSS template were developed and tested in MacOS Mojave with Chrome 71.

## Installation
```
$ git clone https://github.com/estrato/zubejson2html.git
```

## Usage
1. Navigate to your Issue manager at Zube.io website and filter out issues that you will want to print. 
2. Export the issue list from Zube as JSON and allow the file to download.
3. Open a terminal (bash shell).
4. Change to zubejson2html directory.
5. Run zubejson2html.sh with full path to the downloaded Zube JSON-file as the first argument:
```
$ ./zubejson2html.sh ~/Downloads/2019-01-22-zube-cards-export.json 
Wrote cards-20190122155936.html
```
6. Open the generated HTML file in your web-browser. 
7. Open the browser's print dialog and configure A4 paper-size, landscape layout, no margins, one-sided.
8. Print!
