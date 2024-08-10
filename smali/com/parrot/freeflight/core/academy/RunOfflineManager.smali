.class public Lcom/parrot/freeflight/core/academy/RunOfflineManager;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
    }
.end annotation


# static fields
.field public static final ACADEMY_FILES_PATH:Ljava/lang/String;

.field public static final GZIP_EXTENSION:Ljava/lang/String; = ".gz"

.field public static final JSON_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final PUD_EXTENSION:Ljava/lang/String; = ".pud"

.field public static final PUD_FILES_PATH:Ljava/lang/String;

.field public static final RUN_DETAILS_FILES_PATH:Ljava/lang/String;

.field public static final RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RunOfflineManager"


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCheckTaskRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGetAllRunsRequestId:I

.field private mInternetAvailable:Z

.field private final mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

.field private mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

.field private mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRunsOfflineHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRunsOfflineThread:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStopWorkThreadRunnable:Ljava/lang/Runnable;

.field private mStopped:Z

.field private mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACADEMY/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "externalFolder":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 55
    .local v2, "preCondition":Z
    :goto_0
    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    sput-object v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    .line 62
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "academy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "runSummary/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/io/File;

    .end local v1    # "folder":Ljava/io/File;
    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v1    # "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "runDetails/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/io/File;

    .end local v1    # "folder":Ljava/io/File;
    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v1    # "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_2
    return-void

    .line 53
    .end local v1    # "folder":Ljava/io/File;
    .end local v2    # "preCondition":Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 60
    .restart local v2    # "preCondition":Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACADEMY/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mainHandle"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 105
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    .line 108
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 128
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$3;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    .line 135
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$5;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    .line 172
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mMainHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkDownload()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkDelete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkUpdateGrade()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkLocallyRemove()V

    return-void
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight/core/academy/RunOfflineManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkLocalPudFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkUpload()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkRunAddress()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/AcademyService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    return-object v0
.end method

.method private checkDelete()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/AcademyService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->start()V

    .line 285
    :cond_1
    return-void
.end method

.method private checkDownload()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/AcademyService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->start()V

    .line 258
    :cond_1
    return-void
.end method

.method private checkLocalPudFile()V
    .locals 6

    .prologue
    .line 312
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 313
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, "pudFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 315
    .local v1, "listFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    const/4 v0, 0x1

    .line 316
    .local v0, "hadPudFile":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 317
    new-instance v3, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    invoke-direct {v3, v4, v5}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;)V

    .line 318
    .local v3, "task":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    .end local v0    # "hadPudFile":Z
    .end local v1    # "listFiles":[Ljava/io/File;
    .end local v2    # "pudFolder":Ljava/io/File;
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 315
    .restart local v1    # "listFiles":[Ljava/io/File;
    .restart local v2    # "pudFolder":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLocallyRemove()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getLocallyRemoveRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getLocallyRemoveRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;->start()V

    .line 276
    :cond_1
    return-void
.end method

.method private checkRunAddress()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mWorkExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->start()V

    .line 309
    :cond_1
    return-void
.end method

.method private checkTask()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mCheckTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    :cond_0
    return-void
.end method

.method private checkUpdateGrade()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/AcademyService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->start()V

    .line 267
    :cond_1
    return-void
.end method

.method private checkUpload()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getJobCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 289
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 291
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunCollection;->getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mJobExecutor:Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->start()V

    .line 300
    .end local v0    # "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    :cond_1
    :goto_0
    return-void

    .line 297
    .restart local v0    # "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    :cond_2
    const-string v1, "RunOfflineManager"

    const-string v2, "NO user saved..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyAllUserTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 375
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 380
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;->stop()V

    .line 385
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mLocallyRemoveRunJob:Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 390
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 395
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    .line 400
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 402
    :cond_5
    return-void
.end method

.method private isAcademyConnected()Z
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method private stopCheckServer()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelRequest(I)V

    .line 247
    const-string v0, "RunOfflineManager"

    const-string/jumbo v1, "stop check server..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAcademyServer()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->isAcademyConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 217
    .local v0, "requestDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    new-instance v2, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetRuns(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    .line 240
    const-string v1, "RunOfflineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check academy server all runs, request id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mGetAllRunsRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "requestDate":Ljava/util/Date;
    :cond_0
    return-void
.end method

.method public getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    return-object v0
.end method

.method public onAcademyConnected(Lcom/parrot/freeflight/core/academy/AcademyService;Ljava/lang/String;)V
    .locals 2
    .param p1, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 180
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$6;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$6;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkTask()V

    .line 191
    :cond_1
    return-void
.end method

.method public onAcademyDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 195
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 198
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 202
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 206
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    .line 210
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .line 212
    :cond_3
    return-void
.end method

.method public onNetworkChanged(Z)V
    .locals 1
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    if-nez v0, :cond_0

    .line 506
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 507
    if-eqz p1, :cond_1

    .line 508
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkTask()V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopCheckServer()V

    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDeleteRunJob:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->stop()V

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDownloadRunJob:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->stop()V

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUploadRunJob:Lcom/parrot/freeflight/core/academy/job/UploadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->stop()V

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mUpdateGradeJob:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->stop()V

    goto :goto_0
.end method

.method public registerListener(Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 477
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    .line 478
    return-void
.end method

.method public removeAllRun()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$11;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$11;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    return-void

    .line 339
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunOfflineManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 341
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    .line 342
    const-string v0, "RunOfflineManager"

    const-string v1, "create work thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPudDownload(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 6
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 481
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->isUpToDate(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->cancelTask()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 487
    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_GENERIC:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)V

    .line 490
    .local v1, "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mDetectAddressJob:Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->stop()V

    .line 492
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    const-string v3, "internal_000"

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadCompleteListener:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;-><init>(Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloaderFileCompletionListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    .end local v1    # "networkHandler":Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopped:Z

    .line 358
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->destroyAllUserTask()V

    .line 359
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->stopPudDownload()V

    .line 361
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mListener:Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    .line 362
    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mInternetAvailable:Z

    .line 365
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mStopWorkThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_0
    return-void
.end method

.method public stopPudDownload()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/PudDownloadTask;->cancelTask()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mPudDownloadTask:Lcom/parrot/freeflight/core/academy/PudDownloadTask;

    .line 502
    :cond_0
    return-void
.end method

.method public updateRunGrade(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grade"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 452
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 457
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->mRunsOfflineHandler:Landroid/os/Handler;

    new-instance v2, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/RunInformation;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
