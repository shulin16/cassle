python3 main_continual.py \
    --dataset imagenet100 \
    --encoder resnet18 \
    --data_dir $DATA_DIR \
    --train_dir imagenet-100/train \
    --val_dir imagenet-100/val \
    --split_strategy data \
    --max_epochs 400 \
    --num_tasks 5 \
    --task_idx 0 \
    --gpus 0,1,2 \
    --accelerator ddp \
    --sync_batchnorm \
    --num_workers 5 \
    --precision 16 \
    --optimizer sgd \
    --scheduler cosine \
    --lr 0.4 \
    --classifier_lr 0.3 \
    --weight_decay 1e-4 \
    --batch_size 128 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.4 \
    --hue 0.1 \
    --dali \
    --check_val_every_n_epoch 9999 \
    --name mocov2plus-imagenet100-5T_data \
    --project ever-ssl \
    --entity shulin16 \
    --wandb \
    --save_checkpoint \
    --method mocov2plus \
    --proj_hidden_dim 2048 \
    --queue_size 65536 \
    --temperature 0.2 \
    --base_tau_momentum 0.99 \
    --final_tau_momentum 0.999 \
    --momentum_classifier
