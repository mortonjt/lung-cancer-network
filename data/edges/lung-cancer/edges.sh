from mmvec.util import rank_hits
import pandas as pd
ranks = pd.read_csv('ranks.csv', index_col=0)
edges = rank_hits(ranks, k=5)
edges.head()
edges.to_csv('edges_k5.txt', sep='\t')
