# batch-xiso-rewrite
Batch script for rewrite Xbox ISO (XISO) contents with [extract-xiso](https://github.com/XboxDev/extract-xiso).

# Background
This modification was created using batch-xiso-extract as a base, it rewrites both Original Xbox and Xbox 360, in any subfolder. It's still very basic on function, don't expect too much. And yes it **SHOULD** delete .iso.old files in sub-directories, if not, delete it manually.
The only reason I made this, it was so I can work better with emulators or stuff like that, without doing it one by one, more specifically, for Xemu.

**Use at your own risk**, please ensure you have proper backups of any XISO files you intend to process with this script.

# Usage
- Place all XISO (`*.iso`) files that you would like to extract in a single directory (sub-directories are permitted but it may not delete .old files).
- Place `batch-xiso-rewrite.bat` and `extract-xiso.exe` in the same directory as above.
- Execute `batch-xiso-rewrite.bat`, select whether you would like XISOs to be deleted after extraction.
- Each XISO will be rewrited into its own directory.

# BUGS
Again, the only big bug is that .old files may not get deleted on sub-directories, if someone has a cheap fix for it, feel free to do a pull request.
