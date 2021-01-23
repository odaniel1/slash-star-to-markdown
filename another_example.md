
 # Another Example
The query `README.sql` (which, to recap, can be run as a normal SQL script just
like this script) generated the GitHub read me.

This example generates a file `another_example.md` - to view this in markdown
you need to click through the links in GitHub.

## Another Example

Inspired by Allison Horst's R package [Palmer Penguins](https://github.com/allisonhorst/palmerpenguins)
```


-- Here's a query about marine birds
select 
   BLL_LENGTH_MM
  ,FLIPPER_LENGTH_MM
  ,SEX
  ,YEAR
from PALMERPENGUINS
where species = 'Gentoo'


```