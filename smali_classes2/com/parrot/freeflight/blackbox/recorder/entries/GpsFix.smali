.class public Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "GpsFix.java"


# static fields
.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1

.field private static final PRODUCT_GPS_FIX_KEY:Ljava/lang/String; = "product_gps_fix"


# instance fields
.field private mGpsFixStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    const/16 v0, 0xc

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 22
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->clear()V

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mGpsFixStatus:I

    .line 29
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    const-string v3, "product_gps_fix"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mTimestamp:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 48
    const-string v3, "datas"

    iget v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mGpsFixStatus:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    return-object v1

    .line 48
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 3
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsFixStatus()I

    move-result v0

    .line 34
    .local v0, "gpsFixStatus":I
    iget v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mGpsFixStatus:I

    if-eq v1, v0, :cond_0

    .line 35
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mTimestamp:D

    .line 36
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mGpsFixStatus:I

    .line 37
    iget v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mVariableUpdatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsFix;->mVariableUpdatedCount:I

    .line 39
    :cond_0
    return-void
.end method
