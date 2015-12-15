from __future__ import print_function
import csv
import os

FEATURE_TEXT_INDEX = -7
OPTION_TEXT_INDEX = -8
SELLER_COMMENT_INDEX = -9
IMAGE_LINKS_INDEX = -6
ID_INDEX = 0


def load_data(file):
    main_metadata = open(os.path.dirname(file) + "/metadata.csv", 'w')
    features = open(os.path.dirname(file) + "/feature.csv", 'w')
    option_text = open(os.path.dirname(file) + "/options.csv", 'w')
    image_links = open(os.path.dirname(file) + "/images.csv", 'w')
    comment_snippets = open(os.path.dirname(file) + "/comments.csv", 'w')

    with open(file) as f:
        reader = csv.reader(f, delimiter=',')
        a_line_after_header = next(reader)
        size = len(a_line_after_header)
        print(size)
        for line in reader:
            if not is_number(line[3]):  # price is not a number
                continue
            if not is_number(line[4]):  # year is not a number
                continue
            if not is_number(line[6]):  # miles is not a number
                continue
            if len(line) != size:  # missing some colunns. so skipping
                continue

            store_data_with_id(features, line[FEATURE_TEXT_INDEX].split("|"), line[0], '|')  # features_text
            store_data_with_id(option_text, line[OPTION_TEXT_INDEX].split("|"), line[0], '|')  # options_text
            store_data_with_id(comment_snippets, line[SELLER_COMMENT_INDEX].split("|"), line[0], '|')
            store_data_with_id(image_links, line[IMAGE_LINKS_INDEX].split("|"), line[0], '|')

            remaining_attrs = [x for i, x in enumerate(line) if i != len(line) + FEATURE_TEXT_INDEX
                               and i != len(line) + OPTION_TEXT_INDEX
                               and i != len(line) + SELLER_COMMENT_INDEX
                               and i != len(line) + IMAGE_LINKS_INDEX]
            store_data(main_metadata, remaining_attrs, ',')


def store_data(file, list, seperator=','):
    print(seperator.join(list), file=file)


def store_data_with_id(file, features, id, seperator=','):
    for feature in features:
        if feature is not None and len(feature) != 0:
            print(id + seperator + feature, file=file)


def is_number(s):
    try:
        int(float(s))
        return True
    except ValueError:
        return False


if __name__ == "__main__":
    load_data('/Users/rbmv/Desktop/beepi_data/tesla_2015-07-14.csv.0')
