#!/bin/sh

#
# This will update the named packages for checking and building (via sudo)

PACKAGES="sieve silk erfurt r2r lod2webapi lod2statworkbench 
          ontowiki-cubeviz ontowiki-csvimport ontowiki-common 
          virtuoso-opensource rdf-dataset-integration ontowiki-virtuoso 
          dbpedia-spotlight-ui dl-learner-components-core lod2demo limes 
          ore-ui owcli rsine lod2-virtuoso-opensource liberfurt-php             
          unifiedviews-backend unifiedviews-webapp jar2deb siren                
          ontowiki-mysql stanbol sparqlproxy-php silk-latc                      
          lodstack-analyse-packages pivot-browser libjs-rdfauthor               
          sparqlify sparqled spatial-semantic-browseri                          
          libvirtodbc0 libvirtuoso5.5-cil virtuoso-minimal virtuoso-nepomuk     
          virtuoso-opensource-7.1 virtuoso-opensource                           
          virtuoso-opensource-7.1-bin virtuoso-opensource-7.1-common            
          virtuoso-server virtuoso-vad-bpel virtuoso-vad-conductor              
          virtuoso-vad-demo virtuoso-vad-doc virtuoso-vad-isparql               
          virtuoso-vad-ods virtuoso-vad-rdfmappers virtuoso-vad-sparqldemo      
          virtuoso-vad-syncml virtuoso-vad-tutorial virtuoso-vsp-startpager"

for i in ${PACKAGES}
do
    apt-get download ${i}
    apt-get source ${i}
done
