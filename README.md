# PyHeron Starter

This is a template repository for developing a Python topology for [Heron](https://github.com/twitter/heron).
Currently, a word count topology is included under `word_count` directory.


## Compilation
In order to compile the word count topology to the PEX file so 
it's deployable on Heron, you need to run the following commands.  

* Setup pants for this repo.

```bash
make setup
```

* Make sure `BUILD` file is correctly set up

* Run

```bash
./pants binary :word_count
```

If you change the target name in the BUILD file, you need to change `:word_count`
appropriately.

* Deploy
The compiled PEX file will reside under `dist` directory, which can be
submitted to Heron as shown below. For further reference, go to the PyHeron documentation.

```bash
heron submit local `pwd`/dist/word_count.pex - WordCountTopology
```

