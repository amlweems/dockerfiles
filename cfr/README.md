# CFR

A Java decompiler which will decompile modern Java features - up to and
including Java 9, 10, and beyond!

## Usage

The common use-case is decompiling a JAR file (which may reference 3rd-party
libraries) and outputting the source code to a directory, as shown below:

```
docker run --rm -it -v "$(pwd):/host" -w /host cfr \
  --extraclasspath <lib> --outputdir <src> <app.jar>
```
