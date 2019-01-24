# zubejson2html

Users of Zube.io currently have no way of exporting issues in a format suitable for printing as cards for use on a physical Scrum or Kanban board. However, Zube allows users to export lists of issues as a JSON file.

This converter transforms JSON files exported from Zube to HTML with a visual style and layout designed for print.

Developed and tested in MacOS Mojave with Chrome 71.

## Usage

1. Navigate to your Issue manager at Zube.io website and filter out issues that you will want to print.
1. Export the issue list from Zube as JSON and allow the file to download.

### Using the online converter

1. Navigate to the [online converter page](https://estrato.github.io/zubejson2html/).
1. Choose your downloaded JSON file and click the "import" button. Print dialog automatically opens.
1. Configure print settings with A4 paper-size, landscape layout, no margins, one-sided.
1. Print!

### Using the offline shell script for some reason

1. Open a terminal (bash shell).
1. Clone zubejson2html repository (if you haven't already) and change to zubejson2html directory.
  ```
  $ git clone https://github.com/estrato/zubejson2html.git
  $ cd zubejson2html
  ```
1. Run zubejson2html.sh with full path to the downloaded Zube JSON-file as the first argument:
  ```
  $ ./zubejson2html.sh ~/Downloads/2019-01-22-zube-cards-export.json
  Wrote cards-20190122155936.html
  ```
1. Open the generated HTML file in your web-browser.
1. Open the browser's print dialog.
1. Configure print settings with A4 paper-size, landscape layout, no margins, one-sided.
1. Print!
