.class public Lcom/parrot/freeflight/piloting/ui/radar/Radar;
.super Ljava/lang/Object;
.source "Radar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;,
        Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    }
.end annotation


# static fields
.field private static final MODEL_REFRESH_TIME:J = 0xc8L


# instance fields
.field lastDraw:J

.field private mControllerGpsFixed:Z

.field private final mControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDistance:F

.field private final mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private final mDronePosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneTargetPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFpvControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mPreviousDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private final mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

.field private final mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSensorsListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUseRemoteCtrlGps:Z

.field private final mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    .line 48
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    invoke-direct {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .line 50
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    invoke-direct {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mFpvControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .line 52
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    invoke-direct {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDronePosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .line 61
    new-instance v3, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct {v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mPreviousDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 66
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDistance:F

    .line 68
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$1;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensorsListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    .line 91
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 116
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 137
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$4;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 150
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$5;-><init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->lastDraw:J

    .line 160
    new-instance v3, Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-direct {v3, p1}, Lcom/parrot/freeflight/piloting/utils/Sensors;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;

    .line 161
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 162
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 163
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 164
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 165
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getWifiBandState()Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    .line 166
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 167
    new-instance v3, Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-direct {v3, p1, p2, v4}, Lcom/parrot/freeflight/piloting/RelativePositionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 168
    if-eqz p4, :cond_1

    .line 169
    invoke-virtual {p4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v0

    .line 170
    .local v0, "remoteType":I
    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mUseRemoteCtrlGps:Z

    .line 175
    .end local v0    # "remoteType":I
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mPreviousDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    .line 176
    return-void

    .restart local v0    # "remoteType":I
    :cond_0
    move v1, v2

    .line 170
    goto :goto_0

    .line 173
    .end local v0    # "remoteType":I
    :cond_1
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mUseRemoteCtrlGps:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mPreviousDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .param p2, "x2"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->areDroneAttitudeEquals(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDronePosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight/piloting/ui/radar/Radar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDistance:F

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mUseRemoteCtrlGps:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mControllerGpsFixed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mFpvControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneTargetPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneTargetPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mLastUpdate:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/piloting/ui/radar/Radar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mLastUpdate:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->refresh()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModelPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method private areDroneAttitudeEquals(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z
    .locals 4
    .param p1, "previous"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "current"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, "now":J
    const-string v1, "debug_lag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radar refresh was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->lastDraw:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ago"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->lastDraw:J

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;

    .line 222
    .local v0, "listener":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;->shouldRefresh()V

    goto :goto_0

    .line 224
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;->shouldRefresh()V

    .line 207
    :cond_0
    return-void
.end method

.method public getControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDistance:F

    return v0
.end method

.method public getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    return-object v0
.end method

.method public getDronePosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDronePosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method public getDroneTargetPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneTargetPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method public getFpvControllerPosition()Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mFpvControllerPosition:Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    return-object v0
.end method

.method public getSkyControllerHeading()D
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->needCalibration()Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v0

    .line 235
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getPosition()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v2, v1

    .line 242
    .end local v0    # "type":I
    :goto_0
    return-wide v2

    .line 237
    .restart local v0    # "type":I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 238
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAttitude()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->hasHeading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAttitude()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->getHeading()D

    move-result-wide v2

    goto :goto_0

    .line 242
    .end local v0    # "type":I
    :cond_2
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0
.end method

.method public getWifiBand()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBand()I

    move-result v0

    return v0
.end method

.method public isConnectedToEvinrude()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDistanceAvailable()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDroneVideoPitchStabilized()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 291
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getStabilizationMode()I

    move-result v0

    .line 292
    .local v0, "stabilizationMode":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v1

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationAvailable()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mControllerGpsFixed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isLocationWithGpsFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkyControllerAvailable()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkyControllerHeadingAvailable()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->needCalibration()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->pause()V

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->pause()V

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensorsListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->unregisterListener(Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 195
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mUseRemoteCtrlGps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removePhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->resume()V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensorsListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->registerListener(Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSensors:Lcom/parrot/freeflight/piloting/utils/Sensors;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->resume()V

    .line 183
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mUseRemoteCtrlGps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->mGpsFixStatusListener:Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->addPhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V

    goto :goto_0
.end method
