import os
import json

def get_image_names(images_folder):
    try:
        # ? List all files in the directory
        files = os.listdir(images_folder)

        # ?Filter files by .png extension - remove extension :
        # image_names = [file.split('.')[0]  for file in files if file.lower().endswith('.png')]

        # ?Filter files by .png extension - with  extension :
        image_names = [file for file in files if file.lower().endswith('.png')]

        return image_names
    except FileNotFoundError:
        return []



# ! Script when it is run as the main module , standalone : 
if __name__ == '__main__':
    images_folder = './assets/images'
    image_names = get_image_names(images_folder)

    print(json.dumps({"image_names": image_names}))



# ! print(json.dumps({"image_names": image_names}))
# *The json.dumps function takes a Python object (in this case, a dictionary) and returns a JSON-formatted string. This string is then printed to the console, and it will be the output of your Python script.

#* The output will be a JSON string that your Dart script can successfully parse using json.decode to obtain the image names as a list.