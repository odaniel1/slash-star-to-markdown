
 # slash-star-to-markdown
A GitHub Action workflow to auto generate literate documentation from executable
scripts (for example, `.sql` files).

## Example
```sql

-- A small SQL query about South American camelids
select 
   NECK_LENGTH
  ,NECK_GIRTH
  ,SPITTING_DISTANCE
from CAMELIDS
where GENUS in ('Lama', 'Vicugna')

```

## Explanation
This README has been generated from the file `README.sql`, automatically by
GitHub using GitHub Actions. `README.sql` is a valid SQL script that
could be used to run the query above.

Whenever code is pushed to GitHub (eg. updates are made), this file is updated
(automatically, by a GitHub Action) by replacing text that is contained in
\/\*slash-star\*\/ comment blocks with plain text, and wrapping the remaining
text into code chunks - enabling literate (eg. pretty) rendering of the code.

This approach to in-code documentation can be adapted for any language that uses
\/\*slash-star\*\/ comment blocks. Support is currently provided for the
languages listed in [this table](https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Block_comments) 
(Accessed Jan. 20).

Currently only the primary file extension for each language is included: eg. for
C++, `.cpp` files will be documented, but `.h` files will not.

Any valid omitted extensions are welcome to be added via pull request.

## How Can I Use This?
:one: Click the green **Use this template** button at the top of the page, and
follow the usual steps to create a GitHub repository.

:two: Remove any of the example scripts from the repo (if you wish), leaving only
the `.github` directory.

:three: Use the repo like any other! When writing scripts in supported languages, any
comments that you want to render  as *normal* text in the markdown file should be wrapped in
\/\*slash-star\*\/ comments; comments that you want to maintain integrated
in the code can use `--` comments.

:four: Push changes to GitHub, wait ~30 seconds and enjoy reading your newly
rendered makdown documentation (if your SQL file was `pistachio-opinions/wonderful-pistachios.sql`
then the documentation will be `pistachio-opinions/wonderful-pistachios.md`). 

## Notes and Warnings

The GitHub action has permission to create and overwrite existing files in your 
repository! This means you should adhere to the following practices when using this
template (if you don't all is not lost: but you will need to revert the GitHub action's
commits):

* If you want to create your own (non-auto generated) `README.md` file, then ensure that you do
not create a file called `README.sql`.

* Do not edit generated `.md` files by hand - your efforts will be written over, and may lead to git conflicts
that you'd then need to debug.

* Once the GitHub action has run, your local copy of the repo will be behind the remote - you should
therefore always pull changes before committing/pushing to GitHub.```