from xyz2graph import MolGraph, to_networkx_graph, to_plotly_figure
from plotly.offline import offline
# Create the MolGraph object
mg = MolGraph()
# Read the data from the .xyz file
mg.read_xyz('mol.xyz')
# Create the Plotly figure object
fig = to_plotly_figure(mg)
fig.write_image('molxyz.jpg')
# Plot the figure
#offline.plot(fig)
# Convert the molecular graph to the NetworkX graph
#G = to_networkx_graph(mg)
