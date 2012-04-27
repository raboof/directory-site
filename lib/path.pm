package path;

# Versions (for download links)
our $version_api = "1.O.0-M11";
our $version_apacheds = "2.0.0-M6";
our $version_studio = "2.0.0.v20120224";

# All our pages use the same view function
our @patterns = (
    # Basic HTML content
    [qr!^/.*\.html$!, template_page => {} ],
    
    #
    # Apache DS sub-project pages
    #
    [qr!apacheds\/.*?\.mdtext$!, template_page => {
        template => "apacheds/page.html",
        isDirApacheDS => true } ],
    
    #
    # LDAP API sub-project pages
    #
    [qr!api\/.*?\.mdtext$!, template_page => {
        template => "api/page.html",
        isDirAPI => true } ],
    
    #
    # Apache Directory Studio sub-project pages
    #
    
    # Download Apache Directory Studio Linux page
    [qr!studio\/download\/download-linux\.mdtext$!, template_page => {
        template => "studio/download-linux.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Mac OS X page
    [qr!studio\/download\/download-macosx\.mdtext$!, template_page => {
        template => "studio/download-macosx.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Sources page
    [qr!studio\/download\/download-sources\.mdtext$!, template_page => {
        template => "studio/download-sources.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Windows page
    [qr!studio\/download\/download-windows\.mdtext$!, template_page => {
        template => "studio/download-windows.html",
        isDirStudio => true, 
        version => $version_studio } ],
        
    # Standard Apache Directory Studio page
    [qr!studio\/.*?\.mdtext$!, template_page => {
        template => "studio/page.html",
        isDirStudio => true } ],
    
    #
    # Apache Directory project pages
    #
    [qr!^/.*\.mdtext$!, template_page => {
        template => "page.html",
        isDirSite => true } ]
);

# for specifying interdependencies between files
our %dependencies = ();

1;

=head1 LICENSE

           Licensed to the Apache Software Foundation (ASF) under one
           or more contributor license agreements.  See the NOTICE file
           distributed with this work for additional information
           regarding copyright ownership.  The ASF licenses this file
           to you under the Apache License, Version 2.0 (the
           "License"); you may not use this file except in compliance
           with the License.  You may obtain a copy of the License at

             http://www.apache.org/licenses/LICENSE-2.0

           Unless required by applicable law or agreed to in writing,
           software distributed under the License is distributed on an
           "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
           KIND, either express or implied.  See the License for the
           specific language governing permissions and limitations
           under the License.
