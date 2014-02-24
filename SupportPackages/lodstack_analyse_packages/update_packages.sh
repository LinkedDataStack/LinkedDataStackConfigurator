#!/bin/sh

#
# This will update the named packages for checking and building (via sudo)

PACKAGES="sieve silk erfurt r2r lodms lod2webapi lod2-refine lod2statworkbench
          ontowiki-cubeviz ontowiki-csvimport ontowiki-common 
          virtuoso-opensource rdf-dataset-integration ontowiki-virtuoso 
          dbpedia-spotlight-ui dl-learner-components-core lod2demo limes 
          ore-gwt ore-ui owcli rsine
          unifiedviews-backend unifiedviews-webapp
          sigmaee sparqlify sparqled spatial-semantic-browser"

for i in ${PACKAGES}
do
    apt-get download ${i}
    apt-get source ${i}
done
