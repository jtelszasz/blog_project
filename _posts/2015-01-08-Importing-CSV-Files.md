---
layout: post
title: Importing Lots of CSV's
description: "Code snippet for importing a lot of csv's out of a directory."
modified: 2015-01-08
category: articles
share: true
tags: [python, code]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

I find myself importing a slew of comma-separated value (csv) files quite often so I wrote up a quick bit of code to handle it.  

It's uber-simple - just loops through all the csv's in a directory, appends them to one Pandas dataframe, and saves the new csv.  It also tacks on the filenames of each file if separating into the original files is needed later.  This also assumes all the fields are named exactly the same in all the csv files.  Sure beats reading each individually and merging after.

```python

import pandas as pd
import glob

path = 'data_csv'

allFiles = glob.glob(path + '/*.csv')
df = pd.DataFrame()

for i, filename in enumerate(allFiles):

    df_file = pd.read_csv(filename, skiprows=0)
    df_file['filename'] = filename
    df_file['file_ID'] = i

    df = df.append(df_file)

df.to_csv('full_dataset.csv')
 
```

