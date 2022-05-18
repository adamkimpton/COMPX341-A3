# Adam Kimpton - 1521745

import os
rootdir = './src'
comment = "// Adam Kimpton - 1521745\n"

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        if (file.endswith('.ts')):
            filename = os.path.join(subdir, file)
            with open(filename, 'r+') as f:
                lines = f.readlines()
                if lines[0] == comment:
                    print(f"'{filename}' already contains header, skipping")
                    continue
                else:
                    print(f"Adding header to: '{filename}'")
                    lines[0] = comment
                    f.seek(0)
                    for line in lines:
                        f.write(line)
