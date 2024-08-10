.class public Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
.super Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;
.source "ARStream2MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "debug_stream"

.field private static final VIDEO_DEQUEUE_TIMEOUT:I = 0x80e8

.field public static sUserMetadataDeserializer:Lcom/parrot/controller/stream/UserMetadataDeserializer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFrameInfoDeserializer:Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected started:Z


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;)V
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onFrameAvailableListener"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 79
    new-instance v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;-><init>(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    .line 50
    new-instance v0, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    invoke-direct {v0}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameInfoDeserializer:Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    .line 51
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 53
    iput-object p3, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    .line 54
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mVideoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 55
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARStream2MediaCodecVideoDecoder() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isStream2StartRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isStream2StartRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStreaming()V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameInfoDeserializer:Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V

    .line 77
    return-void
.end method

.method public setUseSurface(Z)V
    .locals 2
    .param p1, "useSurface"    # Z

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "needRestart":Z
    iget-boolean v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mUseSurface:Z

    if-eq v1, p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->pauseVideoStream2Receiver()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->setUseSurface(Z)V

    .line 69
    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->restartVideoStream2Receiver()V

    .line 72
    :cond_1
    return-void
.end method
