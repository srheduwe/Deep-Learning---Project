Final project of the course "Deep Learning" of the Technical University of Denmark

Notes for the examiner: Since we worked with the existing framework MOLGYM, it is not possible to simply create a Jupyter Notebook in which we show the main results. We therefore list which specific files we needed to change to implement the dual network architecture described (DNA) in the article here, so that you can find the work more easily. The adapted files are in the molgym_dna folder or one of its subfolders and are called buffer.py, buffer_container.py, agent.py and ppo.py.

If you run the scripts right now, the baseline will be run. To run the DNA, you need to rename the molgym_dna folder to "molgym".

In addition, a lot of time was dedicated to make the molecule representation PaiNN running in MOLGYM.
