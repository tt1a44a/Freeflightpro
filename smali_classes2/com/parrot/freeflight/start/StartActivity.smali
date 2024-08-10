.class public Lcom/parrot/freeflight/start/StartActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final APPLICATION_SETTINGS_REQUEST_CODE:I = 0x7c

.field private static final EXPANSION_DOWNLOAD_START_TIMEOUT_MILLIS:I = 0xbb8

.field private static final FIRST_REQUEST_KEY:Ljava/lang/String; = "first_request"

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x7b

.field private static final TIMEOUT_DURATION:I = 0xbb8


# instance fields
.field private mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

.field private mConnected:Z

.field private mCopying:Z

.field private mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

.field private mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

.field private final mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

.field private final mDownloadExpansionTimeoutHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDownloadingExpansions:Z

.field private mDownloadingExpansionsFailedLayout:Landroid/view/View;

.field private mDownloadingExpansionsFailedTextView:Landroid/widget/TextView;

.field private mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

.field private mDownloadingExpansionsTextView:Landroid/widget/TextView;

.field private final mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

.field private final mExpansionsDownloadListener:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExpansionsDownloaderService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mPermissionsPref:Landroid/content/SharedPreferences;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private final mTimeoutHandler:Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

.field private mTimeoutPassed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutHandler:Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

    .line 94
    new-instance v0, Lcom/parrot/freeflight/start/StartActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/start/StartActivity$1;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloadListener:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 138
    new-instance v0, Lcom/parrot/freeflight/start/StartActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/start/StartActivity$2;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadExpansionTimeoutHandler:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/parrot/freeflight/start/StartActivity$11;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/start/StartActivity$11;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 455
    new-instance v0, Lcom/parrot/freeflight/start/StartActivity$12;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/start/StartActivity$12;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/start/StartActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadExpansionTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/start/StartActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/start/StartActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/parrot/freeflight/start/StartActivity;->mConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/start/StartActivity;Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/start/StartActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/start/StartActivity;->downloadExpansionFilesIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/start/StartActivity;->startNextActivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/start/StartActivity;)Lcom/parrot/freeflight/core/CoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IStub;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/start/StartActivity;)Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/start/StartActivity;)Lcom/parrot/freeflight/core/AutoLaunchManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/start/StartActivity;->displayError()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/start/StartActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/start/StartActivity;->displayProgress(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/start/StartActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansions:Z

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/start/StartActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansions:Z

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/start/StartActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mCopying:Z

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/start/StartActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/parrot/freeflight/start/StartActivity;->mCopying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/start/StartActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutPassed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/start/StartActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/StartActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutPassed:Z

    return p1
.end method

.method private applyUiTheme()V
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 252
    .local v0, "productMainColor":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private displayError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    return-void
.end method

.method private displayProgress(JJ)V
    .locals 5
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 343
    return-void
.end method

.method private downloadExpansionFilesIfNeeded()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 260
    iget-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const/4 v8, 0x1

    const v10, 0x2fe15fa

    invoke-static {p0, v8, v10}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "expansionFileName":Ljava/lang/String;
    const-wide/32 v10, 0x968b88c

    invoke-static {p0, v2, v10, v11, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 265
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "expansionFileDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_1

    .line 269
    const-string v8, "\\."

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v9

    .line 270
    .local v4, "fileType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_1

    aget-object v3, v10, v8

    .line 271
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 270
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 278
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileType":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v5, "notifierIntent":Landroid/content/Intent;
    const/high16 v8, 0x14000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    const/high16 v8, 0x8000000

    invoke-static {p0, v9, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 283
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v7, -0x1

    .line 285
    .local v7, "startResult":I
    :try_start_0
    const-class v8, Lcom/parrot/freeflight/start/ExpansionsDownloaderService;

    invoke-static {p0, v6, v8}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 290
    :goto_1
    if-gez v7, :cond_2

    .line 294
    iput-boolean v9, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansions:Z

    .line 295
    invoke-direct {p0}, Lcom/parrot/freeflight/start/StartActivity;->displayError()V

    .line 328
    .end local v1    # "expansionFileDirectory":Ljava/io/File;
    .end local v5    # "notifierIntent":Landroid/content/Intent;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "startResult":I
    :goto_2
    return-void

    .line 286
    .restart local v1    # "expansionFileDirectory":Ljava/io/File;
    .restart local v5    # "notifierIntent":Landroid/content/Intent;
    .restart local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "startResult":I
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    if-eqz v7, :cond_3

    .line 300
    iget-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloadListener:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    const-class v9, Lcom/parrot/freeflight/start/ExpansionsDownloaderService;

    invoke-static {v8, v9}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 303
    iget-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadExpansionTimeoutHandler:Landroid/os/Handler;

    new-instance v9, Lcom/parrot/freeflight/start/StartActivity$6;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/start/StartActivity$6;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x64

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/parrot/freeflight/start/StartActivity;->displayProgress(JJ)V

    goto :goto_2

    .line 319
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v9, p0, Lcom/parrot/freeflight/start/StartActivity;->mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/core/AutoLaunchManager;->extractObbEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_2

    .line 326
    .end local v1    # "expansionFileDirectory":Ljava/io/File;
    .end local v5    # "notifierIntent":Landroid/content/Intent;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "startResult":I
    :cond_4
    iget-object v8, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v9, p0, Lcom/parrot/freeflight/start/StartActivity;->mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/core/AutoLaunchManager;->extractObbEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_2
.end method

.method private showPermissionRequestDialog(Z)V
    .locals 6
    .param p1, "denied"    # Z

    .prologue
    const v5, 0x7f1104e7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 384
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    const-string v4, "first_request"

    .line 385
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    .local v1, "neverAskAgain":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 388
    const v2, 0x7f1104ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 396
    :goto_1
    const v2, 0x7f1104d4

    new-instance v3, Lcom/parrot/freeflight/start/StartActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/start/StartActivity$8;-><init>(Lcom/parrot/freeflight/start/StartActivity;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v2, 0x7f1101e9

    new-instance v3, Lcom/parrot/freeflight/start/StartActivity$9;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/start/StartActivity$9;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 415
    return-void

    .end local v1    # "neverAskAgain":Z
    :cond_0
    move v1, v2

    .line 385
    goto :goto_0

    .line 389
    .restart local v1    # "neverAskAgain":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    const v2, 0x7f1104eb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 393
    :cond_2
    const v2, 0x7f1104f1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 394
    const v2, 0x7f1104ea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private startNextActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    const-string v3, "legal_mentions_shared_preferences"

    invoke-virtual {p0, v3, v4}, Lcom/parrot/freeflight/start/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 368
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "legal_mentions_accepted_5.2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 370
    .local v1, "legalMentionsAccepted":Z
    if-eqz v1, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/start/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/start/StartActivity;->finish()V

    .line 379
    return-void

    .line 374
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "is_from_splash_screen"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/start/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected nextScreen()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutHandler:Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 349
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f6

    aput v3, v2, v4

    const v3, 0x7f1104f8

    new-instance v4, Lcom/parrot/freeflight/start/StartActivity$7;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/start/StartActivity$7;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/start/StartActivity;->showPermissionRequestDialog(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->setContentView(I)V

    .line 155
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->startMux()V

    .line 156
    const v1, 0x7f0a044b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsTextView:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0a0383

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsProgressBar:Landroid/widget/ProgressBar;

    .line 158
    const v1, 0x7f0a044c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedTextView:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0a0270

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedLayout:Landroid/view/View;

    .line 161
    const v1, 0x7f0a0064

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/start/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 162
    .local v0, "settingsButton":Landroid/widget/Button;
    new-instance v1, Lcom/parrot/freeflight/start/StartActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/start/StartActivity$3;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 170
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v2, Lcom/parrot/freeflight/start/StartActivity$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/start/StartActivity$4;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsTextView:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedTextView:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansionsFailedLayout:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutHandler:Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    .line 182
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 183
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/start/StartActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    .line 184
    new-instance v1, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 186
    invoke-virtual {p0}, Lcom/parrot/freeflight/start/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->startSync(Landroid/content/Context;)V

    .line 188
    iput-boolean v4, p0, Lcom/parrot/freeflight/start/StartActivity;->mDownloadingExpansions:Z

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v5

    new-array v3, v4, [I

    const v4, 0x7f1104f6

    aput v4, v3, v5

    const v4, 0x7f1104f8

    new-instance v5, Lcom/parrot/freeflight/start/StartActivity$5;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/start/StartActivity$5;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 197
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mTimeoutHandler:Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/start/StartActivity$TimeoutHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mObbEmbeddedFirmwaresExtractionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->removeObbEmbeddedFirmwaresExtractionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 247
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 248
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 228
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 418
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    .line 419
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v4

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->onPermissionsGranted()V

    .line 421
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f6

    aput v3, v2, v4

    const v3, 0x7f1104f8

    new-instance v4, Lcom/parrot/freeflight/start/StartActivity$10;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/start/StartActivity$10;-><init>(Lcom/parrot/freeflight/start/StartActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_request"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/start/StartActivity;->showPermissionRequestDialog(Z)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mExpansionsDownloaderStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->start()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mCopying:Z

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->copyAssetsEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 206
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mDeviceConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->removeAssetsEmbeddedFirmwareCopyListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 234
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 235
    return-void
.end method
