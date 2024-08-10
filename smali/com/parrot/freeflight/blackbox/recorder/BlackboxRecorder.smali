.class public Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$State;
    }
.end annotation


# static fields
.field private static final HEADER_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss Z"

.field private static final MAX_RECORD_ENTRIES:I = 0x168

.field public static final RECORDING_STARTED:I = 0x1

.field public static final RECORDING_STOPPED:I = 0x0

.field public static final RECORD_TIMESTAMP_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BlackboxRecorder"

.field private static final THREAD_TAG:Ljava/lang/String; = "BlackboxHandlerThread"


# instance fields
.field private mAcademyId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAppCommandListener:Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDataRecordEntries:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
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

.field private final mFfVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFirstTimestamp:J

.field private final mGamePadManagerSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHeaderDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMppBlackBoxManager:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMppBlackBoxManagerListener:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPacedRecordEntries:Lcom/parrot/freeflight/blackbox/LimitedList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecordingState:I

.field private mRemoteControllerConnected:Z

.field private mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "recordListener"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFirstTimestamp:J

    .line 116
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$1;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    .line 139
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 158
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mGamePadManagerSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 174
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManagerListener:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;

    .line 205
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$5;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAppCommandListener:Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;

    .line 233
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mContext:Landroid/content/Context;

    .line 234
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;

    .line 235
    const-string v0, "5.2.7"

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFfVersion:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mHeaderDateFormat:Ljava/text/SimpleDateFormat;

    .line 238
    new-instance v0, Lcom/parrot/freeflight/blackbox/LimitedList;

    const/16 v1, 0x168

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/blackbox/LimitedList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mPacedRecordEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDataRecordEntries:Ljava/util/List;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDeviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDeviceLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
    .param p1, "x1"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->setFirstTimestamp(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRemoteControllerConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method private setFirstTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFirstTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 330
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFirstTimestamp:J

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public createRecordHeader()Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
    .locals 18
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mHeaderDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFirstTimestamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "deviceOs":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 313
    .local v7, "deviceModel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAcademyId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAcademyId:Ljava/lang/String;

    .line 315
    .local v8, "academyId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "productFirm":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, "productHard":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsSoftwareVersion()Ljava/lang/String;

    move-result-object v12

    .line 318
    .local v12, "productGpsVersion":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getMotorSoftwareVersion()Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "productMotorVersion":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "productId":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v14

    .line 323
    .local v14, "productSerial":Ljava/lang/String;
    :goto_6
    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;

    const-string v3, "1.0.4"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFfVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    invoke-direct/range {v2 .. v15}, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;)V

    return-object v2

    .line 313
    .end local v8    # "academyId":Ljava/lang/String;
    .end local v9    # "productId":Ljava/lang/String;
    .end local v10    # "productFirm":Ljava/lang/String;
    .end local v11    # "productHard":Ljava/lang/String;
    .end local v12    # "productGpsVersion":Ljava/lang/String;
    .end local v13    # "productMotorVersion":Ljava/lang/String;
    .end local v14    # "productSerial":Ljava/lang/String;
    :cond_0
    const-string v8, ""

    goto :goto_0

    .line 315
    .restart local v8    # "academyId":Ljava/lang/String;
    :cond_1
    const-string v10, ""

    goto :goto_1

    .line 316
    .restart local v10    # "productFirm":Ljava/lang/String;
    :cond_2
    const-string v11, ""

    goto :goto_2

    .line 317
    .restart local v11    # "productHard":Ljava/lang/String;
    :cond_3
    const-string v12, ""

    goto :goto_3

    .line 318
    .restart local v12    # "productGpsVersion":Ljava/lang/String;
    :cond_4
    const-string v13, ""

    goto :goto_4

    .line 319
    .restart local v13    # "productMotorVersion":Ljava/lang/String;
    :cond_5
    const-string v9, "0"

    goto :goto_5

    .line 321
    .restart local v9    # "productId":Ljava/lang/String;
    :cond_6
    const-string v14, ""

    goto :goto_6
.end method

.method public onRecordEnded()V
    .locals 4

    .prologue
    .line 347
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mPacedRecordEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/LimitedList;->clone()Lcom/parrot/freeflight/blackbox/LimitedList;

    move-result-object v1

    .line 348
    .local v1, "pacedEntriesCopy":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mPacedRecordEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/LimitedList;->clear()V

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDataRecordEntries:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v0, "dataEntriesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDataRecordEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 351
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;

    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->createRecordHeader()Lcom/parrot/freeflight/blackbox/recorder/entries/Header;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;->onRecordEntriesAvailable(Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;)V

    .line 352
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mFirstTimestamp:J

    .line 354
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    .line 355
    return-void
.end method

.method public onRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V
    .locals 1
    .param p1, "recordEntry"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    instance-of v0, p1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mPacedRecordEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/blackbox/LimitedList;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDataRecordEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startRecording(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 2
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    if-nez v0, :cond_4

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    .line 245
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    .line 247
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    const-string v1, "BlackboxHandlerThread"

    invoke-direct {v0, v1, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->start()V

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 251
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->requestLocationUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAppCommandListener:Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addAppCommandListener(Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;)V

    .line 256
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mGamePadManagerSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 258
    :cond_4
    return-void
.end method

.method public startRecording(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 6
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    iget v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 263
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v4

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v4, v5, :cond_0

    .line 264
    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v2

    .line 265
    .local v2, "mux":Lcom/parrot/mux/Mux;
    if-nez v2, :cond_1

    .line 266
    const-string v4, "BlackboxRecorder"

    const-string v5, "Could not start remote controller recording: usb mux is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v2    # "mux":Lcom/parrot/mux/Mux;
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v2    # "mux":Lcom/parrot/mux/Mux;
    :cond_1
    invoke-virtual {v2}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v3

    .line 270
    .local v3, "muxRef":Lcom/parrot/mux/Mux$Ref;
    :try_start_0
    new-instance v4, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManagerListener:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;

    invoke-direct {v4, v3, v5}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;-><init>(Lcom/parrot/mux/Mux$Ref;Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;)V

    iput-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManager:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;
    :try_end_0
    .catch Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    invoke-virtual {v3}, Lcom/parrot/mux/Mux$Ref;->release()V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;
    const-string v4, "BlackboxRecorder"

    const-string v5, "MppBlackBoxManager <init> failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAppCommandListener:Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeAppCommandListener(Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removeUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 288
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mGamePadManagerSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mBlackboxRecordEntryThread:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->quit()Z

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManager:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManager:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;

    invoke-virtual {v0}, Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;->destroy()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mMppBlackBoxManager:Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManager;

    .line 296
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRecordingState:I

    .line 298
    :cond_3
    return-void
.end method

.method public updateAcademyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "academyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 301
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mAcademyId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public updateRemoteControllerInformation(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 5
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iget-boolean v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRemoteControllerConnected:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "serial":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "softwareVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "hardwareVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v3

    .line 227
    .local v3, "type":I
    new-instance v4, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    .line 230
    .end local v0    # "hardwareVersion":Ljava/lang/String;
    .end local v1    # "serial":Ljava/lang/String;
    .end local v2    # "softwareVersion":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_0
    return-void
.end method

.method public updateSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 306
    return-void
.end method
