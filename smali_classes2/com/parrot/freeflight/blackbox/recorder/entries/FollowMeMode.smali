.class public Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "FollowMeMode.java"


# static fields
.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1

.field private static final PRODUCT_FOLLOWME_STATE_KEY:Ljava/lang/String; = "product_followme_state"


# instance fields
.field private mFollowMeMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 23
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->clear()V

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mFollowMeMode:I

    .line 30
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    const-string v3, "product_followme_state"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mTimestamp:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    const-string v2, "datas"

    iget v3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mFollowMeMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 3
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getPilotingMode()I

    move-result v0

    .line 35
    .local v0, "followMeMode":I
    iget v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mFollowMeMode:I

    if-eq v0, v1, :cond_0

    .line 36
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mTimestamp:D

    .line 37
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mFollowMeMode:I

    .line 38
    iget v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mVariableUpdatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/FollowMeMode;->mVariableUpdatedCount:I

    .line 40
    :cond_0
    return-void
.end method
