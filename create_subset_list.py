
import os, json
import numpy as np

np.random.seed(15)

def main():
    class_idx = json.load(open("imagenet_class_index.json"))
    class_list = [x[0] for x in list(class_idx.values())]
    selected_classes = np.random.choice(class_list, size=50, replace=False)

    # "/home/jrick6/tensorflow_datasets/downloads/manual/ILSVRC2012_img_train.tar"
    # "/home/jrick6/tensorflow_datasets/downloads/manual/ILSVRC2012_img_val.tar"
    # tar -tvf n01440764.tar
    selected_dict = {}
    for i in range(len(selected_classes)):
        print(f"{i} / {len(selected_classes)}", flush=True)
        command0 = f"tar -xvf /home/jrick6/tensorflow_datasets/downloads/manual/ILSVRC2012_img_train.tar {selected_classes[i]}.tar"
        os.system(command0)

        data = os.popen(f'tar -tvf {selected_classes[i]}.tar').read()
        image_list = [x[0] for x in [x.split("\n") for x in data.split(' ')] if "JPEG" in x[0]]
        selected_images = np.random.choice(image_list, size=min(1000, len(image_list)), replace=False)

        selected_dict[selected_classes[i]] = selected_images
        os.system(f"rm {selected_classes[i]}.tar")

    return selected_dict

if __name__ == '__main__':
    selected_dict, validation_selected_dict = main()
    with open("subset_txt/custom_subset_50c_1000.txt", 'w') as out_fle:
        for key in selected_dict:
            for file_str in selected_dict[key]:
                out_fle.write(f"{file_str}\n")