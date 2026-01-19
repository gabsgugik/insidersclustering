#variables
data=$(date +'%Y-%m-%dT%H:%M:%S')

#path
pathh='/home/gabri/repos/pa005/projetoaluno'
path_to_envs='/home/gabri/miniconda3/envs/pa005/bin'


$path_to_envs/papermill $pathh/src/models/c10_gg_deploy.ipynb $pathh/reports/c10_gg_deploy_$data.ipynb 
