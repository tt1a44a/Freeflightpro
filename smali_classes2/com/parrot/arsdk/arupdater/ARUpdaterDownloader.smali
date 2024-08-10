.class public Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
.super Ljava/lang/Object;
.source "ARUpdaterDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARUpdaterDownloader"


# instance fields
.field private downloaderRunnable:Ljava/lang/Runnable;

.field private isInit:Z

.field private nativeManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeStaticInit()V

    .line 72
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "_nativeManager"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    .line 76
    iput-wide p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;-><init>(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    .param p1, "x1"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeThreadRun(J)V

    return-void
.end method

.method private native nativeCancelThread(J)I
.end method

.method private native nativeCheckUpdatesAsync(J)I
.end method

.method private native nativeCheckUpdatesSync(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeGetBlacklistedFirmwareVersionsSync(JI[I[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation
.end method

.method private native nativeGetUpdatesInfoSync(J)[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation
.end method

.method private native nativeNew(JLjava/lang/String;JILjava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)I
.end method

.method private native nativeSetUpdatesProductList(J[I)I
.end method

.method private native nativeSetVariant(JLjava/lang/String;)I
.end method

.method private static native nativeStaticInit()V
.end method

.method private native nativeThreadRun(J)V
.end method


# virtual methods
.method public cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 167
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeCancelThread(J)I

    move-result v1

    .line 169
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 171
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    return-object v0
.end method

.method public checkUpdatesAsync()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 215
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeCheckUpdatesAsync(J)I

    move-result v1

    .line 217
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 219
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    return-object v0
.end method

.method public checkUpdatesSync()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 227
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeCheckUpdatesSync(J)I

    move-result v0

    .line 229
    .local v0, "nbPlfToBeUpdated":I
    return v0
.end method

.method public createUpdaterDownloader(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)V
    .locals 19
    .param p1, "rootFolder"    # Ljava/lang/String;
    .param p2, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "shouldDownloadPlfListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;
    .param p5, "downloadArgs"    # Ljava/lang/Object;
    .param p6, "willDownloadPlfListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;
    .param p7, "willDownloadPlfArgs"    # Ljava/lang/Object;
    .param p8, "plfDownloadProgressListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;
    .param p9, "progressArgs"    # Ljava/lang/Object;
    .param p10, "plfDownloadCompletionListener"    # Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;
    .param p11, "completionArgs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->getNativeManager()J

    move-result-wide v5

    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_Downloader_Platforms_ENUM;->ARUPDATER_DOWNLOADER_ANDROID_PLATFORM:Lcom/parrot/arsdk/arupdater/ARUPDATER_Downloader_Platforms_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_Downloader_Platforms_ENUM;->getValue()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v1 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeNew(JLjava/lang/String;JILjava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)I

    move-result v18

    .line 107
    .local v18, "result":I
    invoke-static/range {v18 .. v18}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v17

    .line 109
    .local v17, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-object/from16 v0, v17

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v1, Lcom/parrot/arsdk/arupdater/ARUpdaterException;

    invoke-direct {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;-><init>()V

    throw v1

    .line 115
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    .line 117
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 127
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    if-eqz v2, :cond_0

    .line 129
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeDelete(J)I

    move-result v1

    .line 131
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 132
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    .line 138
    .end local v1    # "result":I
    :cond_0
    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "ARUpdaterDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not disposed !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 153
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 155
    const-string v1, "ARUpdaterDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to dispose object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ... leaking memory !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getBlacklistedVersionSync(Z)Ljava/util/HashMap;
    .locals 13
    .param p1, "alsoCheckRemote"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "blacklistDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    new-array v5, v1, [I

    .line 247
    .local v5, "productArray":[I
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    new-array v6, v1, [Ljava/lang/Object;

    .line 249
    .local v6, "blacklistedVersionArray":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 251
    .local v4, "alsoCheckRemoteInt":I
    :goto_0
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeGetBlacklistedFirmwareVersionsSync(JI[I[Ljava/lang/Object;)I

    move-result v12

    .line 253
    .local v12, "result":I
    invoke-static {v12}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v9

    .line 255
    .local v9, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v9, v1, :cond_2

    .line 257
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "blacklistDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .restart local v0    # "blacklistDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 260
    aget v1, v5, v10

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v11

    .line 261
    .local v11, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    aget-object v1, v6, v10

    check-cast v1, [Ljava/lang/String;

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    .line 262
    .local v8, "blacklistedVersionsForThisProduct":[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 264
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v7, "blacklistedStringArr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v0, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v7    # "blacklistedStringArr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 249
    .end local v4    # "alsoCheckRemoteInt":I
    .end local v8    # "blacklistedVersionsForThisProduct":[Ljava/lang/String;
    .end local v9    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .end local v10    # "i":I
    .end local v11    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v12    # "result":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 272
    .restart local v4    # "alsoCheckRemoteInt":I
    .restart local v9    # "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .restart local v12    # "result":I
    :cond_2
    return-object v0
.end method

.method public getDownloaderRunnable()Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->isInit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->downloaderRunnable:Ljava/lang/Runnable;

    .line 183
    :cond_0
    return-object v0
.end method

.method public getUpdatesInfoSync()[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 237
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeGetUpdatesInfoSync(J)[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;

    move-result-object v0

    .line 239
    .local v0, "infos":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    return-object v0
.end method

.method public setUpdatesProductList([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 6
    .param p1, "productEnumArray"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 197
    array-length v4, p1

    new-array v2, v4, [I

    .line 198
    .local v2, "productArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 200
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    aput v4, v2, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-wide v4, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v4, v5, v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeSetUpdatesProductList(J[I)I

    move-result v3

    .line 204
    .local v3, "result":I
    invoke-static {v3}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 206
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    return-object v0
.end method

.method public setVariant(Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 4
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeManager:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->nativeSetVariant(JLjava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    .line 192
    .local v0, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    return-object v0
.end method
