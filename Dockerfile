# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
# (no custom nodes to install)

# download models into comfyui
RUN comfy model download --url https://civitai.com/api/download/models/2285644?type=Model&format=SafeTensor&size=pruned&fp=fp16 --relative-path models/checkpoints --filename ultraRealistic_SDXL_1_FP16.safetensors
RUN comfy model download --url https://huggingface.co/Kim2091/UltraSharp/resolve/main/4x-UltraSharp.pth --relative-path models/upscale_models --filename 4x-UltraSharp.pth

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
