# Trigedasleng Lexicon

This repository contains a lexicon of documented Trigedasleng / Slaksleng words. The intent of this repository is to be a centralised source for the documentation and preservation of the Trigedasleng language.

Data is stored as JSON objects, so you can pull this repository and use it as a data source for websites and applications. By storing our language's lexicon as a GitHub respository rather than a traditional relational database, anyone can contribute to the lexicon data itself.

If you have found an error or would like to contribute word(s), please feel free to create a pull request.

## Contents

There are several kinds of data stored in this repository. Most of this data was taken from [trigedasleng.net](trigedasleng.net) before the site went down.

### Dictionary

This folder contains json objects for every documented word in Trigedasleng. Each is stored in an individual `.json` file titled with the word as the filename. The schema for word objects is as follows:

```json
{
  "id": (deprecated property, no longer used),
  "word": "(trigedasleng word)",
  "translation": "(english translation for the word)",
  "etymology": "from: (derivation of the word goes here)",
  "link": "(deprecated property, no longer used)",
  "citations": "(integer) ID of cited source",
  "example": "(integer) ID of cited translation",
  "note": "(other usage notes about the word)",
  "filter": "(canon/slaksleng noncanon)",
  "class": "(lexical class)"
}
```

### Monoliths

This folder contains the original `.json` files that were backed up from [trigedasleng.net](trigedasleng.net) before it went down. These files are no longer maintained but are kept around for posterity for the time being.

### Scripts

This folder contains random scripts that may or may not be helpful to look at for manipulating the data. Feel free to take and use/modify at your convenience.
