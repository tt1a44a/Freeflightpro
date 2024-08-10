.class public Lcom/parrot/freeflight/core/video/VideoStreamingController;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;,
        Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "debug_stream"

.field private static final U_COMPONENT:I = 0x1

.field private static final V_COMPONENT:I = 0x2

.field private static final Y_COMPONENT:I


# instance fields
.field private final frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

.field private final mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

.field private final mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneConnected:Z

.field private mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

.field private mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

.field private mThermal:Z

.field private mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWantVideo:Z

.field private mWantYUV:Z

.field private mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 1
    .param p1, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantYUV:Z

    .line 72
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    .line 74
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    .line 77
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mThermal:Z

    .line 85
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    .line 128
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    .line 136
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$3;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 156
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 158
    new-instance v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-direct {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->linkViewAndDecoder()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDroneConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneConnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneDisconnected()V

    return-void
.end method

.method private createVideoDecoder(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/video/decoder/VideoDecoder;
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->useARStream2(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "debug_stream"

    const-string v2, "VideoStreamingController.ARStream2MediaCodecVideoDecoder instantiated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameAvailableListener:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;)V

    .line 284
    .local v0, "decoder":Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->setUseSurface(Z)V

    .line 291
    .end local v0    # "decoder":Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const-string v1, "debug_stream"

    const-string v2, "VideoStreamingController.ARStream1 is not supported anymore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V
    .locals 1
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enable"    # Z

    .prologue
    .line 295
    instance-of v0, p1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_1

    .line 302
    check-cast p1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    .end local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    invoke-virtual {p1, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->enableVideoStreaming(Z)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    :cond_1
    instance-of v0, p1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .end local p1    # "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    invoke-virtual {p1, p2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->enableVideoStreaming(Z)V

    goto :goto_0
.end method

.method private linkViewAndDecoder()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkViewAndDecoder() mVideoView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoDecoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewAndDecoderLinker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    .line 239
    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-static {v0, v1}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinkerFactory;->create(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->link()V

    .line 246
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 273
    .local v1, "ready":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    .line 274
    .local v0, "listener":Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;->onDecoderStateChange(Z)V

    goto :goto_1

    .line 272
    .end local v0    # "listener":Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
    .end local v1    # "ready":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    .restart local v1    # "ready":Z
    :cond_1
    return-void
.end method

.method private onDroneConnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 3
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 249
    const-string v0, "debug_stream"

    const-string/jumbo v1, "onDroneConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 251
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->createVideoDecoder(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/video/decoder/VideoDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->notifyListeners()V

    .line 254
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantVideo:Z

    .line 255
    invoke-direct {p0, p1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->enableVideoStreaming(Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    .line 257
    :cond_0
    return-void
.end method

.method private onDroneDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "debug_stream"

    const-string/jumbo v1, "onDroneDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 262
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder;->destroy()V

    .line 266
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    .line 267
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->notifyListeners()V

    .line 269
    :cond_1
    return-void
.end method

.method private useARStream2(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z
    .locals 1
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;->onDecoderStateChange(Z)V

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableThermal(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 309
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableThermal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mThermal:Z

    .line 311
    return-void
.end method

.method public isDecoderReady()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThermalEnabled()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mThermal:Z

    return v0
.end method

.method public pauseFollowView()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLViewYUV;->onPause()V

    .line 331
    :cond_0
    return-void
.end method

.method public processYUVFrame(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JZFFFFLcom/parrot/controller/stream/UserMetadata;)V
    .locals 17
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "frameTimestamp"    # J
    .param p7, "metadataAvailable"    # Z
    .param p8, "qW"    # F
    .param p9, "qX"    # F
    .param p10, "qY"    # F
    .param p11, "qZ"    # F
    .param p12, "userMetadata"    # Lcom/parrot/controller/stream/UserMetadata;

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    if-eqz v2, :cond_0

    const-string v2, "color-format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getColorFormat()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 337
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractorFactory;->create(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    if-eqz v2, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->extract(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getWidth()I

    move-result v11

    .line 342
    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getHeight()I

    move-result v12

    .line 344
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    const/4 v3, 0x0

    new-instance v4, Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getYData()[B

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;-><init>([BI)V

    aput-object v4, v2, v3

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    const/4 v3, 0x1

    new-instance v4, Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getUData()[B

    move-result-object v5

    div-int/lit8 v6, v11, 0x2

    invoke-direct {v4, v5, v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;-><init>([BI)V

    aput-object v4, v2, v3

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    const/4 v3, 0x2

    new-instance v4, Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mYUVExtractor:Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->getVData()[B

    move-result-object v5

    div-int/lit8 v6, v11, 0x2

    invoke-direct {v4, v5, v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;-><init>([BI)V

    aput-object v4, v2, v3

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

    if-eqz v2, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v13, p12

    invoke-interface/range {v2 .. v13}, Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;->onFrameDecoded([Lcom/parrot/arsdk/lynx/ARCodecsComponent;JZFFFFIILcom/parrot/controller/stream/UserMetadata;)V

    .line 351
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    if-eqz v2, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v14

    .line 353
    .local v14, "imageSize":Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    int-to-float v2, v11

    invoke-virtual {v14, v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setWidth(F)V

    .line 354
    int-to-float v2, v12

    invoke-virtual {v14, v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setHeight(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v15

    .line 357
    .local v15, "textureSize":Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    int-to-float v2, v11

    invoke-virtual {v15, v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setWidth(F)V

    .line 358
    int-to-float v2, v12

    invoke-virtual {v15, v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->setHeight(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->frameComponents:[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    invoke-virtual {v2, v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->setComponentArray([Lcom/parrot/arsdk/lynx/ARCodecsComponent;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->incrementNumPictureDecoded()V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mAROpenGltexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v2, v3}, Lcom/parrot/controller/video/openGL/GLViewYUV;->setTexture(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V

    .line 365
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v14    # "imageSize":Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    .end local v15    # "textureSize":Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    :cond_3
    return-void
.end method

.method public registerView(Landroid/view/View;)V
    .locals 3
    .param p1, "videoView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 194
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first unregister view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    .line 199
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "then linkViewAndDecoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->linkViewAndDecoder()V

    .line 202
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public removeOnFrameDecodedListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

    if-ne v0, p1, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

    .line 189
    :cond_0
    return-void
.end method

.method public resumeFollowView()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLViewYUV;->onResume()V

    .line 325
    :cond_0
    return-void
.end method

.method public setOnFrameDecodedListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mOnFrameDecodedListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;

    .line 183
    return-void
.end method

.method public setUseGlViewYUV(ZLcom/parrot/controller/video/openGL/GLViewYUV;)V
    .locals 2
    .param p1, "want"    # Z
    .param p2, "glViewYUV"    # Lcom/parrot/controller/video/openGL/GLViewYUV;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mWantYUV:Z

    .line 225
    if-eqz p1, :cond_1

    .end local p2    # "glViewYUV":Lcom/parrot/controller/video/openGL/GLViewYUV;
    :goto_0
    iput-object p2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mGLViewYUV:Lcom/parrot/controller/video/openGL/GLViewYUV;

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    instance-of v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoDecoder:Lcom/parrot/controller/video/decoder/VideoDecoder;

    check-cast v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->setUseSurface(Z)V

    .line 229
    :cond_0
    return-void

    .line 225
    .restart local p2    # "glViewYUV":Lcom/parrot/controller/video/openGL/GLViewYUV;
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 227
    .end local p2    # "glViewYUV":Lcom/parrot/controller/video/openGL/GLViewYUV;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 165
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 169
    invoke-direct {p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->onDroneDisconnected()V

    .line 170
    return-void
.end method

.method public unregisterView(Landroid/view/View;)V
    .locals 3
    .param p1, "videoView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string v0, "debug_stream"

    const-string/jumbo v1, "unregisterView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->unlink()V

    .line 209
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mViewAndDecoderLinker:Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 212
    iput-object v2, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController;->mVideoView:Landroid/view/View;

    .line 215
    :cond_1
    return-void
.end method
