cd ../etc

model_list=(cwnLLaMA twLLaMA)

for model_name in ${model_list[@]}; do
  echo $model_name
  # papermill 24.10-cwnLLaMA-semrel-compress.ipynb \
  #   -p use_model ${model_name} \
  #   --log-output \
  #   --progress-bar \
  #   papermill/24.10-${model_name}.ipynb
  # papermill 24.12-cwnLLaMA-eval-compress.ipynb \
  #   -p use_model ${model_name} \
  #   --log-output \
  #   --progress-bar \
  #   papermill/24.12-${model_name}.ipynb
  papermill 24.14-cwnLLaMA-lopegpt-compress.ipynb \
    -p use_model ${model_name} \
    --log-output \
    --progress-bar \
    papermill/24.14-${model_name}.ipynb
done
