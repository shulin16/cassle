python3 main_continual.py \
    --dataset domainnet \
    --encoder resnet18 \
    --data_dir $DATA_DIR/domainnet \
    --split_strategy domain \
    --max_epochs 200 \
    --num_tasks 6 \
    --task_idx 1 \
    --gpus 0,1,2,3 \
    --accelerator ddp \
    --sync_batchnorm \
    --num_workers 5 \
    --precision 16 \
    --optimizer sgd \
    --lars \
    --grad_clip_lars \
    --eta_lars 0.02 \
    --exclude_bias_n_norm \
    --scheduler warmup_cosine \
    --lr 0.4 \
    --weight_decay 1e-4 \
    --batch_size 64 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 1.0 0.1 \
    --solarization_prob 0.0 0.2 \
    --dali \
    --name barlow-domainnet-decorrelative \
    --wandb \
    --offline \
    --save_checkpoint \
    --entity unitn-mhug \
    --project ever-learn \
    --scale_loss 0.1 \
    --method barlow_twins \
    --proj_hidden_dim 2048 \
    --output_dim 2048 \
    --check_val_every_n_epoch 9999 \
    --disable_knn_eval \
    --distiller decorrelative \
    --pretrained_model $PRETRAINED_PATH