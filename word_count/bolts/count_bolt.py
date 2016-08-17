from collections import Counter
from pyheron import Bolt

class CountBolt(Bolt):
  def initialize(self, config, context):
    self.counter = Counter()

  def process(self, tup):
    if self.is_tick(tup):
      self.log("Got tick tuple!")
      self.log("Current map: %s" % str(self.counter))
      return
    word = tup.values[0]
    self.counter[word] += 1

