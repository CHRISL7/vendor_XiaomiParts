#!/system/bin/sh
# Boost initialization script by @saurabhchardereal
# Based on work by @ronaxdevil

# If there is not a persist value, we need to set one
if [[ `getprop persist.zenparts.gpu_profile` == "" ]]; then
    setprop persist.zenparts.gpu_profile 0
fi

if [[ `getprop persist.zenparts.cpu_profile` == "" ]]; then
    setprop persist.zenparts.cpu_profile 0
fi
