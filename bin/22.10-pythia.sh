cd ../etc

repo_list=(pythia-70m pythia-160m pythia-410m pythia-1.4b pythia-2.8b pythia-6.9b pythia-12b)
# repo_list=(pythia-70m)

for repo_name in ${repo_list[@]}; do
  for rev_idx in 5; do
    echo $repo_name $rev_idx
    papermill 22.10-pythia-compress.ipynb \
      -p repo_name "EleutherAI/${repo_name}" \
      -p rev_idx $rev_idx \
      --log-output \
      --progress-bar \
      papermill/22.10-${repo_name}_rev${rev_idx}.ipynb
  done
done
