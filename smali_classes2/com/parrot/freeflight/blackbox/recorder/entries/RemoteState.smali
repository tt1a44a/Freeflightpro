.class public Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "RemoteState.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;


# static fields
.field private static final EXTERNAL_REMOTE_CONNECTED_KEY:Ljava/lang/String; = "external_remote_connected"

.field private static final EXTERNAL_REMOTE_DISCONNECTED_KEY:Ljava/lang/String; = "external_remote_disconnected"

.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1


# instance fields
.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadConnected:Z

.field private mGamePadName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->clear()V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadConnected:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "type"

    iget-boolean v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadConnected:Z

    if-eqz v2, :cond_0

    const-string v2, "external_remote_connected"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mTimestamp:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 76
    const-string v2, "datas"

    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :goto_1
    return-object v1

    .line 74
    :cond_0
    const-string v2, "external_remote_disconnected"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    return-void
.end method

.method public updateGamePad(DLcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 3
    .param p1, "timestamp"    # D
    .param p3, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "gamePadConnected":Z
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/GamePad;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "gamePadName":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iput-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    .line 57
    :cond_0
    invoke-virtual {p3}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-ne v2, p3, :cond_2

    iget-boolean v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadConnected:Z

    if-eq v2, v0, :cond_3

    .line 62
    :cond_2
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mTimestamp:D

    .line 63
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 64
    iput-boolean v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mGamePadConnected:Z

    .line 65
    iget v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mVariableUpdatedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/RemoteState;->mVariableUpdatedCount:I

    .line 67
    :cond_3
    return-void
.end method
