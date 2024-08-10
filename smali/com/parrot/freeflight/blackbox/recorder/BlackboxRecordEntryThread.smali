.class public Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;
.super Landroid/os/HandlerThread;
.source "BlackboxRecordEntryThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$MessageType;
    }
.end annotation


# static fields
.field public static final END:I = 0x1

.field public static final UPDATE:I


# instance fields
.field private mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recordUpdateListener"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    .line 57
    return-void
.end method


# virtual methods
.method public obtainMppPcmd(BBBBB)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    .locals 6
    .param p1, "pitch"    # B
    .param p2, "roll"    # B
    .param p3, "yaw"    # B
    .param p4, "gaz"    # B
    .param p5, "source"    # B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->getMppPcmdPool()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;->obtain(BBBBB)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLooperPrepared()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordUpdateListener:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;-><init>(Landroid/os/Looper;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordUpdateListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .line 73
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->access$000(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V
    .locals 11
    .param p1, "timestampMs"    # D
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
    .param p6, "action"    # I
    .param p7, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "appCommand"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->getRecordMessagePool()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler$RecordMessagePool;->obtain(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$RecordMessage;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->mRecordEntryHandler:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread$BlackboxRecordEntryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
