import os, re, pdb
import numpy as np
import pandas as pd
import argparse as ap


def main(dataset_dir, **kwargs):
    id_list = []
    variation_dirs = [os.path.join(dataset_dir, x) for x in os.listdir(dataset_dir) if os.path.isdir(os.path.join(dataset_dir, x))]
    for var_dir in variation_dirs:
        var_records = [os.path.join(var_dir, x) for x in os.listdir(var_dir)]
        for cur_record in var_records:
            id_list.append(int(cur_record.split("_")[-1]))
    id_list = sorted(id_list)
    id_arr = np.array(id_list)
    # id_df = pd.DataFrame({'id': np.arange(128116)})
    id_df = pd.DataFrame({'id': np.arange(99802)})
    # id_df = pd.DataFrame({'id': np.arange(149802)})
    id_mask = id_df['id'].isin(id_arr)
    print(id_df.loc[~id_mask])
    # print(id_list, flush=True)
    # print(len(id_list), flush=True)
    pdb.set_trace()


if __name__ == '__main__':
    parser = ap.ArgumentParser()
    parser.add_argument('--dataset_dir', '-d', type=str, help='Path to the imagenet2012_subset/10pct directory.')
    args = parser.parse_args()

    args, _ = parser.parse_known_args()
    kwargs = dict(args._get_kwargs())
    main(**kwargs)