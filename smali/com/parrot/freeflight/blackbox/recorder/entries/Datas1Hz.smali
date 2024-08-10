.class public Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "Datas1Hz.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;


# static fields
.field private static final ALTITUDE_KEY:Ljava/lang/String; = "altitude"

.field private static final DEVICE_GPS_KEY:Ljava/lang/String; = "device_gps"

.field private static final LATITUDE_KEY:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE_KEY:Ljava/lang/String; = "longitude"

.field private static final MINIMUM_NOTIFY_COUNT:I = 0x3

.field private static final MPP_GAZ_KEY:Ljava/lang/String; = "gaz"

.field private static final MPP_PCMD:Ljava/lang/String; = "mpp_pcmd"

.field private static final MPP_PITCH_KEY:Ljava/lang/String; = "pitch"

.field private static final MPP_ROLL_KEY:Ljava/lang/String; = "roll"

.field private static final MPP_SOURCE_KEY:Ljava/lang/String; = "source"

.field private static final MPP_SOURCE_UNKNOWN:I = -0x1

.field private static final MPP_YAW_KEY:Ljava/lang/String; = "yaw"

.field private static final PRODUCT_GPS_KEY:Ljava/lang/String; = "product_gps"

.field private static final WIFI_RSSI_KEY:Ljava/lang/String; = "wifi_rssi"


# instance fields
.field private mDeviceAltitude:D

.field private mDeviceLatitude:D

.field private mDeviceLongitude:D

.field private mMppPcmdGaz:B

.field private mMppPcmdPitch:B

.field private mMppPcmdRoll:B

.field private mMppPcmdSource:B

.field private mMppPcmdYaw:B

.field private mProductAltitude:D

.field private mProductLatitude:D

.field private mProductLongitude:D

.field private mRssi:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(II)V

    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->clear()V

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide v0, 0x407f400000000000L    # 500.0

    .line 51
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 52
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLatitude:D

    .line 53
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLongitude:D

    .line 54
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceAltitude:D

    .line 55
    iput-short v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mRssi:S

    .line 56
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLatitude:D

    .line 57
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLongitude:D

    .line 58
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductAltitude:D

    .line 59
    iput-byte v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdPitch:B

    .line 60
    iput-byte v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdRoll:B

    .line 61
    iput-byte v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdYaw:B

    .line 62
    iput-byte v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdGaz:B

    .line 63
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdSource:B

    .line 64
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "timestamp"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mTimestamp:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v0, "deviceGps":Lorg/json/JSONObject;
    const-string v5, "altitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceAltitude:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v5, "latitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLatitude:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v5, "longitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLongitude:D

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v5, "device_gps"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v5, "wifi_rssi"

    iget-short v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mRssi:S

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v3, "productGps":Lorg/json/JSONObject;
    const-string v5, "altitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductAltitude:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    const-string v5, "latitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLatitude:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 124
    const-string v5, "longitude"

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLongitude:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v5, "product_gps"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdSource:B

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 127
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v4, "productMppPcmd":Lorg/json/JSONObject;
    const-string/jumbo v5, "pitch"

    iget-byte v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdPitch:B

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v5, "roll"

    iget-byte v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdRoll:B

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string/jumbo v5, "yaw"

    iget-byte v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdYaw:B

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v5, "gaz"

    iget-byte v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdGaz:B

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v5, "source"

    iget-byte v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdSource:B

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v5, "mpp_pcmd"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .end local v0    # "deviceGps":Lorg/json/JSONObject;
    .end local v3    # "productGps":Lorg/json/JSONObject;
    .end local v4    # "productMppPcmd":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 135
    .restart local v0    # "deviceGps":Lorg/json/JSONObject;
    .restart local v3    # "productGps":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "mpp_pcmd"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "deviceGps":Lorg/json/JSONObject;
    .end local v3    # "productGps":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 11
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 69
    .local v4, "productLocation":Landroid/location/Location;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 70
    .local v2, "productLatitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 71
    .local v6, "productLongitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 73
    .local v0, "productAltitude":D
    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLatitude:D

    cmpl-double v8, v8, v2

    if-nez v8, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLongitude:D

    cmpl-double v8, v8, v6

    if-nez v8, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductAltitude:D

    cmpl-double v8, v8, v0

    if-eqz v8, :cond_1

    .line 75
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mTimestamp:D

    .line 76
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLatitude:D

    .line 77
    iput-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductLongitude:D

    .line 78
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mProductAltitude:D

    .line 79
    iget v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    .line 82
    :cond_1
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getRssi()S

    move-result v5

    .line 83
    .local v5, "rssi":S
    iget-short v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mRssi:S

    if-eq v8, v5, :cond_2

    .line 84
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mTimestamp:D

    .line 85
    iput-short v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mRssi:S

    .line 86
    iget v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    .line 88
    :cond_2
    return-void
.end method

.method public updateDeviceLocation(DLandroid/location/Location;)V
    .locals 9
    .param p1, "timestamp"    # D
    .param p3, "deviceLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 147
    .local v2, "deviceLatitude":D
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 148
    .local v4, "deviceLongitude":D
    invoke-virtual {p3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 150
    .local v0, "deviceAltitude":D
    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLatitude:D

    cmpl-double v6, v6, v2

    if-nez v6, :cond_0

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLongitude:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_0

    iget-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceAltitude:D

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_1

    .line 152
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mTimestamp:D

    .line 153
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLatitude:D

    .line 154
    iput-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceLongitude:D

    .line 155
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mDeviceAltitude:D

    .line 156
    iget v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    .line 158
    :cond_1
    return-void
.end method

.method public updateMppPilotingInfo(DLcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;)V
    .locals 7
    .param p1, "timestamp"    # D
    .param p3, "mppPcmd"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->getPitch()B

    move-result v1

    .line 93
    .local v1, "pitch":B
    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->getRoll()B

    move-result v2

    .line 94
    .local v2, "roll":B
    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->getYaw()B

    move-result v4

    .line 95
    .local v4, "yaw":B
    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->getGaz()B

    move-result v0

    .line 96
    .local v0, "gaz":B
    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->getSource()B

    move-result v3

    .line 97
    .local v3, "source":B
    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdPitch:B

    if-ne v5, v1, :cond_0

    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdRoll:B

    if-ne v5, v2, :cond_0

    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdYaw:B

    if-ne v5, v4, :cond_0

    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdGaz:B

    if-ne v5, v0, :cond_0

    iget-byte v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdSource:B

    if-eq v5, v3, :cond_1

    .line 99
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mTimestamp:D

    .line 100
    iput-byte v1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdPitch:B

    .line 101
    iput-byte v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdRoll:B

    .line 102
    iput-byte v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdYaw:B

    .line 103
    iput-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdGaz:B

    .line 104
    iput-byte v3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mMppPcmdSource:B

    .line 105
    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Datas1Hz;->mVariableUpdatedCount:I

    .line 107
    :cond_1
    return-void
.end method
