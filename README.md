# QQP-PAWS
Unofficial implementation of QQP+PAWS with huggingface.

[PAWS: Paraphrase Adversaries from Word Scrambling](https://arxiv.org/abs/1904.01130)

# Usage
If you use Google Colaboratory, clone this repository to "/Google Drive/Colab Notebooks/".  
And open main.ipynb.

# Results
||QQP→QQP|QQP→PAWS<sub>QQP</sub>|QQP+PAWS<sub>QQP</sub>→PAWS<sub>QQP</sub>|
|---|---:|---:|---:|
|BERT (Acc)|0.910|0.374|0.826|

Result file is saved at  
QQP→QQP  
/Google Drive/Colab Notebooks/QQP-PAWS/result/qqp_qqp/eval_results.txt  
QQP→PAWS<sub>QQP</sub>  
/Google Drive/Colab Notebooks/QQP-PAWS/result/qqp_pawsqqp/eval_results.txt  
QQP+PAWS<sub>QQP</sub>→PAWS<sub>QQP</sub>  
/Google Drive/Colab Notebooks/QQP-PAWS/result/pawsqqp_pawsqqp/eval_results.txt  

![paper results](https://github.com/kyoto-bt-lab/QQP-PAWS/blob/master/paper_results.png)
