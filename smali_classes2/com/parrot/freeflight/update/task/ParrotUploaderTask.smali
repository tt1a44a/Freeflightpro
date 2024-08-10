.class public Lcom/parrot/freeflight/update/task/ParrotUploaderTask;
.super Lcom/parrot/freeflight/update/task/UploaderTask;
.source "ParrotUploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;
    }
.end annotation


# static fields
.field private static final UPDATE_PORT:I = 0x33


# instance fields
.field private mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExternalDirectory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMux:Lcom/parrot/mux/Mux;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResultPool:Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

.field private final mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

.field private mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkHandler"    # Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;-><init>()V

    .line 54
    new-instance v0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;-><init>(Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    .line 320
    new-instance v0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;-><init>(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

    .line 333
    new-instance v0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$2;-><init>(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p3, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 85
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    .line 86
    iget-boolean v0, p3, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mExternalDirectory:Ljava/lang/String;

    .line 91
    :goto_0
    iput-object p4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 93
    if-eqz p5, :cond_0

    .line 94
    invoke-virtual {p5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMux:Lcom/parrot/mux/Mux;

    .line 100
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mExternalDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->checkRFCommPushedFileSize(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private static checkRFCommPushedFileSize(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;J)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "network"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filepath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requiredSize"    # J

    .prologue
    .line 375
    sget-object v6, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 376
    .local v6, "updaterError":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 377
    .local v7, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v9, 0x1

    new-array v5, v9, [D

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v5, v9

    .line 378
    .local v5, "size":[D
    sget-object v9, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_1

    .line 380
    :try_start_0
    new-instance v8, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V

    .line 381
    .local v8, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-static {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v9

    const/16 v10, 0x33

    invoke-virtual {v8, p0, v9, v10}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v7

    .line 382
    sget-object v9, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v7, v9, :cond_0

    .line 383
    invoke-static {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v2

    .line 385
    .local v2, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v5}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sizeFileAL(Ljava/lang/String;[D)Z

    move-result v4

    .line 386
    .local v4, "ret":Z
    if-eqz v4, :cond_4

    .line 387
    const-string v9, "FF4.Updater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v12, v5, v11

    double-to-long v12, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], required = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v9, 0x0

    aget-wide v10, v5, v9

    double-to-long v10, v10

    cmp-long v9, p3, v10

    if-eqz v9, :cond_3

    .line 389
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_RFCOMM_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 398
    .end local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v4    # "ret":Z
    :cond_0
    :goto_0
    invoke-virtual {v8, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 399
    invoke-virtual {v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :goto_1
    sget-object v9, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v7, v9, :cond_2

    .line 407
    const-string v9, "FF4.Updater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v6, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 410
    :cond_2
    return-object v6

    .line 391
    .restart local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .restart local v4    # "ret":Z
    .restart local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_3
    :try_start_1
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0

    .line 394
    :cond_4
    const-string v9, "FF4.Updater"

    const-string v10, "failed to retrieve file size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BLE_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :try_end_1
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 400
    .end local v2    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v4    # "ret":Z
    .end local v8    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :catch_0
    move-exception v3

    .line 401
    .local v3, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v3}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 402
    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_1
.end method

.method private clean()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 204
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->isCorrectlyInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 211
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 216
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 220
    iput-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 222
    :cond_4
    return-void
.end method

.method private static cleanRFCommPlfFolder(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "network"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filepath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    const-string v5, "FF4.Updater"

    const-string v6, "cleanRFCommPlfFolder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 420
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne p1, v5, :cond_1

    .line 422
    :try_start_0
    new-instance v4, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V

    .line 423
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    invoke-static {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    const/16 v6, 0x33

    invoke-virtual {v4, p0, v5, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 424
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v3, v5, :cond_0

    .line 425
    invoke-static {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 426
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    invoke-virtual {v0, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->deleteFileAL(Ljava/lang/String;)Z

    move-result v2

    .line 427
    .local v2, "ret":Z
    const-string v5, "FF4.Updater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleaning RFComm plf folder success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .end local v2    # "ret":Z
    :cond_0
    invoke-virtual {v4, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 430
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :goto_0
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v5, :cond_2

    .line 438
    const-string v5, "FF4.Updater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    return-object v3

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 433
    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0
.end method

.method private createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v2, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V
    :try_end_1
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 258
    .end local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :cond_0
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :goto_1
    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 254
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 255
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    .end local v0    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    .end local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v1    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_1
.end method

.method private createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 232
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;->printStackTrace()V

    .line 273
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "plfFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "plfFolder"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v4, "plfFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    new-instance v2, Ljava/io/File;

    const-string v6, "%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v2, "plfDeviceFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 361
    .local v1, "files":[Ljava/io/File;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 362
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".plf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    move-object v3, v0

    .line 369
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_0
    return-object v3

    .line 361
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setupUploader(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 13
    .param p1, "uploader"    # Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ftpManager"    # Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "externalDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 287
    sget-object v12, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 290
    .local v12, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMux:Lcom/parrot/mux/Mux;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v7, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;

    const/4 v10, 0x0

    move-object v0, p1

    move-object/from16 v1, p4

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v10}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->createUpdaterUploader(Ljava/lang/String;Lcom/parrot/mux/Mux;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;ZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadCompletionListener;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-object v12

    .line 292
    :catch_0
    move-exception v11

    .line 293
    .local v11, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    const-string v0, "FF4.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARUpdaterException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 295
    invoke-virtual {v11}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v12

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 190
    const-string v0, "FF4.Updater"

    const-string v1, "Cancel task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->cancel(Z)Z

    .line 196
    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 129
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 130
    .local v1, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-nez v4, :cond_2

    .line 131
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 141
    :cond_0
    :goto_0
    sget-object v4, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v4, :cond_4

    .line 142
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->getUploaderRunnable()Ljava/lang/Runnable;

    move-result-object v2

    .line 143
    .local v2, "runnable":Ljava/lang/Runnable;
    if-nez v2, :cond_3

    .line 144
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 151
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_1
    return-object v1

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v4, v5, :cond_0

    .line 133
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCurrentProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4, v5}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "plfFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 135
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->cleanRFCommPlfFolder(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 136
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v4, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v4, :cond_0

    .line 137
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_0

    .line 145
    .end local v0    # "plfFile":Ljava/io/File;
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 149
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_4
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onFinish(Z)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->clean()V

    .line 172
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 179
    .local v0, "succeeded":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onFinish(Z)V

    .line 181
    .end local v0    # "succeeded":Z
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->clean()V

    .line 182
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->createUtilsManager()Lcom/parrot/arsdk/arutils/ARUtilsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    .line 106
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 107
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 108
    .local v1, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/arsdk/arutils/ARUtilsManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 110
    .local v0, "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 111
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 113
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 115
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->getARUpdaterUploader()Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .line 121
    :cond_1
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mUploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mFtpListManager:Lcom/parrot/arsdk/arutils/ARUtilsManager;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mExternalDirectory:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->setupUploader(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;Lcom/parrot/arsdk/arutils/ARUtilsManager;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 125
    .end local v0    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_2
    return-void

    .line 118
    .restart local v0    # "ftpInitResult":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_3
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V
    .locals 4
    .param p1, "values"    # [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    .prologue
    const/4 v3, 0x0

    .line 156
    aget-object v0, p1, v3

    .line 157
    .local v0, "result":Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getState()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    if-ne v1, v2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->getProgress()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onProgressChange(F)V

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;->recycle(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V

    .line 164
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V

    return-void
.end method
