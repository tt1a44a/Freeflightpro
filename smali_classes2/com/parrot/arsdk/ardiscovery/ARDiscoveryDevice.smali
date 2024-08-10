.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;
.super Ljava/lang/Object;
.source "ARDiscoveryDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;
    }
.end annotation


# static fields
.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

.field public static ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

.field public static ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

.field private initOk:Z

.field private nativeARDiscoveryDevice:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-string v0, "ARDiscoveryDevice"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    .line 15
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

    .line 16
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    .line 17
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    .line 18
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    .line 19
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    .line 44
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeStaticInit()V

    .line 46
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDNonAckId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

    .line 47
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDAckId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    .line 48
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDEmergencyId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    .line 49
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetDToCNavDataId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    .line 50
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetDToCEventId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v1, "ARDiscoveryDevice ..."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 62
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    .line 63
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;-><init>()V

    .line 72
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 74
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 87
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 90
    .local v1, "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :goto_0
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v1, v4, :cond_0

    .line 91
    new-instance v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getValue()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;-><init>(I)V

    throw v4

    .line 76
    .end local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :pswitch_0
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 77
    .local v2, "ns":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getPort()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initWifi(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    .line 78
    .restart local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    goto :goto_0

    .line 80
    .end local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .end local v2    # "ns":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :pswitch_1
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 81
    .local v0, "bs":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initBLE(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    .line 82
    .restart local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    goto :goto_0

    .line 84
    .end local v0    # "bs":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initUSB(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    .line 85
    .restart local v1    # "err":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    goto :goto_0

    .line 93
    :cond_0
    return-void

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native nativeDelete(J)V
.end method

.method private static native nativeGetCToDAckId()I
.end method

.method private static native nativeGetCToDEmergencyId()I
.end method

.method private static native nativeGetCToDNonAckId()I
.end method

.method private static native nativeGetDToCEventId()I
.end method

.method private static native nativeGetDToCNavDataId()I
.end method

.method private native nativeInitBLE(JILcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;)I
.end method

.method private native nativeInitUsb(JIJ)I
.end method

.method private native nativeInitWifi(JILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
        }
    .end annotation
.end method

.method private static native nativeStaticInit()V
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 101
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v2, "dispose ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 104
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeDelete(J)V

    .line 109
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 112
    :cond_0
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeDevice()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    return-wide v0
.end method

.method public initBLE(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 7
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bleDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 157
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 158
    .local v1, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    if-ne v3, v4, :cond_0

    .line 162
    if-eqz p1, :cond_1

    .line 166
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    .line 168
    sget v3, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    div-int/lit8 v0, v3, 0x2

    .line 169
    .local v0, "ackOffset":I
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    aput v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    add-int/2addr v6, v0

    aput v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    add-int/2addr v6, v0

    aput v6, v4, v5

    iput-object v4, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleNotificationIDs:[I

    .line 170
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    iput-object p2, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->context:Landroid/content/Context;

    .line 171
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    iput-object p3, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleDevice:Landroid/bluetooth/BluetoothDevice;

    .line 173
    iget-wide v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitBLE(JILcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;)I

    move-result v2

    .line 174
    .local v2, "nativeError":I
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    .line 181
    .end local v0    # "ackOffset":I
    .end local v2    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 183
    return-object v1

    .line 178
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initUSB(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 9
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "mux"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 188
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 189
    .local v6, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p2}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v7

    .line 196
    .local v7, "muxRef":Lcom/parrot/mux/Mux$Ref;
    iget-wide v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    invoke-virtual {v7}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitUsb(JIJ)I

    move-result v8

    .line 197
    .local v8, "nativeError":I
    invoke-virtual {v7}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 198
    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v6

    .line 205
    .end local v7    # "muxRef":Lcom/parrot/mux/Mux$Ref;
    .end local v8    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 207
    return-object v6

    .line 202
    :cond_1
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initWifi(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 9
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 133
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v2, "initWifi ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 136
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    if-eqz p1, :cond_1

    .line 142
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitWifi(JILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 143
    .local v8, "nativeError":I
    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    .line 150
    .end local v8    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 152
    return-object v0

    .line 147
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
