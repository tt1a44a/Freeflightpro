.class public Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
.super Ljava/lang/Object;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    }
.end annotation


# instance fields
.field private downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgress:F

.field private product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    sget-object v0, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 326
    sget-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    .line 330
    iput p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    .line 331
    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;)[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
    .param p1, "x1"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object p1
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    return v0
.end method

.method public getState()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 0
    .param p1, "e"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 348
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 338
    iput p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    .line 339
    return-void
.end method

.method public setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 356
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    .line 357
    return-void
.end method
