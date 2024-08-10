.class public Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;
.super Ljava/lang/Object;
.source "MavlinkController.java"

# interfaces
.implements Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;
.implements Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController$MavlinkState;
    }
.end annotation


# static fields
.field public static final MAVLINK_STATE_FAIL:I = 0x8

.field public static final MAVLINK_STATE_NONE:I = 0x0

.field public static final MAVLINK_STATE_PAUSED:I = 0x6

.field public static final MAVLINK_STATE_PLAYING:I = 0x5

.field public static final MAVLINK_STATE_SENDING:I = 0x3

.field public static final MAVLINK_STATE_SENT:I = 0x4

.field public static final MAVLINK_STATE_STOPPED:I = 0x7

.field public static final MAVLINK_STATE_WRITING:I = 0x1

.field public static final MAVLINK_STATE_WRITTEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MavlinkController"

.field public static final localPlayMavlinkFilePath:Ljava/lang/String;

.field public static final remoteMavlinkFilePath:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMavlinkState:I

.field private mMavlinkStateListeners:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flightPlan.mavlink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->remoteMavlinkFilePath:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localePlayMavlink.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->localPlayMavlinkFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method private notifyCreateMavlinkFileToSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "localPlayMavlinkFilePath"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .line 188
    .local v0, "listener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;->onCreateMavlinkFileToSend(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "listener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;
    :cond_0
    return-void
.end method

.method private notifyMavlinkStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .line 182
    .local v0, "listener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;->onMavlinkStateChanged(I)V

    goto :goto_0

    .line 184
    .end local v0    # "listener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;
    :cond_0
    return-void
.end method

.method private uploadMavlinkFile()V
    .locals 15

    .prologue
    .line 100
    const/4 v2, 0x3

    iput v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 101
    const-string v2, "MavlinkController"

    const-string/jumbo v3, "sending mavlink file ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-nez v2, :cond_0

    .line 103
    const-string v2, "MavlinkController"

    const-string v3, "ERROR : Drone Model is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 147
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V

    .line 113
    .local v1, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v10

    .line 118
    .local v10, "discoveryService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :goto_1
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->eARUTILS_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 119
    .local v12, "err":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    if-eqz v10, :cond_1

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v1, v2, v10, v3, v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v12

    .line 123
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v12, v2, :cond_3

    .line 124
    new-instance v9, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;

    invoke-direct {v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;-><init>()V

    .line 125
    .local v9, "arDataTransferManager":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    invoke-virtual {v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->getARDataTransferUploader()Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    move-result-object v0

    .line 126
    .local v0, "arDataTransferUploader":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->remoteMavlinkFilePath:Ljava/lang/String;

    sget-object v3, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->localPlayMavlinkFilePath:Ljava/lang/String;

    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;->ARDATATRANSFER_UPLOADER_RESUME_FALSE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->createUploader(Lcom/parrot/arsdk/arutils/ARUtilsManager;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploaderCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_UPLOADER_RESUME_ENUM;)V

    .line 127
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->getUploaderRunnable()Ljava/lang/Runnable;

    move-result-object v13

    .line 128
    .local v13, "uploader":Ljava/lang/Runnable;
    new-instance v14, Ljava/lang/Thread;

    invoke-direct {v14, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    .local v14, "uploaderThread":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->dispose()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 136
    invoke-virtual {v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;->dispose()V

    .line 137
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v10}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 138
    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_2
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 143
    .end local v0    # "arDataTransferUploader":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    .end local v1    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .end local v9    # "arDataTransferManager":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .end local v10    # "discoveryService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v12    # "err":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .end local v13    # "uploader":Ljava/lang/Runnable;
    .end local v14    # "uploaderThread":Ljava/lang/Thread;
    :catch_0
    move-exception v11

    .line 144
    .local v11, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    goto :goto_0

    .line 116
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v1    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v10

    .restart local v10    # "discoveryService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    goto :goto_1

    .line 132
    .restart local v0    # "arDataTransferUploader":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    .restart local v9    # "arDataTransferManager":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .restart local v12    # "err":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v13    # "uploader":Ljava/lang/Runnable;
    .restart local v14    # "uploaderThread":Ljava/lang/Thread;
    :catch_1
    move-exception v11

    .line 133
    .local v11, "e":Ljava/lang/InterruptedException;
    const-string v2, "DBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "join "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 143
    .end local v0    # "arDataTransferUploader":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;
    .end local v1    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .end local v9    # "arDataTransferManager":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferManager;
    .end local v10    # "discoveryService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "err":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .end local v13    # "uploader":Ljava/lang/Runnable;
    .end local v14    # "uploaderThread":Ljava/lang/Thread;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 140
    .restart local v1    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v10    # "discoveryService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v12    # "err":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_3
    const-string v2, "MavlinkController"

    const-string v3, "Could not init ftp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V
    :try_end_3
    .catch Lcom/parrot/arsdk/ardatatransfer/ARDataTransferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method


# virtual methods
.method public addMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V
    .locals 1
    .param p1, "mavlinkStateListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;->onMavlinkStateChanged(I)V

    .line 83
    :cond_1
    return-void
.end method

.method public didUploadComplete(Ljava/lang/Object;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "error"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 156
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-virtual {p2, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 158
    const-string v0, "MavlinkController"

    const-string v1, "--- mavlink file Upload Complete ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 161
    const-string v0, "MavlinkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Issue during mavlink file transfer ! Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public didUploadProgress(Ljava/lang/Object;F)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "percent"    # F

    .prologue
    .line 151
    const-string v0, "MavlinkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didUploadProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 261
    return-void
.end method

.method public goToMavlinkState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 193
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->notifyMavlinkStateChanged(I)V

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 197
    :pswitch_1
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    goto :goto_0

    .line 201
    :pswitch_2
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 202
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->localPlayMavlinkFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->notifyCreateMavlinkFileToSend(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->localPlayMavlinkFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    goto :goto_0

    .line 206
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 214
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->uploadMavlinkFile()V

    goto :goto_0

    .line 219
    :pswitch_4
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 220
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    sget-object v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->remoteMavlinkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->playMavlink(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_5
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-nez v0, :cond_0

    .line 228
    :cond_2
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    goto :goto_0

    .line 234
    :pswitch_6
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-nez v0, :cond_0

    .line 235
    :cond_3
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    goto :goto_0

    .line 241
    :pswitch_7
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    if-nez v0, :cond_0

    .line 243
    :cond_4
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    goto :goto_0

    .line 248
    :pswitch_8
    const-string v0, "MavlinkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mavlink error. Last state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public removeMavlinkStateListener(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;)V
    .locals 1
    .param p1, "mavlinkStateListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public requestPlayOrPause(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 1
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 166
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mMavlinkState:I

    packed-switch v0, :pswitch_data_0

    .line 174
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 178
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->pauseMavlink()V

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->remoteMavlinkFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/model/DroneModel;->playMavlink(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetController()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->goToMavlinkState(I)V

    .line 94
    return-void
.end method

.method public setSkyControllerModel(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkController;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 74
    return-void
.end method
