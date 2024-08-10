.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
.super Ljava/lang/Object;
.source "FpvController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;,
        Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$Content;,
        Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;
    }
.end annotation


# static fields
.field private static final ADD_VIEW_DELAY:I = 0x1f4

.field private static final BUFFER_FILE_COLORS:Ljava/lang/String; = "fpv_cockpit_glasses_colors"

.field private static final BUFFER_FILE_INDICES:Ljava/lang/String; = "fpv_cockpit_glasses_indices"

.field private static final BUFFER_FILE_PREFIX_COCKPIT_GLASSES_1:Ljava/lang/String; = "fpv_cockpit_glasses_1_"

.field private static final BUFFER_FILE_PREFIX_COCKPIT_GLASSES_2:Ljava/lang/String; = "fpv_cockpit_glasses_2_"

.field private static final BUFFER_FILE_SUFFIX_BLUE_TEX:Ljava/lang/String; = "tex_coords_blue"

.field private static final BUFFER_FILE_SUFFIX_GREEN_TEX:Ljava/lang/String; = "tex_coords_green"

.field private static final BUFFER_FILE_SUFFIX_POSITIONS:Ljava/lang/String; = "positions"

.field private static final BUFFER_FILE_SUFFIX_RED_TEX:Ljava/lang/String; = "tex_coords_red"

.field public static final CONTENT_COUNT:I = 0x4

.field public static final CONTENT_HUD:I = 0x0

.field public static final CONTENT_NOTHING:I = 0x2

.field public static final CONTENT_RADAR:I = 0x1

.field public static final CONTENT_SETTINGS:I = 0x3

.field private static final CONTENT_VIEW_PADDING_DIVIDER:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FF4.Fpv"

.field private static final TELEMETRY_VIEW_PADDING_DIVIDER:I = 0x3


# instance fields
.field private mAlert:Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCameraController:Lcom/parrot/freeflight/camera/CameraController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraControllerLock:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEyesCalibrationEnabled:Z

.field private mFpvContent:I

.field private mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFpvPreviousContent:I

.field private mFpvRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPermissionListener:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mViewMode:I

.field private final mWindowSize:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/ui/radar/Radar;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;ZLcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "radar"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "rootLayout"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "eyesCalibrationEnabled"    # Z
    .param p12, "permissionListener"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            "Lcom/parrot/freeflight/piloting/ui/radar/Radar;",
            "Landroid/view/Window;",
            "Lcom/parrot/freeflight/util/PermissionChecker;",
            "Lcom/parrot/freeflight/core/video/VideoStreamingController;",
            "Landroid/view/ViewGroup;",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<***>;Z",
            "Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p10, "settingsView":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    .line 124
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    .line 148
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 151
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 173
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraControllerLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 228
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 230
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 231
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 232
    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .line 233
    iput-object p7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 234
    iput-object p8, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .line 235
    iput-object p9, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    .line 236
    iput-object p10, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    .line 237
    iput-boolean p11, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mEyesCalibrationEnabled:Z

    .line 238
    iput-object p12, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mPermissionListener:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;

    .line 239
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvEyesCalibrationPreferences()Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    .line 240
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mWindowSize:Landroid/graphics/Point;

    .line 241
    invoke-virtual {p6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mWindowSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mUiHandler:Landroid/os/Handler;

    .line 243
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mViewMode:I

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mWindowSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/graphics/SurfaceTexture;
    .param p3, "x3"    # Landroid/graphics/Point;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->startCamera(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/video/VideoStreamingController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mEyesCalibrationEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initContentPadding(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->startFpvContent()V

    return-void
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mPermissionListener:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mAlert:Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateFpvMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    return-object v0
.end method

.method public static calcFpvViewSize(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p0, "parentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "windowSize"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "parentWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 341
    .local v0, "parentHeight":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 344
    .end local p1    # "windowSize":Landroid/graphics/Point;
    :goto_0
    return-object p1

    .restart local p1    # "windowSize":Landroid/graphics/Point;
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    .end local p1    # "windowSize":Landroid/graphics/Point;
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private createFpvGLRenderer(ILcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    .locals 6
    .param p1, "viewMode"    # I
    .param p2, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 377
    if-ne p1, v5, :cond_0

    .line 378
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    .line 402
    .local v2, "videoListener":Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z)V

    .line 426
    :goto_0
    return-object v0

    .line 404
    .end local v2    # "videoListener":Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    .line 426
    .restart local v2    # "videoListener":Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z)V

    goto :goto_0
.end method

.method private destroyFpvView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 531
    const-string v1, "FF4.Fpv"

    const-string v2, "destroyFpvView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_0

    .line 534
    const-string v1, "FF4.Fpv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyFpvView mGlVideoSurfaceView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->unregisterView(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 538
    .local v0, "fpvGLSurfaceViewRef":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 550
    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 552
    .end local v0    # "fpvGLSurfaceViewRef":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_2

    .line 553
    const-string v1, "FF4.Fpv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyFpvView mGlContentSurfaceView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->stopRendering()V

    .line 556
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->removeView(Landroid/view/View;)V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 561
    .restart local v0    # "fpvGLSurfaceViewRef":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 573
    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 575
    .end local v0    # "fpvGLSurfaceViewRef":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v1, :cond_3

    .line 576
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onDestroyView()V

    .line 577
    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .line 579
    :cond_3
    const-string v1, "FF4.Fpv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyFpvView remove from stream mFpvRootView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 581
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 582
    iput-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    .line 584
    :cond_4
    return-void
.end method

.method private destroyPreviousInstances()V
    .locals 2

    .prologue
    .line 735
    const-string v0, "FF4.Fpv"

    const-string v1, "destroyPreviousInstances()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->stopCameraIfNeeded()V

    .line 737
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->destroyFpvView()V

    .line 738
    return-void
.end method

.method private initAttributes()V
    .locals 7

    .prologue
    .line 587
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    .line 588
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;-><init>(Landroid/view/View;Lcom/parrot/freeflight/core/model/DroneModel;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mAlert:Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;

    .line 589
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-direct {v3, v4, v2, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;-><init>(Landroid/view/View;ILcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    .line 590
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initHorizon()V

    .line 592
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    const v3, 0x7f0a0520

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    .line 593
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v1

    .line 594
    .local v1, "fpvViewMode":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v2, :cond_2

    .line 595
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/camera/CameraController;->getHorizontalViewAngle()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/camera/CameraController;->getVerticalViewAngle()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->updateViewAngles(FF)V

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 599
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v0

    .line 600
    .local v0, "droneCamera":Lcom/parrot/freeflight/piloting/model/DroneCamera;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getHorizontalFov()F

    move-result v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVerticalFov()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->updateViewAngles(FF)V

    .line 602
    .end local v0    # "droneCamera":Lcom/parrot/freeflight/piloting/model/DroneCamera;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 606
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateContentVisibility()V

    .line 607
    return-void

    .line 589
    .end local v1    # "fpvViewMode":I
    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private initContentPadding(I)V
    .locals 6
    .param p1, "parentViewWidth"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 511
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v4, :cond_1

    .line 512
    div-int/lit8 v0, p1, 0x6

    .line 513
    .local v0, "generalPadding":I
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v4, v0, v5, v0, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->setPadding(IIII)V

    .line 514
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    if-eqz v4, :cond_0

    .line 515
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    div-int/lit8 v5, p1, 0x3

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->setSidePadding(I)V

    .line 516
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->setTopMargin(I)V

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v4, :cond_1

    .line 519
    div-int/lit8 v1, v0, 0x2

    .line 520
    .local v1, "headUpRadarPadding":I
    div-int/lit8 v4, p1, 0x3

    add-int v5, v0, v1

    sub-int v2, v4, v5

    .line 521
    .local v2, "headUpRadarSidePadding":I
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 522
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 523
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 524
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 525
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 528
    .end local v0    # "generalPadding":I
    .end local v1    # "headUpRadarPadding":I
    .end local v2    # "headUpRadarSidePadding":I
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private initContentView(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V
    .locals 6
    .param p1, "fpvRootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 442
    const-string v1, "FF4.Fpv"

    const-string v3, "initContentView"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    .line 476
    .local v2, "contentListener":Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    const v1, 0x7f0a0413

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 477
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_2

    .line 480
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mEyesCalibrationEnabled:Z

    if-nez v1, :cond_3

    .line 481
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z)V

    .line 485
    .local v0, "contentRenderer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    :goto_0
    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->setCustomScale(F)V

    .line 486
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setGlRenderer(Lcom/parrot/controller/video/renderer/VideoGlRenderer;I)V

    .line 487
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setPixelFormat(I)V

    .line 488
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 489
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->onResume()V

    .line 491
    const v1, 0x7f0a028d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    .line 492
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->addView(Landroid/view/View;)V

    .line 499
    :cond_0
    const-string v1, "FF4.Fpv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGlRendereringObjects = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1, v3, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->setGlRendereringObjects(Landroid/opengl/GLSurfaceView;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;)V

    .line 501
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mEyesCalibrationEnabled:Z

    if-nez v1, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initAttributes()V

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->startRendering()V

    .line 507
    .end local v0    # "contentRenderer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    :cond_2
    return-void

    .line 483
    :cond_3
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z)V

    .restart local v0    # "contentRenderer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    goto :goto_0
.end method

.method private initFpvView(Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V
    .locals 6
    .param p1, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 351
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mEyesCalibrationEnabled:Z

    if-eqz v1, :cond_1

    .line 352
    const v1, 0x7f0c0092

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initVideoView(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V

    .line 357
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initContentView(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V

    .line 361
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 362
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :cond_0
    :goto_1
    return-void

    .line 354
    :cond_1
    const v1, 0x7f0c0094

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    goto :goto_0

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvRootView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method private initHorizon()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onDestroyView()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v0, :cond_1

    .line 305
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->initViews(Landroid/view/View;)V

    .line 308
    :cond_1
    return-void
.end method

.method private initVideoView(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V
    .locals 4
    .param p1, "fpvRootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 432
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v0

    .line 434
    .local v0, "viewMode":I
    const v1, 0x7f0a0414

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    .line 435
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-direct {p0, v0, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->createFpvGLRenderer(ILcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setGlRenderer(Lcom/parrot/controller/video/renderer/VideoGlRenderer;I)V

    .line 437
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->onResume()V

    .line 439
    :cond_0
    return-void
.end method

.method private loadFpvEyeBuffers()V
    .locals 12

    .prologue
    .line 616
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    if-nez v0, :cond_0

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getGlassesType()I

    move-result v9

    .line 619
    .local v9, "glassesType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    const-string v10, "fpv_cockpit_glasses_1_"

    .line 620
    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    const-string v2, "fpv_cockpit_glasses_indices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "positions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fpv_cockpit_glasses_colors"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tex_coords_red"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "tex_coords_green"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v11, "tex_coords_blue"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    .line 631
    .end local v9    # "glassesType":I
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 619
    .restart local v9    # "glassesType":I
    :cond_1
    const-string v10, "fpv_cockpit_glasses_2_"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    .end local v9    # "glassesType":I
    :catch_0
    move-exception v8

    .line 628
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private startCamera(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "destinationViewSize"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 707
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraControllerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 708
    :try_start_0
    new-instance v3, Lcom/parrot/freeflight/camera/CameraController;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {v3, p1, v1}, Lcom/parrot/freeflight/camera/CameraController;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    .line 709
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    iget v3, p3, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Lcom/parrot/freeflight/camera/CameraController;->initCamera(II)V

    .line 710
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/camera/CameraController;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 711
    .local v0, "cameraPreviewSize":Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 712
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlVideoSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setSurfaceTextureSize(II)V

    .line 713
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v1, p2}, Lcom/parrot/freeflight/camera/CameraController;->startPreview(Landroid/graphics/SurfaceTexture;)Z

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/camera/CameraController;->getHorizontalViewAngle()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/camera/CameraController;->getVerticalViewAngle()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->updateViewAngles(FF)V

    .line 719
    :cond_1
    monitor-exit v2

    .line 720
    return-void

    .line 719
    .end local v0    # "cameraPreviewSize":Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startFpvContent()V
    .locals 2

    .prologue
    .line 634
    const-string v0, "FF4.Fpv"

    const-string/jumbo v1, "startFpvContent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->loadFpvEyeBuffers()V

    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->destroyPreviousInstances()V

    .line 639
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initFpvView(Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->stopFpv()V

    goto :goto_0
.end method

.method private updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 5
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 314
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v4, p1, :cond_3

    .line 315
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    .line 316
    .local v3, "wasConnected":Z
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 317
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 319
    .local v1, "isConnectedNow":Z
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v0

    .line 320
    .local v0, "fpvViewModePreference":Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v2

    .line 322
    .local v2, "viewMode":I
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    :cond_1
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->switchMode()V

    .line 326
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateFpvMode()V

    .line 329
    .end local v0    # "fpvViewModePreference":Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;
    .end local v1    # "isConnectedNow":Z
    .end local v2    # "viewMode":I
    .end local v3    # "wasConnected":Z
    :cond_3
    return-void
.end method

.method private updateContentVisibility()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 684
    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    if-nez v6, :cond_5

    move v1, v4

    .line 685
    .local v1, "hudVisibility":I
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move v2, v4

    .line 686
    .local v2, "radarVisibility":I
    :goto_1
    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    if-nez v6, :cond_7

    move v0, v4

    .line 687
    .local v0, "headUpRadarVisibility":I
    :goto_2
    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    move v3, v4

    .line 689
    .local v3, "settingsVisibility":I
    :goto_3
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    if-eqz v4, :cond_0

    .line 690
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->setVisibility(I)V

    .line 692
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->setVisibility(I)V

    .line 695
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    if-eqz v4, :cond_2

    .line 696
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->setVisibility(I)V

    .line 698
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v4, :cond_3

    .line 699
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setVisibility(I)V

    .line 701
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 702
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_4
    return-void

    .end local v0    # "headUpRadarVisibility":I
    .end local v1    # "hudVisibility":I
    .end local v2    # "radarVisibility":I
    .end local v3    # "settingsVisibility":I
    :cond_5
    move v1, v5

    .line 684
    goto :goto_0

    .restart local v1    # "hudVisibility":I
    :cond_6
    move v2, v5

    .line 685
    goto :goto_1

    .restart local v2    # "radarVisibility":I
    :cond_7
    move v0, v5

    .line 686
    goto :goto_2

    .restart local v0    # "headUpRadarVisibility":I
    :cond_8
    move v3, v5

    .line 687
    goto :goto_3
.end method

.method private updateFpvMode()V
    .locals 3

    .prologue
    .line 657
    const-string v1, "FF4.Fpv"

    const-string/jumbo v2, "updateFpvMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v0

    .line 660
    .local v0, "fpvViewMode":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mViewMode:I

    if-eq v0, v1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->destroyPreviousInstances()V

    .line 664
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->loadFpvEyeBuffers()V

    .line 665
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initFpvView(Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V

    .line 667
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 668
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvPreviousContent:I

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    .line 669
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->showSettings()V

    .line 672
    :cond_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mViewMode:I

    .line 674
    :cond_1
    return-void
.end method


# virtual methods
.method public changeIpd(F)V
    .locals 2
    .param p1, "variation"    # F

    .prologue
    .line 797
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getIpdOffset()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->setIpdOffset(F)V

    .line 798
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 801
    :cond_0
    return-void
.end method

.method public changePanH(F)V
    .locals 2
    .param p1, "variation"    # F

    .prologue
    .line 783
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanH()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->setPanH(F)V

    .line 784
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 787
    :cond_0
    return-void
.end method

.method public changePanV(F)V
    .locals 2
    .param p1, "variation"    # F

    .prologue
    .line 790
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanV()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->setPanV(F)V

    .line 791
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 794
    :cond_0
    return-void
.end method

.method public changeViewScale(F)V
    .locals 3
    .param p1, "variation"    # F

    .prologue
    .line 804
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getViewScale()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->setViewScale(F)V

    .line 805
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 808
    :cond_0
    return-void
.end method

.method public hideSettings()V
    .locals 3

    .prologue
    .line 772
    const-string v0, "FF4.Fpv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 775
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvPreviousContent:I

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    .line 776
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvPreviousContent:I

    .line 777
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateContentVisibility()V

    .line 778
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->setCustomContentScale(F)V

    .line 780
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
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
    .line 741
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 742
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onPause()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->removeListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 296
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->stopFpv()V

    .line 297
    return-void
.end method

.method public refreshSettings()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->invalidate()V

    .line 824
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->startFpvContentWithPermissionsCheck()V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->update()V

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onResume()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadarListener:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->addListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar2D:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mRadar:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->setRadar(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->listenEvents(Landroid/content/Context;Z)V

    .line 271
    return-void
.end method

.method public setCustomContentScale(F)V
    .locals 2
    .param p1, "customScale"    # F

    .prologue
    .line 811
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->getGlRenderer()Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    move-result-object v0

    .line 813
    .local v0, "renderer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->setCustomScale(F)V

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlContentSurfaceView:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 818
    .end local v0    # "renderer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    :cond_1
    return-void
.end method

.method public showSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 761
    const-string v0, "FF4.Fpv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mGlOverlayView:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    if-eq v0, v3, :cond_0

    .line 764
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvPreviousContent:I

    .line 765
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    .line 766
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateContentVisibility()V

    .line 767
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->setCustomContentScale(F)V

    .line 769
    :cond_0
    return-void
.end method

.method public startFpvContentWithPermissionsCheck()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 610
    const-string v0, "FF4.Fpv"

    const-string/jumbo v1, "startFpvContentWithPermissionsCheck()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f5

    aput v3, v2, v4

    const v3, 0x7f1104e8

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 613
    return-void
.end method

.method public stopCameraIfNeeded()V
    .locals 4

    .prologue
    .line 723
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->stopPreview()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mCameraController:Lcom/parrot/freeflight/camera/CameraController;

    .line 727
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mHeadUpRadar:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->updateViewAngles(FF)V

    .line 731
    :cond_0
    monitor-exit v1

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopFpv()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    const-string v0, "FF4.Fpv"

    const-string/jumbo v1, "stopFpv()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    .line 648
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onDestroyView()V

    .line 650
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvHorizonController:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->stopCameraIfNeeded()V

    .line 653
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->destroyFpvView()V

    .line 654
    return-void
.end method

.method public switchFpvContent()V
    .locals 3

    .prologue
    .line 678
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    .line 679
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateContentVisibility()V

    .line 680
    const-string v0, "FF4.Fpv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch fpv content to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mFpvContent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method public updateDistance(ZF)V
    .locals 2
    .param p1, "distanceAvailable"    # Z
    .param p2, "distance"    # F

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mTelemetry:Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateDistance(ZF)Z

    .line 335
    :cond_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
