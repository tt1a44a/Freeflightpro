.class public Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
.super Ljava/lang/Object;
.source "FlightDirectorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;,
        Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;
    }
.end annotation


# static fields
.field private static BASE_DIR:Ljava/lang/String;

.field private static final MUVEE_EXPORT_DIR:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHighlights:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreviewThumb:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private totalVideoLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "export"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->MUVEE_EXPORT_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mPreviewThumb:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mHighlights:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->setBaseDir(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->loadVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBaseDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->BASE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method private getBestOfFiles()Ljava/util/Map;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v2, "bestOfFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->MUVEE_EXPORT_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "bestOfDirectory":Ljava/io/File;
    new-instance v4, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$1;-><init>(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 275
    .local v1, "bestOfFileList":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 276
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 277
    .local v3, "inFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "inFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static isAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 81
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 86
    .local v0, "deviceAbi":Ljava/lang/String;
    :goto_0
    const-string v4, "arm64-v8a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "armeabi-v7a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 87
    .local v1, "isAbiSupported":Z
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3

    if-eqz v1, :cond_3

    :goto_2
    return v3

    .line 83
    .end local v0    # "deviceAbi":Ljava/lang/String;
    .end local v1    # "isAbiSupported":Z
    :cond_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v4, v2

    .restart local v0    # "deviceAbi":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move v1, v2

    .line 86
    goto :goto_1

    .restart local v1    # "isAbiSupported":Z
    :cond_3
    move v3, v2

    .line 87
    goto :goto_2
.end method

.method private loadVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 292
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 297
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 303
    :goto_0
    if-eqz v4, :cond_1

    .line 304
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 305
    .local v1, "originWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 307
    .local v0, "originHeight":I
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 309
    :cond_0
    if-le v1, v0, :cond_2

    .line 310
    int-to-float v5, p3

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 314
    .local v3, "scale":F
    :goto_1
    int-to-float v5, v1

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v0

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 318
    .end local v0    # "originHeight":I
    .end local v1    # "originWidth":I
    .end local v3    # "scale":F
    :cond_1
    return-object v4

    .line 294
    :catch_0
    move-exception v5

    .line 297
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 298
    :catch_1
    move-exception v5

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v5

    .line 297
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 299
    :goto_2
    throw v5

    .line 312
    .restart local v0    # "originHeight":I
    .restart local v1    # "originWidth":I
    :cond_2
    int-to-float v5, p2

    int-to-float v6, v1

    div-float v3, v5, v6

    .restart local v3    # "scale":F
    goto :goto_1

    .line 298
    .end local v0    # "originHeight":I
    .end local v1    # "originWidth":I
    .end local v3    # "scale":F
    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public static setBaseDir(Ljava/lang/String;)V
    .locals 3
    .param p0, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "parrot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->BASE_DIR:Ljava/lang/String;

    .line 378
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->BASE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "baseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 381
    :cond_0
    return-void
.end method

.method private squashHightlights()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "highlightList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mHighlights:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 216
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 218
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelExport()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->cancelExport()V

    .line 162
    return-void
.end method

.method public clearHighlights()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mHighlights:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 223
    return-void
.end method

.method public getExportedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getExportFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportedFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    const-string v0, ""

    .line 389
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    .line 393
    :cond_0
    return-object v0
.end method

.method public getHighlights(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mHighlights:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSegmentsCount()I
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->squashHightlights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSoundtrackManager()Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    return-object v0
.end method

.method public getTotalVideoLength()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->totalVideoLength:I

    return v0
.end method

.method public loadBestOfGalleryMedia(IILcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;)V
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "listener"    # Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getBestOfFiles()Ljava/util/Map;

    move-result-object v13

    .line 239
    .local v13, "bestOfFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v14, "mediaInfosList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 241
    .local v6, "bestOfPath":Ljava/lang/String;
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 242
    .local v12, "bestOfFile":Ljava/io/File;
    const-string v5, ""

    .line 243
    .local v5, "mediaUuid":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "mediaName":Ljava/lang/String;
    sget-object v9, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 246
    .local v9, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    new-instance v4, Lcom/parrot/freeflight/core/academy/MediaInfos;

    const-string v7, ""

    new-instance v10, Ljava/util/Date;

    .line 247
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Lcom/parrot/freeflight/core/academy/MediaInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Z)V

    .line 248
    .local v4, "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-float v7, v10

    iput v7, v4, Lcom/parrot/freeflight/core/academy/MediaInfos;->size:F

    .line 249
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    .line 251
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v4    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v5    # "mediaUuid":Ljava/lang/String;
    .end local v6    # "bestOfPath":Ljava/lang/String;
    .end local v8    # "mediaName":Ljava/lang/String;
    .end local v9    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v12    # "bestOfFile":Ljava/io/File;
    :cond_0
    new-instance v15, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;-><init>(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;IILcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;)V

    .line 255
    .local v15, "thumbnailsTask":Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-interface {v14, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method public loadDefaultSoundtracks()V
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->init(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method public pausePreview()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->pausePreview()V

    .line 117
    return-void
.end method

.method public preparePreviewThumbs(Ljava/util/List;)Ljava/util/HashMap;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "mDataFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mPreviewThumb:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 133
    const/4 v4, 0x0

    iput v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->totalVideoLength:I

    .line 135
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mPreviewThumb:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 138
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 139
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "time":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "duration":I
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->totalVideoLength:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->totalVideoLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "duration":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "time":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mPreviewThumb:Ljava/util/HashMap;

    return-object v4
.end method

.method public resumePreview(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 3
    .param p1, "seekTimeMS"    # J
    .param p3, "view"    # Lcom/muvee/studio/view/MmsaGLSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p4}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 125
    return-void
.end method

.method public seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 5
    .param p1, "seekTimeMS"    # J
    .param p3, "surfaceView"    # Lcom/muvee/studio/view/MmsaGLSurfaceView;
    .param p4, "listener"    # Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    long-to-int v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p3, p4}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 121
    return-void
.end method

.method public setDefaultSaveParam()V
    .locals 6

    .prologue
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BestOf_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->MUVEE_EXPORT_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "outputPath":Ljava/lang/String;
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    .line 175
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-virtual {v3, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->setSavePath(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    .line 177
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mSaveParam:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-virtual {v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->setSaveParam(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;)V

    .line 178
    return-void
.end method

.method public setHighlights(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "highlights":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mHighlights:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public startExport(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->setDefaultSaveParam()V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->squashHightlights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->setHighlights(Ljava/util/ArrayList;)V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->startExport(Landroid/content/Context;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 158
    return-void
.end method

.method public startFlightAnalyser(Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V
    .locals 2
    .param p1, "param"    # Lcom/muvee/mvdronecomposer/SettingsParam;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callBack"    # Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->squashHightlights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->setHighlights(Ljava/util/ArrayList;)V

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->startMvFlightAnalyser(Landroid/content/Context;Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V

    .line 99
    return-void
.end method

.method public startPreview(Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 2
    .param p1, "view"    # Lcom/muvee/studio/view/MmsaGLSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->squashHightlights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->setHighlights(Ljava/util/ArrayList;)V

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->close()V

    .line 76
    return-void
.end method

.method public stopFlightAnalyser()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->mMVDroneComposer:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->cancel()V

    .line 104
    return-void
.end method
