.class public Lcom/parrot/freeflight/update/task/DownloaderTask;
.super Landroid/os/AsyncTask;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;,
        Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;",
        "Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentDownloadingVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

.field private final mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

.field private mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExternalDirectory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

.field private mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/update/task/DeviceVersion;Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentDeviceVersion"    # Lcom/parrot/freeflight/update/task/DeviceVersion;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-direct {v3, v7}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    .line 364
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$1;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;

    .line 381
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$2;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

    .line 395
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$3;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

    .line 414
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$4;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 88
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "appVersion":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mAppVersion:Ljava/lang/String;

    .line 95
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 96
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v4, p2, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v3, v6

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    .line 100
    new-instance v3, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    invoke-direct {v3, v7}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;-><init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V

    iput-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    .line 101
    return-void

    .line 89
    .end local v0    # "appVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 91
    const-string v0, ""

    .restart local v0    # "appVersion":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/update/task/DownloaderTask;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->checkMultiplePlfsInPlfFolders(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 211
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 216
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 220
    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 222
    :cond_2
    return-void
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

.method private setupDownloader(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 16
    .param p1, "downloader"    # Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "externalDirectory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "productToDownload"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 272
    sget-object v15, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 273
    .local v15, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    if-eqz p4, :cond_0

    .line 275
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mAppVersion:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mWillDownloadPlfListener:Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadProgressListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloadCompletionListener:Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v2 .. v13}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->createUpdaterDownloader(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->setUpdatesProductList([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-object v15

    .line 278
    :catch_0
    move-exception v14

    .line 279
    .local v14, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    const-string v2, "FF4.Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARUpdaterException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 281
    invoke-virtual {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v15

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "FF4.Updater"

    const-string v1, "Cancel task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mGetUpdateInfoSyncTask:Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->cancel()V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancel(Z)Z

    .line 200
    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 116
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 117
    .local v2, "result":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    new-instance v4, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mInternetConnectionListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    .line 118
    .local v0, "hasInternet":Z
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v4, :cond_3

    .line 119
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    iget-object v6, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mExternalDirectory:Ljava/lang/String;

    iget-object v7, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mProductToDownload:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/freeflight/update/task/DownloaderTask;->setupDownloader(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 121
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->getDownloaderRunnable()Ljava/lang/Runnable;

    move-result-object v3

    .line 122
    .local v3, "runnable":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 123
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 137
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-object v2

    .line 124
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 128
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    move-result-object v1

    .line 129
    .local v1, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    sget-object v4, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->INTERNET_NEEDED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->setProgress(F)V

    .line 131
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 132
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER_ARUTILS_ERROR:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 133
    goto :goto_0

    .line 135
    .end local v1    # "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_ERROR_UPLOADER:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->clean()V

    .line 175
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 182
    .local v0, "succeeded":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 184
    .end local v0    # "succeeded":Z
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->clean()V

    .line 185
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onPostExecute(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->createMd5Manager()Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->getARUpdaterDownloader()Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mDownloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 112
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V
    .locals 5
    .param p1, "values"    # [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    const/4 v1, 0x0

    .line 142
    aget-object v0, p1, v1

    .line 143
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/parrot/freeflight/update/task/DownloaderTask$5;->$SwitchMap$com$parrot$freeflight$update$task$DownloaderTask$ProgressResult$State:[I

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$200(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mResultPool:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResultPool;->recycle(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V

    .line 167
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    invoke-interface {v1}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onInternetNeeded()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$300(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$400(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 152
    const-string v1, "FF4.Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting download of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$500(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCurrentDownloadingVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$500(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mCompletionResult:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 162
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DownloaderTask;->mListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$600(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->access$700(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;->onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, [Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->onProgressUpdate([Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)V

    return-void
.end method
