# jolter
Tool for blender import/export automation 

# Config

Set a env variable named `JOLTER_PATH` with the path to this project.
Example:
```bash
export JOLTER_PATH=$(pwd)
```

Create an alias that can be called from anywhere.
```bash
alias jolter="source \"$JOLTER_PATH/batch_import.sh\""
```

## Usage

```bash
source "$JOLTER_PATH/batch_import.sh" .
```