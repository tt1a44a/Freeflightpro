.class public Lcom/parrot/freeflight/media/MediaCountCompat;
.super Ljava/lang/Object;
.source "MediaCountCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCountCompat"


# instance fields
.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;Lcom/parrot/freeflight/media/MediaCountCompat$Listener;)V
    .locals 1
    .param p1, "droneMemoryInitializationInfo"    # Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/parrot/freeflight/media/MediaCountCompat$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/MediaCountCompat$1;-><init>(Lcom/parrot/freeflight/media/MediaCountCompat;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    .line 60
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 61
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getSkyDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 62
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getMassStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/media/MediaCountCompat;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/MediaCountCompat;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/task/MediaTask;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/MediaCountCompat;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    return-object v0
.end method

.method private cancelRunningTask()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 90
    :cond_0
    return-void
.end method

.method public static getReadMediaCount(Lcom/parrot/freeflight/core/model/DroneModel;)I
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReadMediaCount()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;I)V

    .line 124
    return-void
.end method

.method public static incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;I)V
    .locals 2
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "delta"    # I

    .prologue
    .line 127
    instance-of v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 128
    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 129
    .local v0, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isMassStorageContentCmdSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaCountTakenDuringRun()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setMediaCountTakenDuringRun(I)V

    .line 133
    .end local v0    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    :cond_0
    return-void
.end method

.method public static incrementPhotoCount(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotoCount(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 104
    return-void
.end method

.method public static incrementPhotoCount(Lcom/parrot/freeflight/core/model/DroneModel;I)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "delta"    # I

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isMassStorageContentCmdSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPhotoCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/model/DroneModel;->setPhotoCount(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public static incrementVideoCount(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementVideoCount(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 114
    return-void
.end method

.method public static incrementVideoCount(Lcom/parrot/freeflight/core/model/DroneModel;I)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "delta"    # I

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isMassStorageContentCmdSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/model/DroneModel;->setVideoCount(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public static updateReadMediaCount(Lcom/parrot/freeflight/core/model/Model;SS)V
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "photoCount"    # S
    .param p2, "videoCount"    # S

    .prologue
    .line 97
    instance-of v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 98
    check-cast p0, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p0    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/model/DroneModel;->setReadMediaCount(II)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mListener:Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->cancelRunningTask()V

    .line 83
    return-void
.end method

.method public getMediaCountAsync(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getFtpNetworkHandler(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    move-result-object v1

    .line 70
    .local v1, "ftpNetworkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->cancelRunningTask()V

    .line 72
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;

    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    invoke-direct {v0, p2, v2, v5}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;Z)V

    .line 73
    .local v0, "delegate":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
    new-instance v2, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v3, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaCountCompat;->mGetMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    .end local v0    # "delegate":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
    :cond_0
    return-void
.end method
