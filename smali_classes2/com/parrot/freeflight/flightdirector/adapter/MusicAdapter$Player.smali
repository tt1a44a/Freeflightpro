.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;
.super Ljava/lang/Object;
.source "MusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Player"
.end annotation


# instance fields
.field private mEndMilliseconds:D

.field private mItemPosition:I

.field private mPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStartMilliseconds:D

.field private monitorHandler:Landroid/os/Handler;

.field private myScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)V
    .locals 1

    .prologue
    .line 394
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mItemPosition:I

    .line 405
    new-instance v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$1;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->monitorHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mEndMilliseconds:D

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->monitorHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getItemPosition()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mItemPosition:I

    return v0
.end method

.method isPlaying()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method play()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1f4

    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    iget-wide v4, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    double-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 475
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    .line 481
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->myScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->myScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player$2;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 492
    return-void
.end method

.method prepare(Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V
    .locals 6
    .param p1, "item"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    .param p2, "itemPosition"    # I

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 435
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 448
    .local v1, "totalMilliseconds":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    .line 449
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getEndTime()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mEndMilliseconds:D

    .line 450
    iget-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mEndMilliseconds:D

    int-to-double v4, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 451
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    .line 452
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setMusicStartTime(F)V

    .line 453
    iget-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1100(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mEndMilliseconds:D

    .line 457
    .end local v1    # "totalMilliseconds":I
    :cond_0
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mItemPosition:I

    .line 458
    return-void

    .line 440
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method processProgressChange(DD)V
    .locals 3
    .param p1, "startMilliseconds"    # D
    .param p3, "endMilliseconds"    # D

    .prologue
    .line 501
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    if-eqz v0, :cond_0

    .line 502
    iput-wide p3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mEndMilliseconds:D

    .line 503
    iput-wide p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    .line 504
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 506
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setCurrentSeconds(I)V

    .line 509
    :cond_0
    return-void
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 463
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->myScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->myScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 470
    :cond_1
    return-void
.end method

.method public setLayout(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;)V
    .locals 0
    .param p1, "layout"    # Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    .line 430
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 498
    :cond_0
    return-void
.end method

.method togglePlayerStatus()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    iget-wide v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mStartMilliseconds:D

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mSampleSelectorView:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1
.end method
