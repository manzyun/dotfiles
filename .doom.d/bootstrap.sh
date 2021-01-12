#!/usr/bin/env bash
set -euo pipefail

# Please running this script after change working directory for you want org directory...
# Referecce: https://qiita.com/t4ku/items/315337745c3fa691027c

mkdir Journal Projects Archive Exports
    
cat <<EOF > README.org
#+TITLE: What use directories and files. 
- Archive/ :: Put archives. Maybe, =*.tar.gz= files.
- Exports/ :: Put a document for each topic. Main thing I learned.
- Journal/ :: Just, journal.
  Maybe it's closer to a diary. But, I don't record my thoughts and feelings.
- Projects/ :: Knowleages about Projects.
- todo.org :: Task list. Complete tasks move =Journal/*.org=
- notes.org :: any somethings.
- future.org :: Future task and events.
- *.org :: any other topics, notes and documents.
EOF


echo Baked!!
