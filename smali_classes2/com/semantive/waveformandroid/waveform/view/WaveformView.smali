.class public Lcom/semantive/waveformandroid/waveform/view/WaveformView;
.super Landroid/view/View;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WaveformView"


# instance fields
.field protected mBorderLinePaint:Landroid/graphics/Paint;

.field protected mDensity:F

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGridPaint:Landroid/graphics/Paint;

.field protected mInitialScaleSpan:F

.field protected mInitialized:Z

.field protected mLenByZoomLevel:[I

.field protected mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

.field protected mNumZoomLevels:I

.field protected mOffset:I

.field protected mPlaybackLinePaint:Landroid/graphics/Paint;

.field protected mPlaybackPos:I

.field protected mSampleRate:I

.field protected mSamplesPerFrame:I

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mSelectedLinePaint:Landroid/graphics/Paint;

.field protected mSelectionEnd:I

.field protected mSelectionStart:I

.field protected mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

.field protected mTimecodePaint:Landroid/graphics/Paint;

.field protected mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

.field protected mUnselectedLinePaint:Landroid/graphics/Paint;

.field protected mZoomFactorByZoomLevel:[F

.field protected mZoomLevel:I

.field protected minGain:F

.field protected nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

.field protected range:F

.field protected scaleFactor:F

.field protected segmentsMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Double;",
            "Lcom/semantive/waveformandroid/waveform/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->setFocusable(Z)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->grid_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->waveform_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->waveform_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->waveform_unselected_bkgnd_overlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->selection_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->playback_indicator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/semantive/waveformandroid/R$color;->timecode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView$1;

    invoke-direct {v1, p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$1;-><init>(Lcom/semantive/waveformandroid/waveform/view/WaveformView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 140
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;

    invoke-direct {v1, p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$2;-><init>(Lcom/semantive/waveformandroid/waveform/view/WaveformView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 161
    iput-object v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 162
    iput-object v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    .line 163
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackPos:I

    .line 165
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    .line 166
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mDensity:F

    .line 168
    iput-boolean v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialized:Z

    .line 169
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    .line 170
    iput-object v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    .line 171
    return-void

    .line 120
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data
.end method


# virtual methods
.method public canZoomIn()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mNumZoomLevels:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeDoublesForAllZoomLevels()V
    .locals 12

    .prologue
    .line 502
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    .line 505
    .local v4, "numFrames":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 506
    .local v3, "maxGain":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 507
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v8

    invoke-virtual {p0, v2, v4, v8}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getGain(II[I)F

    move-result v0

    .line 508
    .local v0, "gain":F
    cmpl-float v8, v0, v3

    if-lez v8, :cond_0

    .line 509
    move v3, v0

    .line 506
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "gain":F
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    .line 513
    float-to-double v8, v3

    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 514
    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v8, v3

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    .line 518
    :cond_2
    const/4 v3, 0x0

    .line 519
    const/16 v8, 0x100

    new-array v1, v8, [I

    .line 520
    .local v1, "gainHist":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_6

    .line 521
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v8

    invoke-virtual {p0, v2, v4, v8}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getGain(II[I)F

    move-result v8

    iget v9, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 522
    .local v6, "smoothedGain":I
    if-gez v6, :cond_3

    .line 523
    const/4 v6, 0x0

    .line 524
    :cond_3
    const/16 v8, 0xff

    if-le v6, v8, :cond_4

    .line 525
    const/16 v6, 0xff

    .line 527
    :cond_4
    int-to-float v8, v6

    cmpl-float v8, v8, v3

    if-lez v8, :cond_5

    .line 528
    int-to-float v3, v6

    .line 530
    :cond_5
    aget v8, v1, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v6

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    .end local v6    # "smoothedGain":I
    :cond_6
    const/4 v8, 0x0

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    .line 535
    const/4 v7, 0x0

    .line 536
    .local v7, "sum":I
    :goto_2
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    const/high16 v9, 0x437f0000    # 255.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    div-int/lit8 v8, v4, 0x14

    if-ge v7, v8, :cond_7

    .line 537
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    float-to-int v8, v8

    aget v8, v1, v8

    add-int/2addr v7, v8

    .line 538
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    goto :goto_2

    .line 542
    :cond_7
    const/4 v7, 0x0

    .line 543
    :goto_3
    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_8

    div-int/lit8 v8, v4, 0x64

    if-ge v7, v8, :cond_8

    .line 544
    float-to-int v8, v3

    aget v8, v1, v8

    add-int/2addr v7, v8

    .line 545
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v3, v8

    goto :goto_3

    .line 548
    :cond_8
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    sub-float v8, v3, v8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    .line 550
    const/4 v8, 0x4

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mNumZoomLevels:I

    .line 551
    const/4 v8, 0x4

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    .line 552
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    .line 554
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v4

    div-float v5, v8, v9

    .line 556
    .local v5, "ratio":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_a

    .line 557
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x0

    int-to-float v10, v4

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    aput v10, v8, v9

    .line 558
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x0

    aput v5, v8, v9

    .line 560
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x1

    aput v4, v8, v9

    .line 561
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 563
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x2

    mul-int/lit8 v10, v4, 0x2

    aput v10, v8, v9

    .line 564
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v8, v9

    .line 566
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x3

    mul-int/lit8 v10, v4, 0x3

    aput v10, v8, v9

    .line 567
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x3

    const/high16 v10, 0x40400000    # 3.0f

    aput v10, v8, v9

    .line 569
    const/4 v8, 0x0

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 593
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialized:Z

    .line 594
    return-void

    .line 571
    :cond_a
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 572
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 574
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x1

    mul-int/lit8 v10, v4, 0x2

    aput v10, v8, v9

    .line 575
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v8, v9

    .line 577
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x2

    mul-int/lit8 v10, v4, 0x3

    aput v10, v8, v9

    .line 578
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x2

    const/high16 v10, 0x40400000    # 3.0f

    aput v10, v8, v9

    .line 580
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    const/4 v9, 0x3

    mul-int/lit8 v10, v4, 0x4

    aput v10, v8, v9

    .line 581
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v9, 0x3

    const/high16 v10, 0x40800000    # 4.0f

    aput v10, v8, v9

    .line 583
    const/4 v8, 0x0

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 584
    const/4 v2, 0x0

    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_9

    .line 585
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v9, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v8, v8, v9

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    if-gtz v8, :cond_9

    .line 588
    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected drawWaveform(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "start"    # I
    .param p4, "measuredHeight"    # I
    .param p5, "ctr"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 423
    add-int v0, p2, p3

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    if-lt v0, v1, :cond_0

    add-int v0, p2, p3

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    if-lt v0, v1, :cond_1

    .line 424
    :cond_0
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v0, v0, v1

    add-int v1, p3, p2

    invoke-virtual {p0, v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getScaledHeight(FI)F

    move-result v0

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 429
    .local v6, "h":I
    sub-int v3, p5, v6

    add-int/lit8 v0, p5, 0x1

    add-int v4, v0, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 435
    add-int v0, p2, p3

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackPos:I

    if-ne v0, v1, :cond_2

    .line 436
    int-to-float v1, p2

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p4

    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 438
    :cond_2
    return-void
.end method

.method protected drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y0"    # I
    .param p4, "y1"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 325
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    move-object v0, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 326
    return-void
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    return v0
.end method

.method protected getGain(II[I)F
    .locals 5
    .param p1, "i"    # I
    .param p2, "numFrames"    # I
    .param p3, "frameGains"    # [I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 475
    add-int/lit8 v1, p2, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 476
    .local v0, "x":I
    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 477
    aget v1, p3, v0

    int-to-float v1, v1

    .line 484
    :goto_0
    return v1

    .line 479
    :cond_0
    if-nez v0, :cond_1

    .line 480
    const/4 v1, 0x0

    aget v1, p3, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x1

    aget v2, p3, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    .line 481
    :cond_1
    add-int/lit8 v1, p2, -0x1

    if-ne v0, v1, :cond_2

    .line 482
    add-int/lit8 v1, p2, -0x2

    aget v1, p3, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-int/lit8 v2, p2, -0x1

    aget v2, p3, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    .line 484
    :cond_2
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    aget v2, p3, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method protected getHeight(II[IFFF)F
    .locals 6
    .param p1, "i"    # I
    .param p2, "numFrames"    # I
    .param p3, "frameGains"    # [I
    .param p4, "scaleFactor"    # F
    .param p5, "minGain"    # F
    .param p6, "range"    # F

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getGain(II[I)F

    move-result v1

    mul-float/2addr v1, p4

    sub-float/2addr v1, p5

    div-float v0, v1, p6

    .line 491
    .local v0, "value":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 493
    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 494
    const/high16 v0, 0x3f800000    # 1.0f

    .line 495
    :cond_1
    return v0
.end method

.method protected getNormalHeight(I)F
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    return v0
.end method

.method protected getScaledHeight(FI)F
    .locals 4
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 626
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p0, p2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getNormalHeight(I)F

    move-result v0

    .line 631
    :goto_0
    return v0

    .line 628
    :cond_0
    float-to-double v0, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getZoomedOutHeight(FI)F

    move-result v0

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getZoomedInHeight(FI)F

    move-result v0

    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    return v0
.end method

.method protected getZoomedInHeight(FI)F
    .locals 11
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 597
    float-to-int v7, p1

    .line 598
    .local v7, "f":I
    if-nez p2, :cond_0

    .line 599
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v0

    mul-float/2addr v0, v10

    .line 611
    :goto_0
    return v0

    .line 601
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v0

    goto :goto_0

    .line 604
    :cond_1
    rem-int v0, p2, v7

    if-nez v0, :cond_2

    .line 605
    div-int v0, p2, v7

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v8

    .line 606
    .local v8, "x1":F
    div-int v1, p2, v7

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v9

    .line 607
    .local v9, "x2":F
    add-float v0, v8, v9

    mul-float/2addr v0, v10

    goto :goto_0

    .line 608
    .end local v8    # "x1":F
    .end local v9    # "x2":F
    :cond_2
    add-int/lit8 v0, p2, -0x1

    rem-int/2addr v0, v7

    if-nez v0, :cond_3

    .line 609
    add-int/lit8 v0, p2, -0x1

    div-int v1, v0, v7

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v0

    goto :goto_0

    .line 611
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getZoomedOutHeight(FI)F
    .locals 11
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    .line 615
    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int v1, v0

    .line 616
    .local v1, "f":I
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v9

    .line 617
    .local v9, "x1":F
    add-int/lit8 v3, v1, 0x1

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->scaleFactor:F

    iget v7, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->minGain:F

    iget v8, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->range:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getHeight(II[IFFF)F

    move-result v10

    .line 618
    .local v10, "x2":F
    const/high16 v0, 0x3f000000    # 0.5f

    add-float v2, v9, v10

    mul-float/2addr v0, v2

    return v0
.end method

.method public hasSoundFile()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mInitialized:Z

    return v0
.end method

.method public maxPos()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public millisecsToPixels(I)I
    .locals 8
    .param p1, "msecs"    # I

    .prologue
    .line 274
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    float-to-double v0, v2

    .line 275
    .local v0, "z":D
    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 330
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v22

    .line 335
    .local v22, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredHeight()I

    move-result v21

    .line 336
    .local v21, "measuredHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    move/from16 v27, v0

    .line 337
    .local v27, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    sub-int v33, v2, v27

    .line 338
    .local v33, "width":I
    div-int/lit8 v11, v21, 0x2

    .line 340
    .local v11, "ctr":I
    move/from16 v0, v33

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 341
    move/from16 v33, v22

    .line 343
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v24

    .line 344
    .local v24, "onePixelInSecs":D
    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v2, v24, v2

    if-lez v2, :cond_3

    const/16 v26, 0x1

    .line 345
    .local v26, "onlyEveryFiveSecs":Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    int-to-double v2, v2

    mul-double v14, v2, v24

    .line 346
    .local v14, "fractionalSecs":D
    double-to-int v0, v14

    move/from16 v16, v0

    .line 348
    .local v16, "integerSecs":I
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 350
    .local v28, "timecodeIntervalSecs":D
    const/4 v12, 0x1

    .line 351
    .local v12, "factor":I
    :goto_2
    div-double v2, v28, v24

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4

    .line 352
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    int-to-double v6, v12

    mul-double v28, v2, v6

    .line 353
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 344
    .end local v12    # "factor":I
    .end local v14    # "fractionalSecs":D
    .end local v16    # "integerSecs":I
    .end local v26    # "onlyEveryFiveSecs":Z
    .end local v28    # "timecodeIntervalSecs":D
    :cond_3
    const/16 v26, 0x0

    goto :goto_1

    .line 356
    .restart local v12    # "factor":I
    .restart local v14    # "fractionalSecs":D
    .restart local v16    # "integerSecs":I
    .restart local v26    # "onlyEveryFiveSecs":Z
    .restart local v28    # "timecodeIntervalSecs":D
    :cond_4
    div-double v2, v14, v28

    double-to-int v0, v2

    move/from16 v19, v0

    .line 358
    .local v19, "integerTimecode":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v13, v4

    .line 359
    .end local v4    # "i":I
    .local v13, "i":I
    :goto_3
    move/from16 v0, v33

    if-ge v13, v0, :cond_7

    .line 360
    add-double v14, v14, v24

    .line 361
    double-to-int v0, v14

    move/from16 v18, v0

    .line 362
    .local v18, "integerSecsNew":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 363
    move/from16 v16, v18

    .line 364
    if-eqz v26, :cond_5

    rem-int/lit8 v2, v16, 0x5

    if-nez v2, :cond_6

    .line 365
    :cond_5
    add-int/lit8 v2, v13, 0x1

    int-to-float v3, v2

    const/4 v4, 0x0

    add-int/lit8 v2, v13, 0x1

    int-to-float v5, v2

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 370
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v14, v15}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->selectWaveformPaint(IID)Landroid/graphics/Paint;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v13

    move/from16 v5, v27

    move/from16 v6, v21

    move v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->drawWaveform(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 372
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    move v13, v4

    .line 373
    .end local v4    # "i":I
    .restart local v13    # "i":I
    goto :goto_3

    .line 377
    .end local v18    # "integerSecsNew":I
    :cond_7
    move/from16 v4, v33

    .end local v13    # "i":I
    .restart local v4    # "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v4, v0, :cond_8

    .line 378
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, v21

    invoke-virtual/range {v2 .. v7}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 382
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v6, v2, v3

    const/high16 v7, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v8, v2, v3

    move/from16 v0, v21

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v6, v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v8, v2, v3

    add-int/lit8 v2, v21, -0x1e

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    int-to-double v2, v2

    mul-double v14, v2, v24

    .line 393
    const/4 v4, 0x0

    .line 394
    :cond_9
    :goto_5
    move/from16 v0, v33

    if-ge v4, v0, :cond_b

    .line 395
    add-int/lit8 v4, v4, 0x1

    .line 396
    add-double v14, v14, v24

    .line 397
    double-to-int v0, v14

    move/from16 v17, v0

    .line 398
    .local v17, "integerSecs2":I
    div-double v2, v14, v28

    double-to-int v0, v2

    move/from16 v20, v0

    .line 399
    .local v20, "integerTimecodeNew":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 400
    move/from16 v19, v20

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v17, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 404
    .local v30, "timecodeMinutes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, v17, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 405
    .local v31, "timecodeSeconds":Ljava/lang/String;
    rem-int/lit8 v2, v17, 0x3c

    const/16 v3, 0xa

    if-ge v2, v3, :cond_a

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 408
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 409
    .local v32, "timecodeStr":Ljava/lang/String;
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    mul-double/2addr v2, v6

    double-to-float v0, v2

    move/from16 v23, v0

    .line 410
    .local v23, "offset":F
    int-to-float v2, v4

    sub-float v2, v2, v23

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mDensity:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 417
    .end local v17    # "integerSecs2":I
    .end local v20    # "integerTimecodeNew":I
    .end local v23    # "offset":F
    .end local v30    # "timecodeMinutes":Ljava/lang/String;
    .end local v31    # "timecodeSeconds":Ljava/lang/String;
    .end local v32    # "timecodeStr":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    if-eqz v2, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-interface {v2}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformDraw()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 175
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return v2

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformTouchStart(F)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformTouchMove(F)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    invoke-interface {v0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;->waveformTouchEnd()V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pixelsToMillisecs(I)I
    .locals 8
    .param p1, "pixels"    # I

    .prologue
    .line 279
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    float-to-double v0, v2

    .line 280
    .local v0, "z":D
    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public pixelsToSeconds(I)D
    .locals 6
    .param p1, "pixels"    # I

    .prologue
    .line 269
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    float-to-double v0, v2

    .line 270
    .local v0, "z":D
    int-to-double v2, p1

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public recomputeHeights(F)V
    .locals 2
    .param p1, "density"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mDensity:F

    .line 319
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->invalidate()V

    .line 322
    return-void
.end method

.method public secondsToFrames(D)I
    .locals 5
    .param p1, "seconds"    # D

    .prologue
    .line 260
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, p1

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public secondsToPixels(D)I
    .locals 7
    .param p1, "seconds"    # D

    .prologue
    .line 264
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomFactorByZoomLevel:[F

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    float-to-double v0, v2

    .line 265
    .local v0, "z":D
    mul-double v2, v0, p1

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method protected selectWaveformPaint(IID)Landroid/graphics/Paint;
    .locals 7
    .param p1, "i"    # I
    .param p2, "start"    # I
    .param p3, "fractionalSecs"    # D

    .prologue
    .line 442
    add-int v3, p1, p2

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    if-lt v3, v4, :cond_1

    add-int v3, p1, p2

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    if-ge v3, v4, :cond_1

    .line 443
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 448
    .local v1, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    if-nez v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 451
    .local v0, "key":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 452
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/semantive/waveformandroid/waveform/Segment;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    .line 456
    .end local v0    # "key":Ljava/lang/Double;
    :cond_0
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    if-eqz v3, :cond_3

    .line 457
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    invoke-virtual {v3}, Lcom/semantive/waveformandroid/waveform/Segment;->getStart()Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    invoke-virtual {v3}, Lcom/semantive/waveformandroid/waveform/Segment;->getStop()Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 458
    new-instance v1, Landroid/graphics/Paint;

    .end local v1    # "paint":Landroid/graphics/Paint;
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 459
    .restart local v1    # "paint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 460
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    invoke-virtual {v3}, Lcom/semantive/waveformandroid/waveform/Segment;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object v2, v1

    .line 471
    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v2, "paint":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 445
    .end local v2    # "paint":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 464
    .restart local v0    # "key":Ljava/lang/Double;
    if-eqz v0, :cond_3

    .line 465
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/semantive/waveformandroid/waveform/Segment;

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->nextSegment:Lcom/semantive/waveformandroid/waveform/Segment;

    .end local v0    # "key":Ljava/lang/Double;
    :cond_3
    move-object v2, v1

    .line 471
    .restart local v2    # "paint":Ljava/lang/Object;
    goto :goto_1
.end method

.method public setListener(Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mListener:Lcom/semantive/waveformandroid/waveform/view/WaveformView$WaveformListener;

    .line 307
    return-void
.end method

.method public setParameters(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "offset"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    .line 285
    iput p2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    .line 286
    iput p3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 287
    return-void
.end method

.method public setPlayback(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mPlaybackPos:I

    .line 303
    return-void
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/semantive/waveformandroid/waveform/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/semantive/waveformandroid/waveform/Segment;>;"
    if-eqz p1, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/semantive/waveformandroid/waveform/Segment;

    .line 312
    .local v0, "segment":Lcom/semantive/waveformandroid/waveform/Segment;
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->segmentsMap:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/Segment;->getStop()Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    .end local v0    # "segment":Lcom/semantive/waveformandroid/waveform/Segment;
    :cond_0
    return-void
.end method

.method public setSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V
    .locals 1
    .param p1, "soundFile"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 200
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSampleRate:I

    .line 201
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getSamplesPerFrame()I

    move-result v0

    iput v0, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSamplesPerFrame:I

    .line 202
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->computeDoublesForAllZoomLevels()V

    .line 203
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0
    .param p1, "zoomLevel"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 215
    return-void
.end method

.method public zoomIn()V
    .locals 5

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->canZoomIn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 224
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 225
    .local v0, "factor":F
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    .line 226
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    .line 227
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 228
    .local v1, "offsetCenter":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 229
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 230
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    if-gez v2, :cond_0

    .line 231
    const/4 v2, 0x0

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->invalidate()V

    .line 234
    .end local v0    # "factor":F
    .end local v1    # "offsetCenter":I
    :cond_1
    return-void
.end method

.method public zoomOut()V
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    .line 243
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mLenByZoomLevel:[I

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mZoomLevel:I

    aget v3, v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 244
    .local v0, "factor":F
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionStart:I

    .line 245
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mSelectionEnd:I

    .line 246
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 247
    .local v1, "offsetCenter":I
    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v1, v2

    .line 248
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 249
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    if-gez v2, :cond_0

    .line 250
    const/4 v2, 0x0

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->mOffset:I

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/view/WaveformView;->invalidate()V

    .line 253
    .end local v0    # "factor":F
    .end local v1    # "offsetCenter":I
    :cond_1
    return-void
.end method
