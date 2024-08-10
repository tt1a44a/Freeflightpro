.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceBLEService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private connectionState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

.field private minicam:Z

.field private signal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ARDiscoveryDeviceBLEService"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->signal:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->TAG:Ljava/lang/String;

    const-string v2, "ARDiscoveryDeviceBLEService"

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->signal:I

    .line 91
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->connectionState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->minicam:Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 98
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->TAG:Ljava/lang/String;

    const-string v3, "equals"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    .line 103
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-nez v2, :cond_2

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 122
    :cond_1
    :goto_0
    return v0

    .line 107
    :cond_2
    if-ne p1, p0, :cond_3

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 114
    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 116
    .local v1, "otherDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getConnectionState()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->connectionState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    return-object v0
.end method

.method public getSignal()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->signal:I

    return v0
.end method

.method public hasMinicam()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->minicam:Z

    return v0
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 134
    return-void
.end method

.method public setConnectionState(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V
    .locals 0
    .param p1, "connectionState"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->connectionState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 164
    return-void
.end method

.method public setHasMinicam(Z)V
    .locals 0
    .param p1, "present"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->minicam:Z

    .line 184
    return-void
.end method

.method public setSignal(I)V
    .locals 0
    .param p1, "signal"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->signal:I

    .line 144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 197
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->signal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->connectionState:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->minicam:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
