#!/bin/bash
# Note that .sh scripts work only on Mac. If you're on Windows, install Git Bash and use that as your client.

have_prince=$(type -p prince)
[ "${have_prince}" ] || {
  echo "ERROR: could not locate prince. Exiting."
  exit 1
}
have_bundle=$(type -p bundle)
[ "${have_bundle}" ] || {
  echo "ERROR: could not locate bundle. Exiting."
  exit 1
}

echo 'Killing all Jekyll instances'
kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

echo "Building PDF-friendly HTML site for Mydoc ...";
bundle exec jekyll serve --detach --config _config.yml,pdfconfigs/config_mydoc_pdf.yml;
echo "done";

echo "Building the PDF ...";
prince --javascript --input-list=_site/pdfconfigs/prince-list.txt -o pdf/mydoc.pdf;
echo "done";

