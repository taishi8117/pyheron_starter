# PyHeron Starter

Learn to use Heron in Python!

This is a template repository for developing a Python topology for [Heron](https://github.com/twitter/heron).
Currently, a simple word count topology is included under `word_count` directory. For further information about how to write a topology in Python, you can refer to the documentation [here](http://twitter.github.io/heron/docs/developers/python/topologies/). 

If you are looking for a starter repository for Java topology, please go to [this repository](https://github.com/kramasamy/heron-starter).

<a name="getting-started"></a>

# Getting Started

## Prerequisite

Since the support for Python topology is still experimental and is not yet officially released, you need to manually build and install Heron from the latest master branch. You can refer to the instruction [here](http://twitter.github.io/heron/docs/developers/compiling/compiling/).

Also, make sure to have the pyheron starter code available on your machine. 

```bash
$ git clone https://github.com/taishi8117/pyheron_starter.git && cd pyheron_starter
```

## Compilation
In order to compile the word count topology to the PEX file so 
it's deployable on Heron, you need to run the following commands.  

* Setup pants for this repository.

  ```bash
  make setup
  ```

  This will automatically download and configure the pants.

* Make sure `BUILD` file is correctly set up. 
[This page](https://pantsbuild.github.io/python-readme.html) has a great instruction on 
how to write a `BUILD` file for a python project.

* Build the topology PEX file.

  ```bash
  make build
  ```

  If you change the target name in the BUILD file, you need to modify the `build` rule in
  the `Makefile` appropriately.

## Deployment
The compiled PEX file will reside under `dist` directory by default, which can be
submitted to Heron as shown below. 

  ```bash
  heron submit local `pwd`/dist/word_count.pex - WordCountTopology
  ```

For further information about Python topology, refer to the [PyHeron documentation](http://twitter.github.io/heron/docs/developers/python/topologies/).

### Troubleshooting

## Build Error on Mac OS X
Make sure you have installed Xcode Command Line Tools by `xcode-select --install`, before the build.
