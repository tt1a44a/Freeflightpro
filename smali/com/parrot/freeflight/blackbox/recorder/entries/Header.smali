.class public Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;
    }
.end annotation


# static fields
.field private static final ACADEMY_ID:Ljava/lang/String; = "academy_id"

.field private static final BLACKBOX_VERSION:Ljava/lang/String; = "blackbox_version"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final DEVICE_OS:Ljava/lang/String; = "device_os"

.field private static final FREEFLIGHT:Ljava/lang/String; = "freeflight"

.field private static final MINIMUM_NOTIFY_COUNT:I = 0x0

.field private static final PRODUCT_FW_HARD:Ljava/lang/String; = "product_fw_hard"

.field private static final PRODUCT_FW_SOFT:Ljava/lang/String; = "product_fw_soft"

.field private static final PRODUCT_GPS_VERSION:Ljava/lang/String; = "product_gps_version"

.field private static final PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final PRODUCT_MOTOR_VERSION:Ljava/lang/String; = "product_motor_version"

.field private static final PRODUCT_SERIAL:Ljava/lang/String; = "product_serial"

.field private static final REMOTE_CONTROLLER:Ljava/lang/String; = "remote_controller"

.field private static final REMOTE_CONTROLLER_HARDWARE_VERSION:Ljava/lang/String; = "hardware_version"

.field private static final REMOTE_CONTROLLER_SERIAL:Ljava/lang/String; = "PI"

.field private static final REMOTE_CONTROLLER_SOFTWARE_VERSION:Ljava/lang/String; = "software_version"

.field private static final REMOTE_CONTROLLER_TYPE:Ljava/lang/String; = "Model"


# instance fields
.field private mAcademyId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBlackboxVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDate:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceModel:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceOs:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFfVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductFirm:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductGpsVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductHard:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductMotorVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;)V
    .locals 2
    .param p1, "blackboxVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "date"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "ffVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "deviceOs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceModel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "academyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "productId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "productFirm"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "productHard"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "productGpsVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "productMotorVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "productSerial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "remoteControllerInformation"    # Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(II)V

    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mBlackboxVersion:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mTimestamp:D

    .line 80
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDate:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mFfVersion:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDeviceOs:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDeviceModel:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mAcademyId:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductId:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductFirm:Ljava/lang/String;

    .line 87
    iput-object p9, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductHard:Ljava/lang/String;

    .line 88
    iput-object p10, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductGpsVersion:Ljava/lang/String;

    .line 89
    iput-object p11, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductMotorVersion:Ljava/lang/String;

    .line 90
    iput-object p12, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductSerial:Ljava/lang/String;

    .line 91
    iput-object p13, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    .line 92
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 98
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v1, "jsonHeaderDatas":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "blackbox_version"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mBlackboxVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v4, "product_gps_version"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductGpsVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v4, "product_fw_soft"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductFirm:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v4, "device_os"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDeviceOs:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v4, "product_serial"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductSerial:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v4, "date"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v4, "freeflight"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mFfVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v4, "product_fw_hard"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductHard:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    if-nez v4, :cond_0

    .line 125
    const-string/jumbo v4, "remote_controller"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    :goto_0
    const-string v4, "device_model"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v4, "product_motor_version"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductMotorVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v4, "academy_id"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mAcademyId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v4, "product_id"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :goto_1
    return-object v1

    .line 127
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v3, "remoteJsonObject":Lorg/json/JSONObject;
    const-string v4, "PI"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget-object v5, v5, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->serial:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v4, "software_version"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget-object v5, v5, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v4, "hardware_version"

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget-object v5, v5, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget v4, v4, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->type:I

    if-nez v4, :cond_1

    .line 133
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "remoteControllerType":Ljava/lang/String;
    :goto_2
    const-string v4, "Model"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v4, "remote_controller"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2    # "remoteControllerType":Ljava/lang/String;
    .end local v3    # "remoteJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "remoteJsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget v4, v4, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 135
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "remoteControllerType":Ljava/lang/String;
    goto :goto_2

    .line 136
    .end local v2    # "remoteControllerType":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mRemoteControllerInformation:Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;

    iget v4, v4, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 137
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "remoteControllerType":Ljava/lang/String;
    goto :goto_2

    .line 139
    .end local v2    # "remoteControllerType":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "remoteControllerType":Ljava/lang/String;
    goto :goto_2
.end method

.method public getProductSerial()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->mProductSerial:Ljava/lang/String;

    return-object v0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    return-void
.end method
