# Copyright (c) 2020-present, Kyoto B&T
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#

data_path=./data_paws
export ORIGINAL_QQP_DIR=$data_path/qqp
export PAWS_QQP_DIR=$data_path/paws_qqp
export PAWS_QQP_OUTPUT_DIR=$data_path/paws_qqp/output


# download huggingface/Transfomers
git clone https://github.com/huggingface/transformers.git


# download PAWS (Paraphrase Adversaries from Word Scrambling)
git clone https://github.com/kyoto-bt-lab/paws.git


# download original QQP (Quora Question Pairs)
mkdir -p $PAWS_QQP_OUTPUT_DIR
wget -P ${ORIGINAL_QQP_DIR}/ http://qim.fs.quoracdn.net/quora_duplicate_questions.tsv 
wget -P ${data_path}/ https://storage.googleapis.com/paws/english/paws_qqp.tar.gz
tar zxvf ${data_path}/paws_qqp.tar.gz -C $data_path
mkdir -p $PAWS_QQP_OUTPUT_DIR

python -c "import nltk; nltk.download('punkt')"
python ./paws/qqp_generate_data.py \
  --original_qqp_input="${ORIGINAL_QQP_DIR}/quora_duplicate_questions.tsv" \
  --paws_input="${PAWS_QQP_DIR}/train.tsv" \
  --paws_output="${PAWS_QQP_OUTPUT_DIR}/train.tsv"

python ./paws/qqp_generate_data.py \
  --original_qqp_input="${ORIGINAL_QQP_DIR}/quora_duplicate_questions.tsv" \
  --paws_input="${PAWS_QQP_DIR}/dev_and_test.tsv" \
  --paws_output="${PAWS_QQP_OUTPUT_DIR}/dev_and_test.tsv"