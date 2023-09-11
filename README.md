# Version Control Survey

## Usage

- "Yes" and "No" statements need to be wrapped into quotation marks

## Requirements

This repo uses [`renv`](https://rstudio.github.io/renv/articles/renv.html) for dependency management.

If you haven't used `renv` before, install it using:

```R
install.packages("renv")
```

If you open the R project `version-control-survey.Rproj` in RStudio (recommended), `renv` should be automatically activated.
This should look like this:

```R
# Bootstrapping renv 1.0.2 ---------------------------------------------------
- Downloading renv ... OK
- Installing renv  ... OK

- Project '~/Desktop/version-control-survey' loaded. [renv 1.0.2]
```

If this does not happen, try to activate `renv` using:

```R
renv::activate()
```

Finally, after `renv` is activated, restore the computational environment using:

```R
renv::restore()
```

### How to connect to Google sheet
#### 1.
when running table.R for first Time:

```r
der
~/Library/Caches/gargle between R sessions?
1: Yes
2: No
Selection: 1

The httpuv package enables a nicer Google auth experience, in many cases, but
it isn't installed.
Would you like to install it now?
1: Yes
2: No
Selection: 1
```

Installs packages and dependencies and opens up Google authentification website
(https://accounts.google.com/signin/oauth...)

#### 2.
Tidyverse API packages would like to access your Google account.
Choose what Tidyverse API packages are allowed to access:
Access, edit, create, or delete all your Google Sheets.
**Check**


Do you trust Tidyverse API packages?
**Continue**

### 3.
Google Sheets:
Should other macOS programs be allowed to access your account?
**OK**

### 4. 
R console should print: 
```r
Waiting for authentication in browser...
Press Esc/Ctrl + C to abort
Authentication complete.
✔ Writing to version-control-survey.
✔ Writing to sheet Sheet1.
```

## Contributors

- [Lennart Wittkuhn](mailto:lennart.wittkuhn@uni-hamburg.de)
- Konrad Pagenstedt
