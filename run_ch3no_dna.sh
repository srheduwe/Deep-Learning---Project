#!/bin/sh 

### General options 

### -- specify queue -- 

#BSUB -q gpuv100

### -- specify that we need 2GB of memory per core/slot -- 

### #BSUB -R "rusage[mem=8GB]"

#BSUB -R "select[gpu8gb]"

### -- set walltime limit: hh:mm -- 

#BSUB -W 24:00

#BSUB -o Output_%J.out 

#BSUB -e Error_%J.err

export home=$HOME

source ../../env2/bin/activate
#source /dtu/sw/dcc/dcc-sw.bash
module load python/3.9.9
module load scipy/1.7.3
module load matplotlib/3.4.3
module load cuda/11.6
python3 scripts/run.py \
                --name=CH3NO_dna \
                --symbols=X,H,C,N,O \
                --formulas=CH3NO \
                --eval_formulas=CH3NO \
                --model=schnet_edge \
                --update_edges=false \
                --log_dir=runs/CH3NO_dna/logs \
                --model_dir=runs/CH3NO_dna/models \
                --data_dir=runs/CH3NO_dna/data \
                --results_dir=runs/CH3NO_dna/results \
                --bag_scale=6 \
                --beta=-10 \
                --canvas_size=6 \
                --num_envs=12 \
                --num_steps=30000 \
                --num_steps_per_iter=216 \
                --network_width=128 \
                --mini_batch_size=64 \
                --save_rollouts=train \
                --eval_freq=1 \
                --device=cuda \
                --seed=1 \
                --log_level=DEBUG \
                --learning_rate=0.0005 \
                --target_kl=0.03 \
                --discount=0.85 \
                --lam=0.95 \
                --vf_coef=0.0003 \
                --entropy_coef=0.06 \
                --max_num_train_iters=15 \
                --min_reward=-30
