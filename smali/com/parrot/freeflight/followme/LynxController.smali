.class public Lcom/parrot/freeflight/followme/LynxController;
.super Ljava/lang/Object;
.source "LynxController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;
.implements Lcom/parrot/freeflight/core/FollowMeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;,
        Lcom/parrot/freeflight/followme/LynxController$LynxStatus;,
        Lcom/parrot/freeflight/followme/LynxController$DebugLevel;
    }
.end annotation


# static fields
.field private static final DUMP_ALL:I = 0x2

.field private static final DUMP_DATA_TIMER:I = 0x1

.field private static final DUMP_PATH_FOLDER:Ljava/lang/String; = "/lynx"

.field private static final LOGCAT_FILEDATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HHmmss"

.field private static final LOGCAT_FILENAME_PREFIX:Ljava/lang/String; = "logcat_"

.field private static final LOGCAT_FILENAME_SUFFIX:Ljava/lang/String; = ".txt"

.field public static final LYNX_INIT:I = 0x0

.field public static final LYNX_RESET:I = 0x1

.field public static final LYNX_TRACKING:I = 0x2

.field private static final NO_DEBUG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LynxController"

.field private static final TENSORFLOW_DIR:Ljava/lang/String; = "lionne"

.field private static final TENSORFLOW_MD5_ASSET_NAME:Ljava/lang/String; = "lionne/tensorflow_md5"

.field private static final TENSORFLOW_MD5_FNAME:Ljava/lang/String; = "tensorflow_md5"

.field private static final TENSORFLOW_MODEL_ASSET_NAME:Ljava/lang/String; = "lionne/multibox_model.pb"

.field private static final TENSORFLOW_MODEL_FNAME:Ljava/lang/String; = "multibox_model.pb"

.field private static final TENSORFLOW_PRIORS_ASSET_NAME:Ljava/lang/String; = "lionne/TF_MultiBox_priors.txt"

.field private static final TENSORFLOW_PRIORS_FNAME:Ljava/lang/String; = "TF_MultiBox_priors.txt"


# instance fields
.field private final mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDebugLevel:I

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDumpPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mModelNNPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPriorsNNPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStarted:Z

.field private mTargetImageDetectionState:I

.field private mTargetRect:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    const-wide v2, 0x407f400000000000L    # 500.0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v1, Landroid/os/Handler;

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mUiHandler:Landroid/os/Handler;

    .line 89
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-wide v4, v2

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 93
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-wide v4, v2

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mTargetImageDetectionState:I

    .line 425
    new-instance v1, Lcom/parrot/freeflight/followme/LynxController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/LynxController$2;-><init>(Lcom/parrot/freeflight/followme/LynxController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    .line 450
    new-instance v1, Lcom/parrot/freeflight/followme/LynxController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/LynxController$3;-><init>(Lcom/parrot/freeflight/followme/LynxController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 115
    iput-object p2, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lynx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDumpPath:Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/LynxController;->manageTensorflowFiles(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDumpPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "dumpDirectory":Ljava/io/File;
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDebugLevel:I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/followme/LynxController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/followme/LynxController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mTargetImageDetectionState:I

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/followme/LynxController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/parrot/freeflight/followme/LynxController;->mTargetImageDetectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/arsdk/lynx/LynxManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    return-object v0
.end method

.method private checkVideoStreamMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getVideoStreamMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setVideoStreamMode(I)V

    .line 271
    :cond_0
    return-void
.end method

.method private copyAssetInFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cacheFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 257
    .local v2, "res":Z
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 258
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v1, p3}, Lcom/parrot/freeflight/followme/LynxController;->copyInputStreamInFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2

    .line 259
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method private copyInputStreamInFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    const/4 v5, 0x1

    .line 229
    .local v5, "res":Z
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [B

    .line 235
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_0

    .line 236
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 239
    .local v2, "io":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 240
    const/4 v5, 0x0

    .line 243
    .end local v2    # "io":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return v5

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 246
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private manageTensorflowFiles(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lionne"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, "tfDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 185
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tensorflow_md5"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v2, "tfMd5CacheFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "multibox_model.pb"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v3, "tfModelCacheFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TF_MultiBox_priors.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v4, "tfPriorsCacheFile":Ljava/io/File;
    invoke-direct {p0, p1, v2}, Lcom/parrot/freeflight/followme/LynxController;->tensorflowMd5Check(Landroid/content/Context;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/LynxController;->mModelNNPath:Ljava/lang/String;

    .line 193
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/LynxController;->mPriorsNNPath:Ljava/lang/String;

    .line 217
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 202
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 206
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v5, "lionne/multibox_model.pb"

    invoke-direct {p0, v0, v5, v3}, Lcom/parrot/freeflight/followme/LynxController;->copyAssetInFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/LynxController;->mModelNNPath:Ljava/lang/String;

    .line 211
    :cond_2
    const-string v5, "lionne/TF_MultiBox_priors.txt"

    invoke-direct {p0, v0, v5, v4}, Lcom/parrot/freeflight/followme/LynxController;->copyAssetInFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/followme/LynxController;->mPriorsNNPath:Ljava/lang/String;

    .line 216
    :cond_3
    const-string v5, "lionne/tensorflow_md5"

    invoke-direct {p0, v0, v5, v2}, Lcom/parrot/freeflight/followme/LynxController;->copyAssetInFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private restart()V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/LynxController;->stop()V

    .line 352
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/LynxController;->destroy()V

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/followme/LynxController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/followme/LynxController$1;-><init>(Lcom/parrot/freeflight/followme/LynxController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/LynxController;->start()V

    .line 362
    return-void
.end method

.method private tensorflowMd5Check(Landroid/content/Context;Ljava/io/File;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tfMd5CacheFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v8

    .line 141
    :cond_1
    const/4 v6, 0x0

    .line 142
    .local v6, "tfMd5CacheIs":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 143
    .local v3, "tfMd5AssetIs":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 144
    .local v4, "tfMd5Cache":Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "tfMd5Asset":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .local v7, "tfMd5CacheIs":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "lionne/tensorflow_md5"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 149
    new-instance v5, Ljava/lang/String;

    invoke-static {v7}, Lcom/parrot/freeflight/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local v4    # "tfMd5Cache":Ljava/lang/String;
    .local v5, "tfMd5Cache":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-static {v3}, Lcom/parrot/freeflight/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    .end local v1    # "tfMd5Asset":Ljava/lang/String;
    .local v2, "tfMd5Asset":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 156
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    :cond_2
    :goto_1
    if-eqz v7, :cond_7

    .line 164
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .end local v2    # "tfMd5Asset":Ljava/lang/String;
    .restart local v1    # "tfMd5Asset":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v4    # "tfMd5Cache":Ljava/lang/String;
    move-object v6, v7

    .line 171
    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "tfMd5Asset":Ljava/lang/String;
    .end local v4    # "tfMd5Cache":Ljava/lang/String;
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v2    # "tfMd5Asset":Ljava/lang/String;
    .restart local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-object v1, v2

    .end local v2    # "tfMd5Asset":Ljava/lang/String;
    .restart local v1    # "tfMd5Asset":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v4    # "tfMd5Cache":Ljava/lang/String;
    move-object v6, v7

    .line 167
    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_2

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    if-eqz v3, :cond_4

    .line 156
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 162
    :cond_4
    :goto_4
    if-eqz v6, :cond_3

    .line 164
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 165
    :catch_3
    move-exception v0

    .line 166
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 157
    :catch_4
    move-exception v0

    .line 158
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_5

    .line 156
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 162
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 164
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 167
    :cond_6
    :goto_7
    throw v8

    .line 157
    :catch_5
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_6

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_7

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4    # "tfMd5Cache":Ljava/lang/String;
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v4    # "tfMd5Cache":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_5

    .line 151
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "tfMd5Cache":Ljava/lang/String;
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v4    # "tfMd5Cache":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "tfMd5Asset":Ljava/lang/String;
    .end local v4    # "tfMd5Cache":Ljava/lang/String;
    .end local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v2    # "tfMd5Asset":Ljava/lang/String;
    .restart local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    :cond_7
    move-object v1, v2

    .end local v2    # "tfMd5Asset":Ljava/lang/String;
    .restart local v1    # "tfMd5Asset":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "tfMd5Cache":Ljava/lang/String;
    .restart local v4    # "tfMd5Cache":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    .restart local v6    # "tfMd5CacheIs":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/lynx/LynxManager;->onDestroy()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setVideoStreamMode(I)V

    .line 316
    :cond_0
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameDecoded([Lcom/parrot/arsdk/lynx/ARCodecsComponent;JZFFFFIILcom/parrot/controller/stream/UserMetadata;)V
    .locals 26
    .param p1, "components"    # [Lcom/parrot/arsdk/lynx/ARCodecsComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timestamp"    # J
    .param p4, "metadataAvailable"    # Z
    .param p5, "qW"    # F
    .param p6, "qX"    # F
    .param p7, "qY"    # F
    .param p8, "qZ"    # F
    .param p9, "videoWidth"    # I
    .param p10, "videoHeight"    # I
    .param p11, "userMetadata"    # Lcom/parrot/controller/stream/UserMetadata;

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->getWidth()I

    move-result v2

    move/from16 v0, p9

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->getHeight()I

    move-result v2

    move/from16 v0, p10

    if-eq v2, v0, :cond_5

    :cond_0
    const/16 v24, 0x1

    .line 387
    .local v24, "resolutionChanged":Z
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    if-eqz v24, :cond_1

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/followme/LynxController;->restart()V

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 392
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-nez v2, :cond_2

    .line 393
    new-instance v2, Lcom/parrot/arsdk/lynx/LynxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/followme/LynxController;->mDumpPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/followme/LynxController;->mModelNNPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/followme/LynxController;->mPriorsNNPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/followme/LynxController;->mDebugLevel:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getHorizontalFov()F

    move-result v9

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v2 .. v9}, Lcom/parrot/arsdk/lynx/LynxManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/followme/LynxController;->mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/lynx/LynxManager;->setLynxResultListener(Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/followme/LynxController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setVideoStreamMode(I)V

    .line 401
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mStarted:Z

    if-nez v2, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->startLynx()Z

    .line 403
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mStarted:Z

    .line 406
    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mStarted:Z

    if-eqz v2, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 408
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mDronePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .line 409
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getLatitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/followme/LynxController;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getAltitude()D

    move-result-wide v22

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 407
    invoke-virtual/range {v3 .. v23}, Lcom/parrot/arsdk/lynx/LynxManager;->onFrameDecodedReady([Lcom/parrot/arsdk/lynx/ARCodecsComponent;JFFFFIDDDDDD)V

    .line 411
    :cond_4
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    return-void

    .line 386
    .end local v24    # "resolutionChanged":Z
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 387
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 411
    .restart local v24    # "resolutionChanged":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v0, :cond_0

    .line 373
    if-nez p1, :cond_0

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mStarted:Z

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/lynx/LynxManager;->stopLynx()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 379
    :cond_0
    return-void
.end method

.method public setLynxResultListener(Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;)V
    .locals 0
    .param p1, "lynxResultListener"    # Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 422
    iput-object p1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    .line 423
    return-void
.end method

.method public setUserTouch(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 325
    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/arsdk/lynx/LynxManager;->setUserTouch(FF)V

    .line 328
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/LynxController;->checkVideoStreamMode()V

    .line 330
    :cond_0
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public smartBoxing(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "targetRect"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 334
    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/lynx/LynxManager;->smartBoxing(Landroid/graphics/RectF;)Z

    .line 337
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/LynxController;->checkVideoStreamMode()V

    .line 339
    :cond_0
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public standBy()V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController;->mLynxManager:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/lynx/LynxManager;->standByLynx()V

    .line 347
    :cond_0
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 279
    iget-object v3, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_0
    iget v2, p0, Lcom/parrot/freeflight/followme/LynxController;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 283
    :try_start_1
    new-instance v0, Landroid/text/format/DateFormat;

    invoke-direct {v0}, Landroid/text/format/DateFormat;-><init>()V

    .line 284
    .local v0, "dateFormatter":Landroid/text/format/DateFormat;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logcat -f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/followme/LynxController;->mDumpPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "logcat_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yyyy-MM-dd-HHmmss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 285
    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -s lynx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .end local v0    # "dateFormatter":Landroid/text/format/DateFormat;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 291
    return-void

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 290
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 295
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mStarted:Z

    .line 296
    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 297
    iget v1, p0, Lcom/parrot/freeflight/followme/LynxController;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "logcat -c"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 306
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
