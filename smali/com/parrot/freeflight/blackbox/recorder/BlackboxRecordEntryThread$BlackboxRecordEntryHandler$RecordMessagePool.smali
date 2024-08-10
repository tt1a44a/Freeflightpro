.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;
.super Ljava/lang/Object;
.source "BlackboxRecordEntryThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordMessagePool"
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x3c


# instance fields
.field private final mPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$1;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
    .locals 13
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "deviceLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "mppButonAction"    # I
    .param p7, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "appCommand"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;

    .line 101
    .local v3, "message":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v3, p1, p2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setTimestamp(D)V

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setDroneModel(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 104
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setDeviceLocation(Landroid/location/Location;)V

    .line 105
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 106
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setMppButonAction(I)V

    .line 107
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setMppPcmd(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V

    .line 108
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;->setAppCommand(I)V

    .line 113
    :goto_0
    return-object v3

    .line 110
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;

    .end local v3    # "message":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;-><init>(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V

    .restart local v3    # "message":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
    goto :goto_0
.end method

.method public recycle(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method
