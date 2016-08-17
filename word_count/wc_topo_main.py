import sys
from pyheron import TopologyBuilder, Grouping, constants
from bolts import CountBolt
from spouts import WordSpout

if __name__ == '__main__':
  builder = TopologyBuilder(name=sys.argv[1])
  word_spout = builder.add_spout("word_spout", WordSpout, par=2)

  builder.add_bolt("count_bolt", CountBolt, par=2,
  				   inputs={ word_spout: Grouping.fields('word')},
             config={constants.TOPOLOGY_TICK_TUPLE_FREQ_SECS: 10})

  builder.build_and_submit()

