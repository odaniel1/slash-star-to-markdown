
import re
import glob

# %% parses a string removing /* and */ from the start and end of slash-star
# comment blocks, and placing code outside of blocks into markdown code chunks.

def parse_ss_to_md(fp):

    # regular expressions to match (respectively) /* and */
    ss_start = re.compile('\\/\\*')
    ss_end = re.compile('\\*\\/')
    
    # read the file into memory, and substitute slash-star comments for
    # markdown comment blocks; note the start of a slash-star comment is 
    # preceded by the end of a code chunk, and the end of a slash-star comment
    # is succeeded by the start of a code chunk.
    with open(fp, 'r') as ss:
        ss_str = ss.read()
        md_str = ss_start.sub('```\n', ss_str)
        md_str = ss_end.sub('\n```sql', md_str)
    
    # regular expressions to match respectively leading ``` at the start of a
    # string, and trailing ``` at the end of a string.
    md_lead = re.compile('^[\n\s]{0,}```')
    md_trail = re.compile('```sql[\n\s]{0,}\Z')
    
    # if the file started with a slash-star comment block - we need to remove
    # the leading ``` (there's no code chunk above to close).
    # Conversely if there is no leading ``` then there should be (as this 
    # indicates the file started with code).
    if md_lead.match(md_str):
        md_str = md_lead.sub('', md_str)
    else:
        md_str = '```sql\n' + md_str
    
    # similar logic applies to trailing ```: we need to remove it if it exists,
    # or add it if it didn't.
    if md_trail.search(md_str):
        # if so - need to remove the trailing ```
        md_str = md_trail.sub('', md_str)
    else:
        # if not - need to add a trailing ```
        md_str = md_str + '```'
        
    return md_str

# %% Run script

sql_ext = re.compile('.sql$')

# find all .sql filepaths in repository
for fp in glob.glob("*.sql"):
    
    # parse file to markdown string
    md_str = parse_ss_to_md(fp)

    # create output file path
    md_fp = sql_ext.sub('.md', fp)

    # write file out
    with open(md_fp, 'w') as md:
        md.write(md_str)