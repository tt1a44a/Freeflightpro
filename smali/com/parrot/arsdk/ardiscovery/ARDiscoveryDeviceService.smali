.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private device:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

.field private productID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "ARDiscoveryDevice"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setDevice(Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 78
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 95
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$2;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    .line 111
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :pswitch_1
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 104
    :pswitch_2
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/Object;
    .param p3, "productID"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setDevice(Ljava/lang/Object;)V

    .line 85
    iput p3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v3, 0x1

    .line 118
    .local v3, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v8, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v8, :cond_2

    .line 120
    :cond_0
    const/4 v3, 0x0

    .line 185
    :cond_1
    :goto_0
    return v3

    .line 122
    :cond_2
    if-ne p1, p0, :cond_3

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 129
    check-cast v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 131
    .local v4, "otherDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_6

    .line 133
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 136
    iget-object v8, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iget-object v9, v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v8, v9, :cond_4

    .line 138
    sget-object v8, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$2;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    iget-object v9, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v9}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 142
    .local v1, "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 144
    .local v6, "otherDeviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v1, v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    const/4 v3, 0x0

    goto :goto_0

    .line 150
    .end local v1    # "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v6    # "otherDeviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 151
    .local v0, "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 153
    .local v5, "otherDeviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 154
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    .end local v0    # "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v5    # "otherDeviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 160
    .local v2, "deviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 162
    .local v7, "otherDeviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v2, v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 163
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    .end local v2    # "deviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    .end local v7    # "otherDeviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 181
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDevice()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    return-object v0
.end method

.method public getProductID()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    return v0
.end method

.method public setDevice(Ljava/lang/Object;)V
    .locals 1
    .param p1, "device"    # Ljava/lang/Object;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    .line 206
    instance-of v0, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    instance-of v0, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    goto :goto_0

    .line 210
    :cond_1
    instance-of v0, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_2

    .line 211
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setProductID(I)V
    .locals 0
    .param p1, "productID"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->networkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    :cond_0
    return-void
.end method
