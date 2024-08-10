.class public abstract Lcom/semantive/waveformandroid/waveform/WaveformFragment;
.super Landroid/support/v4/app/Fragment;
.source "WaveformFragment.java"

# interfaces
.implements Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;
.implements Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "WaveformFragment"


# instance fields
.field protected mCaption:Ljava/lang/String;

.field protected mDensity:F

.field protected mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

.field protected mEndPos:I

.field protected mEndText:Landroid/widget/TextView;

.field protected mEndVisible:Z

.field protected mFfwdButton:Landroid/widget/ImageButton;

.field protected mFfwdListener:Landroid/view/View$OnClickListener;

.field protected mFile:Ljava/io/File;

.field protected mFilename:Ljava/lang/String;

.field protected mFlingVelocity:I

.field protected mHandler:Landroid/os/Handler;

.field protected mInfo:Landroid/widget/TextView;

.field protected mIsPlaying:Z

.field protected mKeyDown:Z

.field protected mLastDisplayedEndPos:I

.field protected mLastDisplayedStartPos:I

.field protected mLoadingKeepGoing:Z

.field protected mLoadingLastUpdateTime:J

.field protected mMarkEndListener:Landroid/view/View$OnClickListener;

.field protected mMarkStartListener:Landroid/view/View$OnClickListener;

.field protected mMarkerBottomOffset:I

.field protected mMarkerLeftInset:I

.field protected mMarkerRightInset:I

.field protected mMarkerTopOffset:I

.field protected mMaxPos:I

.field protected mOffset:I

.field protected mOffsetGoal:I

.field protected mPlayButton:Landroid/widget/ImageButton;

.field protected mPlayEndMsec:I

.field protected mPlayListener:Landroid/view/View$OnClickListener;

.field protected mPlayStartMsec:I

.field protected mPlayStartOffset:I

.field protected mPlayer:Landroid/media/MediaPlayer;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mRewindButton:Landroid/widget/ImageButton;

.field protected mRewindListener:Landroid/view/View$OnClickListener;

.field protected mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

.field protected mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

.field protected mStartPos:I

.field protected mStartText:Landroid/widget/TextView;

.field protected mStartVisible:Z

.field protected mTextWatcher:Landroid/text/TextWatcher;

.field protected mTimerRunnable:Ljava/lang/Runnable;

.field protected mTouchDragging:Z

.field protected mTouchInitialEndPos:I

.field protected mTouchInitialOffset:I

.field protected mTouchInitialStartPos:I

.field protected mTouchStart:F

.field protected mWaveformTouchStartMsec:J

.field protected mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mCaption:Ljava/lang/String;

    .line 589
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$3;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTimerRunnable:Ljava/lang/Runnable;

    .line 760
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$4;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayListener:Landroid/view/View$OnClickListener;

    .line 766
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$5;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$5;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mRewindListener:Landroid/view/View$OnClickListener;

    .line 782
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$6;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 798
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$7;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$7;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkStartListener:Landroid/view/View$OnClickListener;

    .line 807
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$8;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkEndListener:Landroid/view/View$OnClickListener;

    .line 817
    new-instance v0, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$9;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$onCreateView$0()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$markerFocus$1()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/semantive/waveformandroid/waveform/WaveformFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$loadFromFile$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/semantive/waveformandroid/waveform/WaveformFragment;D)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$loadFromFile$3(D)Z

    move-result v0

    return v0
.end method

.method static synthetic access$lambda$4(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$updateDisplay$5()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$updateDisplay$6()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/semantive/waveformandroid/waveform/WaveformFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->lambda$onPlay$7(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private synthetic lambda$loadFromFile$2(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingKeepGoing:Z

    return-void
.end method

.method private synthetic lambda$loadFromFile$3(D)Z
    .locals 7
    .param p1, "fractionComplete"    # D

    .prologue
    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 416
    .local v0, "now":J
    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 418
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getMax()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, p1

    double-to-int v3, v4

    .line 417
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 419
    iput-wide v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingLastUpdateTime:J

    .line 421
    :cond_0
    iget-boolean v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingKeepGoing:Z

    return v2
.end method

.method private synthetic lambda$markerFocus$1()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->finishOpeningSoundFile()V

    return-void
.end method

.method private synthetic lambda$onPlay$7(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->handlePause()V

    return-void
.end method

.method private synthetic lambda$updateDisplay$5()V
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartVisible:Z

    .line 548
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 549
    return-void
.end method

.method private synthetic lambda$updateDisplay$6()V
    .locals 2

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndVisible:Z

    .line 565
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 566
    return-void
.end method


# virtual methods
.method protected enableDisableButtons()V
    .locals 3

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 610
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$string;->stop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 613
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$string;->play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected enableZoomButtons()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method protected finishOpeningSoundFile()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V

    .line 459
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->recomputeHeights(F)V

    .line 461
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->maxPos()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 462
    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedStartPos:I

    .line 463
    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedEndPos:I

    .line 465
    iput-boolean v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 467
    iput v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 468
    iput v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 469
    iput v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 470
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->resetPositions()V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFiletype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 473
    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 474
    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getAvgBitrateKbps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kbps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 475
    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$string;->time_seconds:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mCaption:Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 478
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 479
    return-void
.end method

.method protected formatDecimal(D)Ljava/lang/String;
    .locals 7
    .param p1, "x"    # D

    .prologue
    const/16 v6, 0xa

    .line 672
    double-to-int v1, p1

    .line 673
    .local v1, "xWhole":I
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    int-to-double v4, v1

    sub-double v4, p1, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 675
    .local v0, "xFrac":I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 676
    add-int/lit8 v1, v1, 0x1

    .line 677
    add-int/lit8 v0, v0, -0x64

    .line 678
    if-ge v0, v6, :cond_0

    .line 679
    mul-int/lit8 v0, v0, 0xa

    .line 683
    :cond_0
    if-ge v0, v6, :cond_1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected formatTime(I)Ljava/lang/String;
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0, p1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatDecimal(D)Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected abstract getFileName()Ljava/lang/String;
.end method

.method protected getFwdListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFfwdListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getRewindListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mRewindListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/semantive/waveformandroid/waveform/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStep()I
    .locals 4

    .prologue
    .line 857
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->maxPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v2

    double-to-int v0, v2

    .line 858
    .local v0, "maxSeconds":I
    div-int/lit16 v1, v0, 0xe10

    if-lez v1, :cond_0

    .line 859
    const/16 v1, 0x258

    .line 865
    :goto_0
    return v1

    .line 860
    :cond_0
    div-int/lit16 v1, v0, 0x708

    if-lez v1, :cond_1

    .line 861
    const/16 v1, 0x12c

    goto :goto_0

    .line 862
    :cond_1
    div-int/lit16 v1, v0, 0x12c

    if-lez v1, :cond_2

    .line 863
    const/16 v1, 0x3c

    goto :goto_0

    .line 865
    :cond_2
    const/4 v1, 0x5

    goto :goto_0
.end method

.method protected declared-synchronized handlePause()V
    .locals 2

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setPlayback(I)V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    .line 695
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->enableDisableButtons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadFromFile()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 404
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFile:Ljava/io/File;

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingLastUpdateTime:J

    .line 406
    iput-boolean v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLoadingKeepGoing:Z

    .line 407
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 408
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 409
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v2, Lcom/semantive/waveformandroid/R$string;->progress_dialog_loading:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 410
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 411
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$5;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 412
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 414
    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$6;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    move-result-object v0

    .line 425
    .local v0, "listener":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;
    new-instance v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;

    invoke-direct {v1, p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)V

    .line 437
    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$1;->start()V

    .line 440
    new-instance v1, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;-><init>(Lcom/semantive/waveformandroid/waveform/WaveformFragment;Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)V

    .line 454
    invoke-virtual {v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$2;->start()V

    .line 455
    return-void
.end method

.method protected loadGui(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x1

    .line 341
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 343
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    .line 345
    const/high16 v3, 0x42380000    # 46.0f

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerLeftInset:I

    .line 346
    const/high16 v3, 0x42400000    # 48.0f

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerRightInset:I

    .line 347
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerTopOffset:I

    .line 348
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerBottomOffset:I

    .line 350
    sget v3, Lcom/semantive/waveformandroid/R$id;->starttext:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    .line 351
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    sget v3, Lcom/semantive/waveformandroid/R$id;->endtext:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    .line 353
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    sget v3, Lcom/semantive/waveformandroid/R$id;->play:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    .line 356
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    sget v3, Lcom/semantive/waveformandroid/R$id;->rew:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mRewindButton:Landroid/widget/ImageButton;

    .line 358
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mRewindButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getRewindListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    sget v3, Lcom/semantive/waveformandroid/R$id;->ffwd:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFfwdButton:Landroid/widget/ImageButton;

    .line 360
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getFwdListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget v3, Lcom/semantive/waveformandroid/R$id;->mark_start:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 363
    .local v1, "markStartButton":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    sget v3, Lcom/semantive/waveformandroid/R$id;->mark_end:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .local v0, "markEndButton":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkEndListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->enableDisableButtons()V

    .line 369
    sget v3, Lcom/semantive/waveformandroid/R$id;->waveform:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    .line 370
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v3, p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setListener(Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;)V

    .line 371
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setSegments(Ljava/util/List;)V

    .line 373
    sget v3, Lcom/semantive/waveformandroid/R$id;->info:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mInfo:Landroid/widget/TextView;

    .line 374
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mCaption:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const/4 v3, 0x0

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 377
    iput v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedStartPos:I

    .line 378
    iput v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mLastDisplayedEndPos:I

    .line 380
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->hasSoundFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v3, v4}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V

    .line 382
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mDensity:F

    invoke-virtual {v3, v4}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->recomputeHeights(F)V

    .line 383
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->maxPos()I

    move-result v3

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 386
    :cond_0
    sget v3, Lcom/semantive/waveformandroid/R$id;->startmarker:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    .line 387
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setListener(Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;)V

    .line 388
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v8}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 389
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v5}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setFocusable(Z)V

    .line 390
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v5}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setFocusableInTouchMode(Z)V

    .line 391
    iput-boolean v5, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartVisible:Z

    .line 393
    sget v3, Lcom/semantive/waveformandroid/R$id;->endmarker:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    .line 394
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, p0}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setListener(Lcom/semantive/waveformandroid/waveform/view/MarkerView$MarkerListener;)V

    .line 395
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v8}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 396
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v5}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setFocusable(Z)V

    .line 397
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v3, v5}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setFocusableInTouchMode(Z)V

    .line 398
    iput-boolean v5, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndVisible:Z

    .line 400
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 401
    return-void
.end method

.method public markerDraw()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public markerEnter(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V
    .locals 0
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    .prologue
    .line 315
    return-void
.end method

.method public markerFocus(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V
    .locals 4
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    .line 324
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalStartNoUpdate()V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$4;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalEndNoUpdate()V

    goto :goto_0
.end method

.method public markerKeyUp()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    .line 319
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 320
    return-void
.end method

.method public markerLeft(Lcom/semantive/waveformandroid/waveform/view/MarkerView;I)V
    .locals 3
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;
    .param p2, "velocity"    # I

    .prologue
    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    .line 267
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v1, :cond_0

    .line 268
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 269
    .local v0, "saveStart":I
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 270
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 271
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalStart()V

    .line 274
    .end local v0    # "saveStart":I
    :cond_0
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v1, :cond_1

    .line 275
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    if-ne v1, v2, :cond_2

    .line 276
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 277
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalEnd()V

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 286
    return-void

    .line 279
    :cond_2
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    goto :goto_0
.end method

.method public markerRight(Lcom/semantive/waveformandroid/waveform/view/MarkerView;I)V
    .locals 3
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;
    .param p2, "velocity"    # I

    .prologue
    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    .line 291
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v1, :cond_2

    .line 292
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 293
    .local v0, "saveStart":I
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 294
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le v1, v2, :cond_0

    .line 295
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 296
    :cond_0
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 297
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le v1, v2, :cond_1

    .line 298
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalStart()V

    .line 303
    .end local v0    # "saveStart":I
    :cond_2
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v1, :cond_4

    .line 304
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 305
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le v1, v2, :cond_3

    .line 306
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalEnd()V

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 312
    return-void
.end method

.method public markerTouchEnd(Lcom/semantive/waveformandroid/waveform/view/MarkerView;)V
    .locals 1
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 257
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalStart()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalEnd()V

    goto :goto_0
.end method

.method public markerTouchMove(Lcom/semantive/waveformandroid/waveform/view/MarkerView;F)V
    .locals 3
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;
    .param p2, "x"    # F

    .prologue
    .line 241
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    sub-float v0, p2, v1

    .line 243
    .local v0, "delta":F
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    if-ne p1, v1, :cond_1

    .line 244
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialStartPos:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 245
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialEndPos:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 253
    return-void

    .line 247
    :cond_1
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialEndPos:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 248
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    if-ge v1, v2, :cond_0

    .line 249
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    goto :goto_0
.end method

.method public markerTouchStart(Lcom/semantive/waveformandroid/waveform/view/MarkerView;F)V
    .locals 1
    .param p1, "marker"    # Lcom/semantive/waveformandroid/waveform/view/MarkerView;
    .param p2, "x"    # F

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 235
    iput p2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    .line 236
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialStartPos:I

    .line 237
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialEndPos:I

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setRetainInstance(Z)V

    .line 121
    iput-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    .line 122
    iput-boolean v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    .line 124
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFilename:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 126
    iput-boolean v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    .line 130
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
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

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 106
    sget v1, Lcom/semantive/waveformandroid/R$layout;->fragment_waveform:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->loadGui(Landroid/view/View;)V

    .line 108
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->loadFromFile()V

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$1;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 137
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 138
    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    .line 141
    :cond_0
    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 142
    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 144
    return-void
.end method

.method protected declared-synchronized onPlay(I)V
    .locals 12
    .param p1, "startPosition"    # I

    .prologue
    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    .line 699
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->handlePause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 704
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 710
    :try_start_2
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0, p1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartMsec:I

    .line 711
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    if-ge p1, v0, :cond_4

    .line 712
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    .line 719
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I

    .line 721
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartMsec:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->secondsToFrames(D)I

    move-result v10

    .line 722
    .local v10, "startFrame":I
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->secondsToFrames(D)I

    move-result v8

    .line 723
    .local v8, "endFrame":I
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0, v10}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSeekableFrameOffset(I)I

    move-result v9

    .line 724
    .local v9, "startByte":I
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0, v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSeekableFrameOffset(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 725
    .local v7, "endByte":I
    if-ltz v9, :cond_2

    if-ltz v7, :cond_2

    .line 727
    :try_start_3
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 728
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 729
    new-instance v11, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 730
    .local v11, "subsetInputStream":Ljava/io/FileInputStream;
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    int-to-long v2, v9

    sub-int v4, v7, v9

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 731
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 732
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartMsec:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 743
    .end local v11    # "subsetInputStream":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$9;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    .line 746
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I

    if-nez v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartMsec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 750
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 751
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->enableDisableButtons()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 752
    .end local v7    # "endByte":I
    .end local v8    # "endFrame":I
    .end local v9    # "startByte":I
    .end local v10    # "startFrame":I
    :catch_0
    move-exception v6

    .line 753
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "WaveformFragment"

    const-string v1, "Exception while playing file"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 699
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 713
    :cond_4
    :try_start_6
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    if-le p1, v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    goto/16 :goto_1

    .line 716
    :cond_5
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    invoke-virtual {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    goto/16 :goto_1

    .line 733
    .restart local v7    # "endByte":I
    .restart local v8    # "endFrame":I
    .restart local v9    # "startByte":I
    .restart local v10    # "startFrame":I
    :catch_1
    move-exception v6

    .line 734
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "WaveformFragment"

    const-string v1, "Exception trying to play file subset"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 736
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 737
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method protected resetPositions()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 619
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 620
    return-void
.end method

.method protected setOffsetGoal(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalNoUpdate(I)V

    .line 648
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 649
    return-void
.end method

.method protected setOffsetGoalEnd()V
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoal(I)V

    .line 640
    return-void
.end method

.method protected setOffsetGoalEndNoUpdate()V
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalNoUpdate(I)V

    .line 644
    return-void
.end method

.method protected setOffsetGoalNoUpdate(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 657
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le v0, v1, :cond_2

    .line 658
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 659
    :cond_2
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    if-gez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    goto :goto_0
.end method

.method protected setOffsetGoalStart()V
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoal(I)V

    .line 632
    return-void
.end method

.method protected setOffsetGoalStartNoUpdate()V
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalNoUpdate(I)V

    .line 636
    return-void
.end method

.method protected trap(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 623
    if-gez p1, :cond_1

    .line 624
    const/4 p1, 0x0

    .line 627
    .end local p1    # "pos":I
    :cond_0
    :goto_0
    return p1

    .line 625
    .restart local p1    # "pos":I
    :cond_1
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le p1, v0, :cond_0

    .line 626
    iget p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    goto :goto_0
.end method

.method protected declared-synchronized updateDisplay()V
    .locals 12

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v6, :cond_0

    .line 483
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I

    add-int v2, v6, v7

    .line 484
    .local v2, "now":I
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v6, v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->millisecsToPixels(I)I

    move-result v1

    .line 485
    .local v1, "frames":I
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v6, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setPlayback(I)V

    .line 486
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->setOffsetGoalNoUpdate(I)V

    .line 487
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    if-lt v2, v6, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->handlePause()V

    .line 492
    .end local v1    # "frames":I
    .end local v2    # "now":I
    :cond_0
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    if-nez v6, :cond_3

    .line 495
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    if-eqz v6, :cond_8

    .line 496
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    int-to-float v4, v6

    .line 498
    .local v4, "saveVel":F
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    div-int/lit8 v3, v6, 0x1e

    .line 499
    .local v3, "offsetDelta":I
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    const/16 v7, 0x50

    if-le v6, v7, :cond_6

    .line 500
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    add-int/lit8 v6, v6, -0x50

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 507
    :goto_0
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 509
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    if-le v6, v7, :cond_1

    .line 510
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 511
    const/4 v6, 0x0

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 513
    :cond_1
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    if-gez v6, :cond_2

    .line 514
    const/4 v6, 0x0

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 515
    const/4 v6, 0x0

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 517
    :cond_2
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 536
    .end local v3    # "offsetDelta":I
    .end local v4    # "saveVel":F
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget v8, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v9, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setParameters(III)V

    .line 537
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->invalidate()V

    .line 539
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/semantive/waveformandroid/R$string;->start_marker:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    invoke-virtual {p0, v8}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/semantive/waveformandroid/R$string;->end_marker:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    invoke-virtual {p0, v8}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->formatTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerLeftInset:I

    sub-int v5, v6, v7

    .line 543
    .local v5, "startX":I
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v6}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    if-ltz v6, :cond_d

    .line 544
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartVisible:Z

    if-nez v6, :cond_4

    .line 546
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$7;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 559
    :cond_4
    :goto_2
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerRightInset:I

    add-int v0, v6, v7

    .line 560
    .local v0, "endX":I
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v6}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    if-ltz v6, :cond_f

    .line 561
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndVisible:Z

    if-nez v6, :cond_5

    .line 563
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment$$Lambda$8;->lambdaFactory$(Lcom/semantive/waveformandroid/waveform/WaveformFragment;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    iget v10, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerTopOffset:I

    invoke-direct {v7, v8, v9, v5, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    iget-object v10, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    .line 586
    invoke-virtual {v10}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    invoke-virtual {v11}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMarkerBottomOffset:I

    sub-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v0, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 582
    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 501
    .end local v0    # "endX":I
    .end local v5    # "startX":I
    .restart local v3    # "offsetDelta":I
    .restart local v4    # "saveVel":F
    :cond_6
    :try_start_1
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    const/16 v7, -0x50

    if-ge v6, v7, :cond_7

    .line 502
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    add-int/lit8 v6, v6, 0x50

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 482
    .end local v3    # "offsetDelta":I
    .end local v4    # "saveVel":F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 504
    .restart local v3    # "offsetDelta":I
    .restart local v4    # "saveVel":F
    :cond_7
    const/4 v6, 0x0

    :try_start_2
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    goto/16 :goto_0

    .line 519
    .end local v3    # "offsetDelta":I
    .end local v4    # "saveVel":F
    :cond_8
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    sub-int v3, v6, v7

    .line 521
    .restart local v3    # "offsetDelta":I
    const/16 v6, 0xa

    if-le v3, v6, :cond_9

    .line 522
    div-int/lit8 v3, v3, 0xa

    .line 532
    :goto_4
    iget v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    goto/16 :goto_1

    .line 523
    :cond_9
    if-lez v3, :cond_a

    .line 524
    const/4 v3, 0x1

    goto :goto_4

    .line 525
    :cond_a
    const/16 v6, -0xa

    if-ge v3, v6, :cond_b

    .line 526
    div-int/lit8 v3, v3, 0xa

    goto :goto_4

    .line 527
    :cond_b
    if-gez v3, :cond_c

    .line 528
    const/4 v3, -0x1

    goto :goto_4

    .line 530
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 552
    .end local v3    # "offsetDelta":I
    .restart local v5    # "startX":I
    :cond_d
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartVisible:Z

    if-eqz v6, :cond_e

    .line 553
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 554
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartVisible:Z

    .line 556
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 569
    .restart local v0    # "endX":I
    :cond_f
    iget-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndVisible:Z

    if-eqz v6, :cond_10

    .line 570
    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndMarker:Lcom/semantive/waveformandroid/waveform/view/MarkerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/semantive/waveformandroid/waveform/view/MarkerView;->setImageAlpha(I)V

    .line 571
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndVisible:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public waveformDraw()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWidth:I

    .line 156
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mKeyDown:Z

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    goto :goto_0

    .line 160
    :cond_2
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    goto :goto_0
.end method

.method public waveformFling(F)V
    .locals 1
    .param p1, "vx"    # F

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 199
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 200
    neg-float v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 201
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 202
    return-void
.end method

.method public waveformTouchEnd()V
    .locals 8

    .prologue
    .line 179
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 180
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformTouchStartMsec:J

    sub-long v0, v4, v6

    .line 183
    .local v0, "elapsedMsec":J
    const-wide/16 v4, 0x12c

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 184
    iget-boolean v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mIsPlaying:Z

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToMillisecs(I)I

    move-result v2

    .line 186
    .local v2, "seekMsec":I
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartMsec:I

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayEndMsec:I

    if-ge v2, v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayer:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mPlayStartOffset:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 195
    .end local v2    # "seekMsec":I
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v2    # "seekMsec":I
    :cond_1
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->handlePause()V

    goto :goto_0

    .line 192
    .end local v2    # "seekMsec":I
    :cond_2
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->onPlay(I)V

    goto :goto_0
.end method

.method public waveformTouchMove(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 174
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->trap(I)I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 175
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 176
    return-void
.end method

.method public waveformTouchStart(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchDragging:Z

    .line 167
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchStart:F

    .line 168
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mTouchInitialOffset:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mFlingVelocity:I

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformTouchStartMsec:J

    .line 171
    return-void
.end method

.method public waveformZoomIn()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->zoomIn()V

    .line 206
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getStart()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 207
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 208
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->maxPos()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 209
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 210
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 211
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->enableZoomButtons()V

    .line 212
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 213
    return-void
.end method

.method public waveformZoomOut()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->zoomOut()V

    .line 217
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getStart()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mStartPos:I

    .line 218
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mEndPos:I

    .line 219
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->maxPos()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mMaxPos:I

    .line 220
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mWaveformView:Lcom/semantive/waveformandroid/waveform/view/WaveformView;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    .line 221
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffset:I

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->mOffsetGoal:I

    .line 222
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->enableZoomButtons()V

    .line 223
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/WaveformFragment;->updateDisplay()V

    .line 224
    return-void
.end method
