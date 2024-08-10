.class public Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;,
        Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;
    }
.end annotation


# static fields
.field private static final HIDE_CONTROL_DELAY:J = 0xbb8L

.field private static final STARTING_TIME_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static final TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private isPlaying:Z

.field private mLoaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPauseButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlayButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressSeekbarView:Landroid/widget/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressTimeView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUpdateListener:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field protected visibilityHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mUpdateListener:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    .line 77
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->visibilityHandler:Landroid/os/Handler;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressSeekbarView:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->pausePreview()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;F)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->updateProgress(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/studio/view/MmsaGLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mUpdateListener:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->startPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mOnDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mLoaderView:Landroid/view/View;

    return-object v0
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;-><init>()V

    .line 114
    .local v0, "fragment":Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
    return-object v0
.end method

.method private pausePreview()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->pausePreview()V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;->onPause()V

    .line 297
    :cond_0
    return-void
.end method

.method private startAnalysis()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mLoaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    .line 204
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->build()Lcom/muvee/mvdronecomposer/SettingsParam;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->startFlightAnalyser(Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V

    .line 257
    return-void
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 273
    .local v0, "progress":I
    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mUpdateListener:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->startPreview(Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 279
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    .line 280
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->showControls()V

    .line 281
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->hideControlsDelayed()V

    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;->onPlay()V

    .line 285
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    int-to-long v2, v0

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mUpdateListener:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->resumePreview(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    goto :goto_0
.end method

.method private updateProgress(F)V
    .locals 8
    .param p1, "progress"    # F

    .prologue
    .line 300
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getTargetDurationMs()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 301
    .local v1, "progressTime":I
    sget-object v3, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    int-to-long v6, v1

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "time":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 304
    new-instance v3, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;

    invoke-direct {v3, p0, v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    :cond_0
    return-void
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 191
    const v0, 0x7f11022d

    return v0
.end method

.method public hideControls()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public hideControlsDelayed()V
    .locals 2

    .prologue
    .line 321
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->hideControlsDelayed(J)V

    .line 322
    return-void
.end method

.method public hideControlsDelayed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->visibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$8;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$8;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    const v1, 0x7f0c009c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 129
    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    .line 130
    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    .line 131
    const v1, 0x7f0a0371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mLoaderView:Landroid/view/View;

    .line 132
    const v1, 0x7f0a0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressView:Landroid/view/View;

    .line 133
    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressTimeView:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0a0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressSeekbarView:Landroid/widget/SeekBar;

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$4;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressSeekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    invoke-virtual {v1, v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->stopFlightAnalyser()V

    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->pausePreview()V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mSurfaceView:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->pausePreview()V

    .line 172
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->startAnalysis()V

    goto :goto_0
.end method

.method public setOnDataProcessingListner(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;)V
    .locals 0
    .param p1, "onDataProcessingListener"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mOnDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    .line 261
    return-void
.end method

.method public setPlaybackListener(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;)V
    .locals 0
    .param p1, "playbackListener"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    .line 265
    return-void
.end method

.method public showControls()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->visibilityHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPlayButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mPauseButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mProgressView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->isPlaying:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-void

    :cond_0
    move v0, v2

    .line 344
    goto :goto_0

    :cond_1
    move v0, v1

    .line 345
    goto :goto_1

    :cond_2
    move v2, v1

    .line 346
    goto :goto_2
.end method
