# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
# (no custom nodes to install)

# download civitai model directly
RUN wget -O /comfyui/models/checkpoints/ultraRealistic_SDXL_1_FP16.safetensors \
    "https://civitai.com/api/download/models/2285644?type=Model&format=SafeTensor&size=pruned&fp=fp16"

# download upscaler model
RUN wget -O /comfyui/models/upscale_models/4x-UltraSharp.pth \
    "https://huggingface.co/Kim2091/UltraSharp/resolve/main/4x-UltraSharp.pth"
