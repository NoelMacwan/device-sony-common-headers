HEADER_SRC=../kernel/include/
HEADER_DST=./original-kernel-headers/

STAGING_HEADERS="\
    ion.h\
    msm_ion.h"

LINUX_HEADERS="\
    sound/voice_svc.h \
    sound/voice_params.h\
    linux/hdmi.h\
    linux/mfd/wcd9xxx/wcd9330_registers.h"

UAPI_HEADERS="\
    sound/compress_params.h\
    sound/audio_effects.h\
    sound/lsm_params.h\
    sound/compress_offload.h\
    sound/devdep_params.h\
    sound/msmcal-hwdep.h\
    sound/asound.h\
    linux/msm_audio_calibration.h\
    linux/msm_mdp.h\
    linux/msm_mdp_ext.h\
    linux/v4l2-mediabus.h\
    linux/esoc_ctrl.h\
    linux/msm_audio_wmapro.h\
    linux/mfd/wcd9xxx/wcd9xxx_registers.h\
    linux/mfd/wcd9xxx/wcd9320_registers.h\
    linux/mfd/msm-adie-codec.h\
    linux/msm_rmnet.h\
    linux/msm_ipa.h\
    linux/msm_audio_amrwbplus.h\
    linux/videodev2.h\
    linux/fuse.h\
    linux/netlink.h\
    linux/msm_kgsl.h\
    linux/msm_vidc_dec.h\
    linux/msm_audio_amrwb.h\
    linux/msm_audio.h\
    linux/msm_dsps.h\
    linux/msm_rotator.h\
    linux/mdss_rotator.h\
    linux/msm_adsp.h\
    linux/rmnet_data.h\
    linux/android_pmem.h\
    linux/msm_vidc_enc.h\
    linux/qseecom.h\
    linux/spcom.h\
    linux/msm-core-interface.h\
    linux/msm_audio_wma.h\
    linux/msm_audio_aac.h\
    linux/v4l2-common.h\
    linux/v4l2-controls.h\
    linux/v4l2-mediabus.h\
    linux/mmc/ioctl.h\
    linux/mmc/core.h\
    linux/mmc/mmc.h\
    media/msm_vidc.h\
    media/msmb_camera.h\
    media/msm_vpu.h\
    media/msm_media_info.h\
    media/msm_sde_rotator.h\
    media/msm_fd.h\
    media/msmb_pproc.h\
    media/msm_jpeg.h\
    media/msm_jpeg_dma.h\
    media/msm_isp.h\
    media/msmb_ispif.h\
    media/msm_cam_sensor.h\
    media/msm_camsensor_sdk.h\
    media/msmb_isp.h\
    media/msmb_generic_buf_mgr.h\
    video/msm_hdmi_modes.h\
    asm-generic/ioctls.h"

for x in $STAGING_HEADERS; do \
cp $HEADER_SRC"../drivers/staging/android/uapi/"$x $HEADER_DST"linux/"$x
done

for x in $LINUX_HEADERS; do \
cp $HEADER_SRC$x $HEADER_DST$x
done

for x in $UAPI_HEADERS; do \
cp $HEADER_SRC"uapi/"$x $HEADER_DST$x
done

echo "Copy complete!"
