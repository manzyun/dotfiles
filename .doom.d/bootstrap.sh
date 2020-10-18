#!/usr/bin/env bash
set -euo pipefail

# Please running this script after change working directory for you want org directory...
# Referecce: https://qiita.com/t4ku/items/315337745c3fa691027c

mkdir Inbox Agenda Plans Journal Projects Snippets Topics Archive Exports
touch Inbox/capture.org \
    Inbox/notes.org \
    Inbox/talks.org \
    Inbox/tool-sharpening.org \
    Plans/daily.org \
    Plans/weekly.org \
    Plans/monthly.org \
    Plans/yearly.org \
    
cat <<EOF > README.org
#+TITLE: What use directories

- Agenda :: Todo list for each project.
- Archive :: Put archives. Maybe, =*.tar.gz= files.
- Exports :: Put a document for each topic. Main thing I learned.
- Inbox :: All scratch text. ex; idea, memo, log, etc...
- Journal :: Just, journal.
  Maybe it's closer to a diary. But, I don't record my thoughts and feelings.
- Plans :: Todo list on a timeline.
    - daily.org :: in day.
    - weekly.org :: in week.
    - monthly.org :: in month.
    - yearly.org :: in year.
- Projects :: Knowleages about Projects.
- Snippets :: Too little templates.
- Topics :: Put a document for each topic. Main thing I learned.
EOF


echo Baked!!
