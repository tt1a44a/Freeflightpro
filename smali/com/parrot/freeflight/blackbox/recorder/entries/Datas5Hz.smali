.class public Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "Datas5Hz.java"


# static fields
.field private static final DEVICE_PCMD_KEY:Ljava/lang/String; = "device_pcmd"

.field private static final FLAG_KEY:Ljava/lang/String; = "flag"

.field private static final GAZ_KEY:Ljava/lang/String; = "gaz"

.field private static final MINIMUM_NOTIFY_COUNT:I = 0x4

.field private static final PITCH_KEY:Ljava/lang/String; = "pitch"

.field private static final PRODUCT_ALT_KEY:Ljava/lang/String; = "product_alt"

.field private static final PRODUCT_ANGLES_KEY:Ljava/lang/String; = "product_angles"

.field private static final PRODUCT_SPEED_KEY:Ljava/lang/String; = "product_speed"

.field private static final ROLL_KEY:Ljava/lang/String; = "roll"

.field private static final SPEED_X_KEY:Ljava/lang/String; = "vx"

.field private static final SPEED_Y_KEY:Ljava/lang/String; = "vy"

.field private static final SPEED_Z_KEY:Ljava/lang/String; = "vz"

.field private static final YAW_KEY:Ljava/lang/String; = "yaw"


# instance fields
.field private mAnglePitch:D

.field private mAngleRoll:D

.field private mAngleyaw:D

.field private mPcmdGaz:F

.field private mPcmdPitch:F

.field private mPcmdRoll:F

.field private mPcmdYaw:F

.field private mProductAltitude:D

.field private mSpeedX:F

.field private mSpeedY:F

.field private mSpeedZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(II)V

    .line 43
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->clear()V

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 49
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mProductAltitude:D

    .line 50
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdPitch:F

    .line 51
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdRoll:F

    .line 52
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdYaw:F

    .line 53
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdGaz:F

    .line 54
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAnglePitch:D

    .line 55
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleRoll:D

    .line 56
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleyaw:D

    .line 57
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedX:F

    .line 58
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedY:F

    .line 59
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedZ:F

    .line 60
    return-void
.end method

.method public bridge synthetic clone()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->clone()Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clone()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->clone()Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;

    move-result-object v0

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "timestamp"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mTimestamp:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v5, "product_alt"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mProductAltitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 124
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .local v3, "pcmd":Lorg/json/JSONObject;
    const-string/jumbo v5, "yaw"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdYaw:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    const-string v5, "gaz"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdGaz:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v5, "pitch"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdPitch:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v5, "roll"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdRoll:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 129
    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdYaw:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdGaz:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdPitch:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdRoll:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    .line 131
    :cond_0
    const-string v5, "flag"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    :goto_0
    const-string v5, "device_pcmd"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v0, "angles":Lorg/json/JSONObject;
    const-string/jumbo v5, "pitch"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAnglePitch:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v5, "roll"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleRoll:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v5, "yaw"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleyaw:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v5, "product_angles"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v4, "speeds":Lorg/json/JSONObject;
    const-string/jumbo v5, "vx"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedX:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v5, "vy"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedY:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v5, "vz"

    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedZ:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v5, "product_speed"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .end local v0    # "angles":Lorg/json/JSONObject;
    .end local v3    # "pcmd":Lorg/json/JSONObject;
    .end local v4    # "speeds":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 133
    .restart local v3    # "pcmd":Lorg/json/JSONObject;
    :cond_1
    const-string v5, "flag"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v3    # "pcmd":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 23
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v14

    .line 70
    .local v14, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    invoke-virtual {v14}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getPitch()D

    move-result-wide v4

    .line 71
    .local v4, "anglePitch":D
    invoke-virtual {v14}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getRoll()D

    move-result-wide v6

    .line 72
    .local v6, "angleRoll":D
    invoke-virtual {v14}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 73
    .local v8, "angleYaw":D
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastPitch()F

    move-result v11

    .line 74
    .local v11, "pcmdPitch":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastYaw()F

    move-result v13

    .line 75
    .local v13, "pcmdYaw":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastRoll()F

    move-result v12

    .line 76
    .local v12, "pcmdRoll":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastGaz()F

    move-result v10

    .line 77
    .local v10, "pcmdGaz":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v16

    .line 78
    .local v16, "productAltitude":D
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeedX()F

    move-result v15

    .line 79
    .local v15, "speedX":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeedY()F

    move-result v18

    .line 80
    .local v18, "speedY":F
    invoke-virtual/range {p3 .. p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getSpeedZ()F

    move-result v19

    .line 82
    .local v19, "speedZ":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAnglePitch:D

    move-wide/from16 v20, v0

    cmpl-double v20, v20, v4

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleRoll:D

    move-wide/from16 v20, v0

    cmpl-double v20, v20, v6

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleyaw:D

    move-wide/from16 v20, v0

    cmpl-double v20, v20, v8

    if-nez v20, :cond_1

    .line 83
    :cond_0
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mTimestamp:D

    .line 84
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAnglePitch:D

    .line 85
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleRoll:D

    .line 86
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mAngleyaw:D

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    .line 90
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdPitch:F

    move/from16 v20, v0

    cmpl-float v20, v20, v11

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdRoll:F

    move/from16 v20, v0

    cmpl-float v20, v20, v12

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdYaw:F

    move/from16 v20, v0

    cmpl-float v20, v20, v13

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdGaz:F

    move/from16 v20, v0

    cmpl-float v20, v20, v10

    if-eqz v20, :cond_3

    .line 92
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mTimestamp:D

    .line 93
    move-object/from16 v0, p0

    iput v11, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdPitch:F

    .line 94
    move-object/from16 v0, p0

    iput v12, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdRoll:F

    .line 95
    move-object/from16 v0, p0

    iput v13, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdYaw:F

    .line 96
    move-object/from16 v0, p0

    iput v10, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mPcmdGaz:F

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    .line 100
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedX:F

    move/from16 v20, v0

    cmpl-float v20, v20, v15

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedY:F

    move/from16 v20, v0

    cmpl-float v20, v20, v18

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedZ:F

    move/from16 v20, v0

    cmpl-float v20, v20, v19

    if-eqz v20, :cond_5

    .line 102
    :cond_4
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mTimestamp:D

    .line 103
    move-object/from16 v0, p0

    iput v15, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedX:F

    .line 104
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedY:F

    .line 105
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mSpeedZ:F

    .line 106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    .line 109
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mProductAltitude:D

    move-wide/from16 v20, v0

    cmpl-double v20, v20, v16

    if-eqz v20, :cond_6

    .line 110
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mTimestamp:D

    .line 111
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mProductAltitude:D

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas5Hz;->mVariableUpdatedCount:I

    .line 114
    :cond_6
    return-void
.end method
