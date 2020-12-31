find ./backend ! -name '*.log' -a ! -name '*.jar' -a ! -name '*.gz' | xargs cp --parents -t  ~/backup/
find ./frontend ! -name 'dist*' -a | xargs cp --parents -t  ~/backup/