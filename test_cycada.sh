if [ "$1" == "all" ]; then
    how_many=100000
else
    how_many=50
fi

model=cycada_svhn2mnist_noIdentity
epoch=75
CUDA_VISIBLE_DEVICES=0 python test.py --name ${model} \
    --resize_or_crop=None \
    --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 \
    --model cycle_gan_semantic \
    --no_flip --batchSize 100 \
    --dataset_mode mnist_svhn --dataroot /x/jhoffman/ \
    --which_direction BtoA \
    --phase train \
    --how_many ${how_many} \
    --which_epoch ${epoch}

# CUDA_VISIBLE_DEVICES=0 python test.py --name cycada_svhn2mnist_noIdentity --resize_or_crop=None --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 --model cycle_gan_semantic_percep --no_flip --batchSize 100 --dataset_mode mnist_svhn --dataroot /x/devsusu/ --which_direction BtoA --phase train --how_many 100000 --which_epoch 80
# python test.py --name cycada_svhn2mnist_noIdentity --no_flip --resize_or_crop=None --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 --model cycle_gan_semantic_percep --which_direction AtoB --phase train --how_many 100000 --which_epoch 80 --batchSize 100 --dataset_mode mnist_svhn --dataroot /x/devsusu/ --results_dir /x/devsusu/
