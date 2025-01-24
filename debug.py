from reddwarf.polis_pandas import PolisClient

if True:
    client = PolisClient()
    # client.load_data(report_id="r8xhmkwp6shm9yfermteh")
    client.load_data(report_id="r2dfw8eambusb8buvecjt")
    client.get_matrix(is_filtered=True)
    client.run_pca()
    client.scale_projected_data()
    client.generate_figure()
