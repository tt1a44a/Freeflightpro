.class public Lcom/parrot/freeflight/location/SensorsPolicy;
.super Ljava/lang/Object;
.source "SensorsPolicy.java"


# static fields
.field public static final DEFAULT_GPS_VALUE:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "FF4.Location.Policy"


# instance fields
.field private final mBarometer:Lcom/parrot/freeflight/location/Barometer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConnectedByUsb:Z

.field private mConnectedByWifi:Z

.field private mDroneGpsFixed:Z

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlying:Z

.field private mFlyingState:I

.field private final mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasSkyControllerLocation:Z

.field private final mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

.field private mResumed:Z

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/FollowMeManager;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "barometer"    # Lcom/parrot/freeflight/location/Barometer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "followMeManager"    # Lcom/parrot/freeflight/core/FollowMeManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    .line 37
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlying:Z

    .line 38
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneGpsFixed:Z

    .line 39
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    .line 40
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    .line 41
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    .line 56
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$1;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    .line 271
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$3;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 286
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$4;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 293
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$5;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 308
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$6;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 69
    iput-object p2, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 70
    iput-object p3, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    .line 71
    iput-object p4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 72
    iput-object p5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/location/SensorsPolicy$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SensorsPolicy$2;-><init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateBarometerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/location/SensorsPolicy;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->onDroneModelUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/location/SensorsPolicy;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/location/SensorsPolicy;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->onSkyControllerModelUpdate()V

    return-void
.end method

.method private getRemoteCtrlGpsFixStatus()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getGpsFixStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRemoteCtrlLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getPosition()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDroneModelUpdate()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const-wide v12, 0x407f400000000000L    # 500.0

    const/4 v8, 0x0

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "flying":Z
    const/4 v5, 0x0

    .line 209
    .local v5, "needModeUpdate":Z
    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v10, :cond_5

    .line 210
    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v10}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v10

    sget-object v11, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v10, v11, :cond_8

    .line 211
    iput-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    .line 212
    iput-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    .line 213
    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v10}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 214
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v10

    sget-object v11, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v10, v11, :cond_0

    move v8, v9

    :cond_0
    iput-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    .line 217
    :cond_1
    const/4 v5, 0x1

    .line 223
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->isLocationWithGpsFixed()Z

    move-result v1

    .line 224
    .local v1, "droneGpsFixed":Z
    iget-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneGpsFixed:Z

    if-eq v8, v1, :cond_3

    .line 225
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneGpsFixed:Z

    .line 226
    if-eqz v1, :cond_3

    .line 227
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v10}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v10

    invoke-virtual {v10}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/parrot/freeflight/location/SmartLocationManager;->setDroneLocation(Landroid/location/Location;)V

    .line 231
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->isFlying()Z

    move-result v2

    .line 232
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v3

    .line 233
    .local v3, "flyingState":I
    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    if-eq v8, v3, :cond_4

    .line 234
    iput v3, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    .line 237
    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    if-ne v8, v9, :cond_a

    .line 238
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v6

    .line 239
    .local v6, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 240
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsFixStatus()I

    move-result v8

    if-nez v8, :cond_4

    .line 241
    new-instance v4, Landroid/location/Location;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 242
    .local v4, "location":Landroid/location/Location;
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v8, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->setHomeLocation(Landroid/location/Location;)V

    .line 253
    .end local v4    # "location":Landroid/location/Location;
    .end local v6    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 254
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v8}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v7

    .line 255
    .local v7, "userLocation":Landroid/location/Location;
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getFollowMeState()I

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 256
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v8, v7}, Lcom/parrot/freeflight/location/SmartLocationManager;->setHomeLocation(Landroid/location/Location;)V

    .line 261
    .end local v1    # "droneGpsFixed":Z
    .end local v3    # "flyingState":I
    .end local v7    # "userLocation":Landroid/location/Location;
    :cond_5
    iget-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlying:Z

    if-eq v8, v2, :cond_6

    .line 262
    iput-boolean v2, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlying:Z

    .line 263
    const/4 v5, 0x1

    .line 265
    :cond_6
    if-eqz v5, :cond_7

    .line 266
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 267
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateBarometerMode()V

    .line 269
    :cond_7
    return-void

    .line 218
    :cond_8
    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v10}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v10

    if-nez v10, :cond_2

    .line 219
    :cond_9
    iput-boolean v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 244
    .restart local v1    # "droneGpsFixed":Z
    .restart local v3    # "flyingState":I
    :cond_a
    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_c

    .line 245
    :cond_b
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/location/SmartLocationManager;->setHomeLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 246
    :cond_c
    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_d

    iget v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlyingState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 247
    :cond_d
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v8}, Lcom/parrot/freeflight/location/SmartLocationManager;->getHomeLocation()Landroid/location/Location;

    move-result-object v8

    if-nez v8, :cond_4

    .line 248
    iget-object v8, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v9, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/model/DroneModel;->getHomePosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/location/SmartLocationManager;->setHomeLocation(Landroid/location/Location;)V

    goto :goto_1
.end method

.method private onSkyControllerModelUpdate()V
    .locals 10

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 136
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v3

    .line 138
    .local v3, "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v3, v4, :cond_4

    .line 139
    iput-boolean v6, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    .line 140
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    .line 151
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v3    # "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->getRemoteCtrlGpsFixStatus()Z

    move-result v1

    .line 155
    .local v1, "gpsSkyControllerFixed":Z
    if-eqz v1, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->getRemoteCtrlLocation()Landroid/location/Location;

    move-result-object v2

    .line 157
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_2

    .line 158
    iput-boolean v6, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    .line 159
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 160
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->onLocationChanged(Landroid/location/Location;)V

    .line 167
    .end local v2    # "location":Landroid/location/Location;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAttitude()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->hasHeading()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAttitude()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->getHeading()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateSkycontrollerRotation(D)V

    .line 170
    :cond_3
    return-void

    .line 142
    .end local v1    # "gpsSkyControllerFixed":Z
    .restart local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v3    # "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_4
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    .line 143
    iput-boolean v6, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    goto :goto_0

    .line 147
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v3    # "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_5
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    .line 148
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    .line 149
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    goto :goto_0

    .line 163
    .restart local v1    # "gpsSkyControllerFixed":Z
    :cond_6
    iput-boolean v5, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    goto :goto_1
.end method

.method private updateBarometerMode()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->isFollowMeRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/Barometer;->startListening()V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/Barometer;->stopListening()V

    goto :goto_0
.end method

.method private updateLocationManagerMode()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 185
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->setMode(I)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mHasSkyControllerLocation:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->setMode(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByUsb:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->setMode(I)V

    goto :goto_0

    .line 191
    :cond_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mConnectedByWifi:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFlying:Z

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->setMode(I)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "FF4.Location.Policy"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    .line 113
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 114
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateBarometerMode()V

    .line 115
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "FF4.Location.Policy"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    .line 104
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 105
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateBarometerMode()V

    .line 106
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mStarted:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mStarted:Z

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/FollowMeManager;->addListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mStarted:Z

    if-eqz v0, :cond_0

    .line 119
    iput-boolean v2, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mStarted:Z

    .line 121
    const-string v0, "FF4.Location.Policy"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v2, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mResumed:Z

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SensorsPolicy;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/FollowMeManager;->removeListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V

    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateLocationManagerMode()V

    .line 128
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SensorsPolicy;->updateBarometerMode()V

    .line 130
    :cond_0
    return-void
.end method
