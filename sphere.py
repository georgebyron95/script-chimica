import MDAnalysis as mda

for x in range(0, 2000):

    # Open the initial structure
    U = mda.Universe('frame%d.pdb' % x)

    # Select all atom and center of geometry of the system
    sel = U.select_atoms('all')
    cent = sel.centroid()

    # Select all residues within 17 from the center of geometry of the sytem and write the pdb

    sphere  = U.select_atoms( 'byres ( point %5.3f  %5.3f  %5.3f   13)' % (cent[0],cent[1],cent[2]) )

    sphere.write('frame%d.pdb' % x)
