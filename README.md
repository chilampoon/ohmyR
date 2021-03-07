# ohmyR

I have no idea why I created this package with this name, but just to let you know this R package is completely for the ANGSD homework.
I'll probably add some personal plotting functions here.

### Steps to build an R package

1. Create a new project and select 'R package'
2. Run `usethis::use_description()` to overwrite the old one, and fill some information in the DESCRIPTION
3. Run `usethis::use_namespace()`, definitely to overwrite!
4. Run `usethis::use_mit_license("Chi-Lam Poon")`
5. Run `usethis::use_testthat()`, just to set up
6. Set up build environment: not to restore .RData & to enable Roxygen
7. Set up vignette: `usethis::use_vignette(name = "Introduction-to-ohmyR")`

### Adding functions 

e.g. `read_in`:

- Put `read_in` function in a new `reading_in.R` script in the `R/` directory 
- Add the `@export, @importFrom, ...` Roxygen comments right above the `read_in` function
- Add `Imports` packages in DESCRIPTION
- Press `control + shift + d` to document it by generating the Rd file in `man/`
- `Install and Restart`

### Adding example data

- Make an R object, like a dataframe
- Store the object in directory `data/`
- Create an R script called `data.R` in the directory `R/`
- Add descriptions of example data in the `data.R`
- Same, document it and `Install and Restart`
