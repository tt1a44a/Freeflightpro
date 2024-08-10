.class public Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
.super Ljava/lang/Object;
.source "ARUpdaterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARUpdaterManager"


# instance fields
.field downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

.field private isInit:Z

.field private localVersion:Ljava/lang/String;

.field private nativeManager:J

.field uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeStaticInit()V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->localVersion:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    .line 73
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    .line 81
    :cond_1
    return-void
.end method

.method public static comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeComparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static extractUnixFileFromPlf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .param p0, "plfFileName"    # Ljava/lang/String;
    .param p1, "outFolder"    # Ljava/lang/String;
    .param p2, "unixFileName"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p0, p1, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeExtractUnixFileFromPlf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeComparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDelete(J)I
.end method

.method private static native nativeExtractUnixFileFromPlf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation
.end method

.method private native nativePlfVersionIsBlacklisted(IIII)Z
.end method

.method private native nativePlfVersionIsUpToDate(JILjava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation
.end method

.method private static native nativeReadPlfVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeStaticInit()V
.end method

.method public static readPlfVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "plfPath"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeReadPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    iget-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 101
    :cond_1
    iget-wide v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeDelete(J)I

    .line 102
    iput-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    .line 106
    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "ARUpdaterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not disposed !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getARUpdaterDownloader()Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    .locals 4

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    goto :goto_0
.end method

.method public getARUpdaterUploader()Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;
    .locals 4

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;-><init>(J)V

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->uploader:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isInit:Z

    return v0
.end method

.method public isPlfVersionBlacklisted(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Z
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "version"    # I
    .param p3, "edition"    # I
    .param p4, "extension"    # I

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativePlfVersionIsBlacklisted(IIII)Z

    move-result v0

    return v0
.end method

.method public isPlfVersionUpToDate(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .locals 8
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "remoteVersion"    # Ljava/lang/String;
    .param p3, "rootFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arupdater/ARUpdaterException;
        }
    .end annotation

    .prologue
    .line 183
    iget-wide v2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativeManager:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->nativePlfVersionIsUpToDate(JILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 184
    .local v7, "upToDate":Z
    new-instance v0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    iget-object v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->localVersion:Ljava/lang/String;

    invoke-direct {v0, v7, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;-><init>(ZLjava/lang/String;)V

    .line 185
    .local v0, "toReturn":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    return-object v0
.end method
