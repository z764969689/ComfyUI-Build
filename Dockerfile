FROM runpod/worker-comfyui:5.5.0-base

# Install plugins
RUN comfy-node-install comfyui-crystools comfyui-kjnodes

# Download models using comfy-cli
# Models
RUN comfy model download --url https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev.safetensors --relative-path models/diffusion_models --filename flux1-dev.safetensors
# Loras
RUN comfy model download --url https://huggingface.co/Heartsync/Flux-NSFW-uncensored/resolve/main/lora.safetensors --relative-path models/loras --filename flux1_nsfw.safetensors
# Encoders
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors --relative-path models/text_encoders --filename clip_l.safetensors
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors --relative-path models/text_encoders --filename t5xxl_fp16.safetensors
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors --relative-path models/text_encoders --filename t5xxl_fp8_e4m3fn.safetensors
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn_scaled.safetensors --relative-path models/text_encoders --filename t5xxl_fp8_e4m3fn_scaled.safetensors
# VAE
RUN comfy model download --url https://huggingface.co/ffxvs/vae-flux/resolve/main/ae.safetensors --relative-path models/vae --filename flux1_vae.safetensors

