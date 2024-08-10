.class public Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;
.super Ljava/lang/Object;
.source "DroneFlatTrimUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

.field private final mBackButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

.field private final mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field private mDeviceConnectorState:I

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootView:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSetFlatTrimButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

.field private final mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

.field private mVideoStreamingView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v3, 0x0

    iput v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorState:I

    .line 54
    new-instance v3, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;-><init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 166
    new-instance v3, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;-><init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    .line 178
    new-instance v3, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;-><init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mActivity:Landroid/app/Activity;

    .line 64
    const v3, 0x7f0a0158

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mRootView:Landroid/widget/RelativeLayout;

    .line 65
    const v3, 0x7f0a0156

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mBackButton:Landroid/widget/ImageView;

    .line 66
    const v3, 0x7f0a0159

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mSetFlatTrimButton:Landroid/widget/Button;

    .line 67
    const v3, 0x7f0a015a

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v3, 0x7f0a0157

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 71
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/model/DroneModel;

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 72
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 73
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 74
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    iget-object v4, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mRootView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0a0155

    invoke-direct {v3, v4, v5}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .line 76
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->initVideoStream()V

    .line 77
    iget-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    iget-object v4, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 80
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->backButton()V

    .line 81
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->setFlatTrim()V

    .line 84
    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    const/4 v3, 0x2

    invoke-static {p1, v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 86
    iget-object v3, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mSetFlatTrimButton:Landroid/widget/Button;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorState:I

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorState:I

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->initVideoStream()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->destroyVideoStream()V

    return-void
.end method

.method private backButton()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$2;-><init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private destroyVideoStream()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    .line 212
    :cond_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initVideoStream()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->isDecoderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/parrot/freeflight/view/FixedRatioTextureView;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/view/FixedRatioTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    new-instance v1, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;

    invoke-direct {v1}, Lcom/parrot/freeflight/core/video/TextureViewSurfaceTextureDefaultListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    .line 198
    :cond_0
    return-void
.end method

.method private setFlatTrim()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mSetFlatTrimButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$3;-><init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onDestroyView()V

    .line 119
    return-void
.end method

.method public lowMemory()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->destroyVideoStream()V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onJoystickEvent(FFFFFFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    return-void
.end method

.method public onSettingsPressed()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->removeListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 107
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->destroyVideoStream()V

    .line 108
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mArtificialHorizonController:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mVideoStreamingControllerListener:Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->addListener(Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;)V

    .line 101
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 114
    return-void
.end method
