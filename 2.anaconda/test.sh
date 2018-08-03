echo -e "Enter env name : \c"
read name
echo "env : $name"

conda create --name $name python=3.6
conda info --envs
source activate $name
