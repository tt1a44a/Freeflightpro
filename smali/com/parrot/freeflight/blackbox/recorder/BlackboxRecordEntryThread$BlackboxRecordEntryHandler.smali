.class public Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;
.super Landroid/os/Handler;
.source "BlackboxRecordEntryThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlackboxRecordEntryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackboxRecordEntryHandler"


# instance fields
.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMppPcmdPool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecordMessagePool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recordUpdateListener"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordMessagePool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;

    .line 132
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;

    invoke-direct {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMppPcmdPool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;

    .line 135
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    const/4 v1, 0x0

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiCountry;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiCountry;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiChannel;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiChannel;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiBand;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/WifiBand;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductBattery;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductBattery;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/FlyingState;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/FlyingState;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/RunId;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/RunId;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/FlightPlanState;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/FlightPlanState;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/AlertState;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/AlertState;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/ReturnHomeState;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/ReturnHomeState;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/MppButton;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/MppButton;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;

    invoke-direct {v2}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    .line 160
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMainHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->notifyRecordEnded()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->clearAllData()V

    return-void
.end method

.method private clearAllData()V
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method private notifyRecordEnded()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$2;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method private notifyRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V
    .locals 2
    .param p1, "recordEntry"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$1;-><init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method private update(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;)V
    .locals 21
    .param p1, "recordMessage"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getTimestamp()D

    move-result-wide v18

    .line 188
    .local v18, "timestamp":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getDroneModel()Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v8

    .line 189
    .local v8, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getDeviceLocation()Landroid/location/Location;

    move-result-object v6

    .line 190
    .local v6, "deviceLocation":Landroid/location/Location;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v9

    .line 191
    .local v9, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getMppButonAction()I

    move-result v13

    .line 192
    .local v13, "mppButonAction":I
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getMppPcmd()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    move-result-object v16

    .line 193
    .local v16, "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getAppCommand()I

    move-result v4

    .line 195
    .local v4, "appCommand":I
    const/4 v11, 0x0

    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v12, v0

    .local v12, "length":I
    :goto_0
    if-ge v11, v12, :cond_7

    .line 196
    if-eqz v8, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->update(DLcom/parrot/freeflight/core/model/DroneModel;)V

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-eqz v6, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v7, v20, v11

    check-cast v7, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;

    .line 201
    .local v7, "deviceLocationUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;
    move-wide/from16 v0, v18

    invoke-interface {v7, v0, v1, v6}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;->updateDeviceLocation(DLandroid/location/Location;)V

    .line 203
    .end local v7    # "deviceLocationUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    if-eqz v9, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v10, v20, v11

    check-cast v10, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;

    .line 205
    .local v10, "gamePadUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;
    move-wide/from16 v0, v18

    invoke-interface {v10, v0, v1, v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;->updateGamePad(DLcom/parrot/freeflight/gamepad/GamePad;)V

    .line 207
    .end local v10    # "gamePadUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v14, v20, v11

    check-cast v14, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;

    .line 209
    .local v14, "mppButtonActionUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;
    move-wide/from16 v0, v18

    invoke-interface {v14, v0, v1, v13}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;->updateMppButtonAction(DI)V

    .line 211
    .end local v14    # "mppButtonActionUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    if-eqz v16, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v15, v20, v11

    check-cast v15, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;

    .line 213
    .local v15, "mppButtonPilotingInfoUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;
    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    invoke-interface {v15, v0, v1, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;->updateMppPilotingInfo(DLcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V

    .line 215
    .end local v15    # "mppButtonPilotingInfoUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v5, v20, v11

    check-cast v5, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;

    .line 217
    .local v5, "appCommandUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;
    move-wide/from16 v0, v18

    invoke-interface {v5, v0, v1, v4}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;->updateAppCommand(DI)V

    .line 219
    .end local v5    # "appCommandUpdatable":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->shouldNotify()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordEntries:[Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clone()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-result-object v17

    .line 221
    .local v17, "recordEntryCopy":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    if-eqz v17, :cond_6

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->notifyRecordUpdated(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;)V

    .line 195
    .end local v17    # "recordEntryCopy":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 226
    :cond_7
    return-void
.end method


# virtual methods
.method public getMppPcmdPool()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMppPcmdPool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;

    return-object v0
.end method

.method public getRecordMessagePool()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordMessagePool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    .line 167
    .local v0, "messageType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;

    .line 168
    .local v2, "recordMessage":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->getMppPcmd()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    move-result-object v1

    .line 178
    .local v1, "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->clear()V

    .line 179
    if-eqz v1, :cond_0

    .line 180
    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mMppPcmdPool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;->recycle(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V

    .line 182
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->mRecordMessagePool:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;->recycle(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;)V

    .line 184
    return-void

    .line 170
    .end local v1    # "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->update(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;)V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->notifyRecordEnded()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
