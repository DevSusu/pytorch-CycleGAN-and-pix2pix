CUDA_VISIBLE_DEVICES=1 python train.py --name cycada_svhn2mnist_noIdentity \
    --resize_or_crop=None \
    --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 \
    --model cycle_gan_semantic \
    --lambda_A 1 --lambda_B 1 --lambda_identity 0 \
    --no_flip --batchSize 100 \
    --dataset_mode mnist_svhn --dataroot /x/jhoffman/ \
    --which_direction BtoA

# CUDA_VISIBLE_DEVICES=1 ../ENV/Scripts/python.exe train.py --name cycada_svhn2mnist_noIdentity --percep=5 --nThreads 8 --print_freq 1000 --resize_or_crop=None --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 --model cycle_gan_semantic --lambda_A 1 --lambda_B 1 --lambda_identity 0 --no_flip --batchSize 50 --dataset_mode mnist_svhn --dataroot /mnt/c/x/jhoffman/ --which_direction BtoA
# CUDA_VISIBLE_DEVICES=1 ../ENV/Scripts/python.exe train.py --name cycada_svhn2mnist_noIdentity --percep=5 --nThreads 8 --print_freq 1000 --continue_train --epoch_count 30 --resize_or_crop=None --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 --model cycle_gan_semantic --lambda_A 1 --lambda_B 1 --lambda_identity 0 --no_flip --batchSize 50 --dataset_mode mnist_svhn --dataroot /mnt/c/x/jhoffman/ --which_direction BtoA
