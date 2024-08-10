.class public Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;
.super Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;
.source "ExportActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContinueButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExportCompletedDescription:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExportCompletedLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExportCompletedTitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShareButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private prepareExport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->prepareExport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->shareVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->updateProgresion(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->prepareExport:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->showExportCompletedView()V

    return-void
.end method

.method private exportVideo()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getExportedFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "file":Ljava/io/File;
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->prepareExport:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->prepareExportVideo()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->shareVideo()V

    goto :goto_0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private shareVideo()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getExportedFileName()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "fileName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getExportedFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    .local v1, "filePath":[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v3, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$5;-><init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 190
    return-void
.end method

.method private showExportCompletedView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    return-void
.end method

.method private updateProgresion(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressTextView:Landroid/widget/TextView;

    const v1, 0x7f11020a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x2

    .line 64
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mTitleView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mCancelButton:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0a0148

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mContinueButton:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressLayout:Landroid/view/View;

    .line 72
    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressTextView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 74
    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedLayout:Landroid/view/View;

    .line 75
    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedTitle:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0144

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedDescription:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mShareButton:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mCancelButton:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mContinueButton:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mProgressTextView:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedTitle:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mExportCompletedDescription:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mShareButton:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;-><init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$3;-><init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->exportVideo()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->setResult(I)V

    .line 114
    return-void
.end method

.method public prepareExportVideo()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$4;-><init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->startExport(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 148
    return-void
.end method
