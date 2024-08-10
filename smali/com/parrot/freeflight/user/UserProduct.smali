.class public Lcom/parrot/freeflight/user/UserProduct;
.super Ljava/lang/Object;
.source "UserProduct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/user/UserProduct$UpdateState;,
        Lcom/parrot/freeflight/user/UserProduct$Type;
    }
.end annotation


# static fields
.field private static final JSON_NAME_NAME:Ljava/lang/String; = "name"

.field private static final JSON_NAME_PRODUCT_ENUM:Ljava/lang/String; = "productId"

.field private static final JSON_NAME_PRODUCT_ID:Ljava/lang/String; = "newProductId"

.field private static final JSON_NAME_SOFTWARE_VERSION:Ljava/lang/String; = "softwareVersion"

.field private static final JSON_NAME_UID:Ljava/lang/String; = "uid"

.field private static final JSON_NAME_UPDATE_STATE:Ljava/lang/String; = "updateState"

.field public static final PRODUCT_DRONE:I = 0x0

.field public static final PRODUCT_REMOTE_CTRL:I = 0x1

.field public static final UPDATE_AVAILABLE_ONLINE:I = 0x1

.field public static final UPDATE_CHECKING_SERVER:I = 0x8

.field public static final UPDATE_CONNECT_PRODUCT:I = 0x6

.field public static final UPDATE_IN_PROGRESS:I = 0x2

.field public static final UPDATE_NEED_DOWNLOAD:I = 0x5

.field public static final UPDATE_NEED_INSTALL:I = 0x4

.field public static final UPDATE_NEED_INTERNET:I = 0x3

.field public static final UPDATE_SEVERAL_UPDATES_AVAILABLE:I = 0x7

.field public static final UPDATE_UNKNOWN:I = -0x1

.field public static final UPDATE_UP_TO_DATE:I


# instance fields
.field private mAdditionalUpdateVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedTrampolineUpdate:Z

.field private mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShouldSave:Z

.field private mSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdateMandatory:Z

.field private mUpdateState:I

.field private mUpdateVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "shouldSave"    # Z
    .param p5, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "updateState"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 121
    iput-object p2, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p3}, Lcom/parrot/freeflight/user/UserProduct;->extractUidFromTxtRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "extractedUid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    iput-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    .line 133
    :goto_0
    iput-boolean p4, p0, Lcom/parrot/freeflight/user/UserProduct;->mShouldSave:Z

    .line 134
    iput-object p5, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    .line 135
    iput p6, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateState:I

    .line 136
    return-void

    .line 131
    :cond_0
    iput-object p3, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 5
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 98
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 99
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v3, v4, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 101
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "txtRecord":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/user/UserProduct;->extractUidFromTxtRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "uid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 104
    iput-object v2, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    .line 115
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v1    # "txtRecord":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    .restart local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .restart local v1    # "txtRecord":Ljava/lang/String;
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    goto :goto_0

    .line 108
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v1    # "txtRecord":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v3, v4, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 110
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    goto :goto_0

    .line 112
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 113
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static create(ILjava/lang/String;)Lcom/parrot/freeflight/user/UserProduct;
    .locals 13
    .param p0, "type"    # I
    .param p1, "droneInfo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 214
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 215
    .local v11, "stringReader":Ljava/io/StringReader;
    new-instance v10, Landroid/util/JsonReader;

    invoke-direct {v10, v11}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 216
    .local v10, "reader":Landroid/util/JsonReader;
    const/4 v2, 0x0

    .line 217
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 218
    .local v3, "uid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const/4 v5, 0x0

    .line 221
    .local v5, "softwareVersion":Ljava/lang/String;
    const/4 v6, -0x1

    .line 222
    .local v6, "updateState":I
    const/4 v4, 0x0

    .line 223
    .local v4, "shouldSave":Z
    const/4 v9, -0x1

    .line 225
    .local v9, "productId":I
    :try_start_0
    invoke-virtual {v10}, Landroid/util/JsonReader;->beginObject()V

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "attributeName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v12

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_2
    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v7    # "attributeName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 255
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V

    .line 259
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    .end local v8    # "e":Ljava/io/IOException;
    :goto_3
    if-eq v9, v12, :cond_4

    .line 267
    invoke-static {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 274
    :cond_2
    :goto_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v0, :cond_6

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v0, :cond_6

    .line 277
    if-nez p0, :cond_5

    .line 278
    new-instance v0, Lcom/parrot/freeflight/user/UserDrone;

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/user/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 283
    :goto_5
    return-object v0

    .line 228
    .restart local v7    # "attributeName":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    const-string v0, "name"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "uid"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "productId"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "newProductId"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "softwareVersion"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "updateState"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    .line 230
    :pswitch_0
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 231
    goto/16 :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_2
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 237
    goto/16 :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    .line 240
    goto/16 :goto_0

    .line 242
    :pswitch_4
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 243
    goto/16 :goto_0

    .line 246
    :pswitch_5
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    goto/16 :goto_2

    .line 258
    .end local v7    # "attributeName":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V

    .line 259
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 260
    :catch_1
    move-exception v8

    .line 261
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 260
    :catch_2
    move-exception v8

    .line 261
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 257
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 258
    :try_start_5
    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V

    .line 259
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 262
    :goto_6
    throw v0

    .line 260
    :catch_3
    move-exception v8

    .line 261
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 268
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/freeflight/user/UserSettings;->convertOldProductEnum(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 280
    :cond_5
    new-instance v0, Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/user/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_5

    .line 283
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 228
    :sswitch_data_0
    .sparse-switch
        -0x3eb1a996 -> :sswitch_2
        -0x2c8c5f56 -> :sswitch_3
        -0x22d74eb8 -> :sswitch_5
        0x1c450 -> :sswitch_1
        0x337a8b -> :sswitch_0
        0x120f7931 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private extractUidFromTxtRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "txtRecord"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "jsonObject":Lorg/json/JSONObject;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 333
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 333
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAdditionalUpdateVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mAdditionalUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 165
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 166
    .local v2, "writer":Landroid/util/JsonWriter;
    const-string v3, "  "

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 169
    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 170
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 171
    const-string v3, "newProductId"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/user/UserProduct;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 172
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 173
    const-string/jumbo v3, "softwareVersion"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 175
    :cond_0
    const-string/jumbo v3, "updateState"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget v4, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateState:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 176
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v3

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 181
    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    :goto_1
    throw v3

    .line 182
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateState()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateState:I

    return v0
.end method

.method public getUpdateVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isSameProduct(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 6
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 300
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v5, p0, Lcom/parrot/freeflight/user/UserProduct;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v5, :cond_0

    .line 301
    const/4 v5, 0x0

    .line 319
    :goto_0
    return v5

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v2

    .line 305
    .local v2, "productNetwork":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v2, v5, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 307
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "txtRecord":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/user/UserProduct;->extractUidFromTxtRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "uid":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 310
    move-object v4, v3

    .line 319
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v3    # "txtRecord":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/user/UserProduct;->mUid:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 312
    .end local v4    # "uid":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v2, v5, :cond_3

    .line 313
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 314
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v4

    .line 315
    .restart local v4    # "uid":Ljava/lang/String;
    goto :goto_1

    .line 316
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    .end local v4    # "uid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 317
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "uid":Ljava/lang/String;
    goto :goto_1
.end method

.method public isUpdateMandatory()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateMandatory:Z

    return v0
.end method

.method public needTrampolineUpdate()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mNeedTrampolineUpdate:Z

    return v0
.end method

.method public setAdditionalUpdateVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalUpdateVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 367
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mAdditionalUpdateVersion:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mName:Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mShouldSave:Z

    .line 210
    :cond_0
    return-void
.end method

.method public setNeedTrampolineUpdate(Z)V
    .locals 0
    .param p1, "needTrampolineUpdate"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mNeedTrampolineUpdate:Z

    .line 350
    return-void
.end method

.method public setProductNetworkType(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;)V
    .locals 0
    .param p1, "networkType"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 145
    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mSoftwareVersion:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mShouldSave:Z

    .line 203
    :cond_0
    return-void
.end method

.method public setUpdateMandatory(Z)V
    .locals 0
    .param p1, "updateMandatory"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateMandatory:Z

    .line 342
    return-void
.end method

.method public setUpdateState(I)V
    .locals 1
    .param p1, "updateState"    # I

    .prologue
    .line 292
    iget v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateState:I

    if-eq p1, v0, :cond_0

    .line 293
    iput p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateState:I

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mShouldSave:Z

    .line 296
    :cond_0
    return-void
.end method

.method public setUpdateVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserProduct;->mUpdateVersion:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public shouldSave()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/parrot/freeflight/user/UserProduct;->mShouldSave:Z

    return v0
.end method
