## LDLite

LDLite is a tool that is part of the Library Data Platform project. It provides basic LDP data reporting functions without requiring the LDP reporting database server to be installed. It also can be used to supplement a LDP database with additional or real-time FOLIO data.

LDLite allows users to query FOLIO directly. Once connected to Okapi-based services, the LDLite software can provide some features of the full Library Data Platform software such as JSON transformation. The transformed data can be saved in an embedded database as a simple file on the user’s computer or into a shared database like the LDP database. Users must be running Python to install LDLite.

LDLite can also be used to report on MARC data retrieved from Source Record Storage (SRS). This feature is still in the experimental stages and not officially supported at this time. Instructions for setting up access to MARC data from LDLite are available on [GitHub](https://github.com/library-data-platform/ldlite/blob/main/srs.md).

For more information about LDLite and access to the code base, see the [GitHub repository](https://github.com/library-data-platform/ldlite). Users do not need a specific version of LDLite for compatibility with the Juniper release of FOLIO. 
