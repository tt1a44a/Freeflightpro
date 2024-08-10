.class public Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "com.parrot.arsdk.USB_ACCESSORY_ATTACHED"

.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

.field private static final MANUFACTURER_ID:Ljava/lang/String; = "Parrot"

.field private static final SKYCONTROLLER2P_MODEL_ID:Ljava/lang/String; = "Skycontroller 2P"

.field private static final SKYCONTROLLER2_MODEL_ID:Ljava/lang/String; = "Skycontroller 2"

.field private static final SKYCONTROLLER_NG_MODEL_ID:Ljava/lang/String; = "Skycontroller"

.field private static final TAG:Ljava/lang/String; = "UsbAccessoryMux"

.field private static sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;


# instance fields
.field private final context:Landroid/content/Context;

.field private discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

.field private mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

.field private muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private muxThread:Ljava/lang/Thread;

.field private final onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

.field private final usbManager:Landroid/hardware/usb/UsbManager;

.field private usbMux:Lcom/parrot/mux/Mux;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v4, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;

    invoke-direct {v4, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    iput-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    .line 194
    new-instance v4, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;

    invoke-direct {v4, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    iput-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    const-string v4, "UsbAccessoryMux"

    const-string v6, "create UsbAccessoryMux"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    .line 90
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    iput-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 91
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.parrot.arsdk.USB_ACCESSORY_ATTACHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    .line 99
    .local v1, "accessoryList":[Landroid/hardware/usb/UsbAccessory;
    if-eqz v1, :cond_1

    .line 100
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 101
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "accessoryModel":Ljava/lang/String;
    const-string v7, "Parrot"

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v2}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->isValidModel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    iget-object v7, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v8, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 100
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v2    # "accessoryModel":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Lcom/parrot/mux/Mux;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->closeMux()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->isValidModel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;Landroid/hardware/usb/UsbAccessory;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .param p1, "x1"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->startMux(Landroid/hardware/usb/UsbAccessory;)V

    return-void
.end method

.method private closeMux()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->destroy()V

    .line 166
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->stop()V

    .line 170
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->destroy()V

    .line 171
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 180
    :cond_2
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 79
    const-class v1, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .line 83
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isValidModel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accessoryModel"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "Skycontroller 2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Skycontroller"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Skycontroller 2P"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startMux(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 130
    const-string v0, "UsbAccessoryMux"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessory connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 133
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "UsbAccessoryMux"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening mux, fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/parrot/mux/Mux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/mux/Mux;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/parrot/mux/Mux$IOnClosedListener;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    const-string v2, "muxThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxThread:Ljava/lang/Thread;

    .line 144
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;-><init>(Lcom/parrot/mux/Mux;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    .line 146
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->setListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "UsbAccessoryMux"

    const-string v1, "Error opening usb mux"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "UsbAccessoryMux"

    const-string v1, "Error opening USB Accessory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cancelConnect()V

    .line 127
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I
    .locals 6
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "json"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMux()Lcom/parrot/mux/Mux;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    return-object v0
.end method

.method public setDiscoveryListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->setListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 114
    :cond_0
    return-void
.end method
