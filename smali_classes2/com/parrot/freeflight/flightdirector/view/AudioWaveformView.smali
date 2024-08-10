.class public Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;
.super Landroid/view/View;
.source "AudioWaveformView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mGridPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mGridStrokePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHeight:I

.field protected mLenByZoomLevel:[I

.field protected mMinGain:D

.field protected mRange:D

.field protected mScaleFactor:D

.field protected mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mWaveformBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I

.field protected mZoomFactorByZoomLevel:[F

.field protected mZoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->setFocusable(Z)V

    .line 48
    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 49
    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    const v1, 0x7f050129

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    iget v4, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    aget v2, v3, v4

    .line 102
    .local v2, "width":I
    iget v3, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mHeight:I

    div-int/lit8 v0, v3, 0x2

    .line 103
    .local v0, "ctr":I
    iget v3, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    if-le v2, v3, :cond_0

    .line 104
    iget v2, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    .line 107
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 108
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->drawWaveform(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 109
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mGridStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->drawWaveform(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeDoublesForAllZoomLevels()V
    .locals 18

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-eqz v14, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v14}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v5

    .line 192
    .local v5, "numFrames":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 194
    .local v6, "maxGain":D
    const/4 v2, 0x0

    .local v2, "gainHist":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v14}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v14}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getGain(II[I)D

    move-result-wide v10

    .line 196
    .local v10, "sum":D
    cmpl-double v14, v10, v6

    if-lez v14, :cond_0

    .line 197
    move-wide v6, v10

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v10    # "sum":D
    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    .line 202
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v14, v6, v14

    if-lez v14, :cond_2

    .line 203
    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v14, v6

    double-to-float v14, v14

    float-to-double v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    .line 206
    :cond_2
    const-wide/16 v6, 0x0

    .line 207
    const/16 v14, 0x100

    new-array v9, v14, [I

    .line 210
    .local v9, "var7":[I
    const/4 v12, 0x0

    .local v12, "var8":I
    :goto_1
    if-ge v12, v5, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v14}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5, v14}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getGain(II[I)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 212
    .local v8, "ratio":I
    if-gez v8, :cond_3

    .line 213
    const/4 v8, 0x0

    .line 216
    :cond_3
    const/16 v14, 0xff

    if-le v8, v14, :cond_4

    .line 217
    const/16 v8, 0xff

    .line 220
    :cond_4
    int-to-double v14, v8

    cmpl-double v14, v14, v6

    if-lez v14, :cond_5

    .line 221
    int-to-float v14, v8

    float-to-double v6, v14

    .line 224
    :cond_5
    aget v14, v9, v8

    add-int/lit8 v14, v14, 0x1

    aput v14, v9, v8

    .line 210
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 227
    .end local v8    # "ratio":I
    :cond_6
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    .line 229
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    const-wide v16, 0x406fe00000000000L    # 255.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_7

    div-int/lit8 v14, v5, 0x14

    if-ge v12, v14, :cond_7

    .line 230
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    double-to-int v14, v14

    aget v14, v9, v14

    add-int/2addr v12, v14

    .line 229
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    goto :goto_2

    .line 233
    :cond_7
    const/4 v12, 0x0

    :goto_3
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v14, v6, v14

    if-lez v14, :cond_8

    div-int/lit8 v14, v5, 0x64

    if-ge v12, v14, :cond_8

    .line 234
    double-to-int v14, v6

    aget v14, v9, v14

    add-int/2addr v12, v14

    .line 233
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v14

    goto :goto_3

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    sub-double v14, v6, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    .line 238
    const/4 v14, 0x4

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    .line 239
    const/4 v14, 0x4

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    .line 240
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    int-to-float v14, v14

    const v15, 0x3f866666    # 1.05f

    mul-float/2addr v14, v15

    int-to-float v15, v5

    div-float v13, v14, v15

    .line 241
    .local v13, "var9":F
    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v13, v14

    if-gez v14, :cond_a

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x0

    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    aput v16, v14, v15

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x0

    aput v13, v14, v15

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x1

    aput v5, v14, v15

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x2

    mul-int/lit8 v16, v5, 0x2

    aput v16, v14, v15

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    aput v16, v14, v15

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x3

    mul-int/lit8 v16, v5, 0x3

    aput v16, v14, v15

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x3

    const/high16 v16, 0x40400000    # 3.0f

    aput v16, v14, v15

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    .line 266
    .end local v2    # "gainHist":I
    .end local v5    # "numFrames":I
    .end local v6    # "maxGain":D
    .end local v9    # "var7":[I
    .end local v12    # "var8":I
    .end local v13    # "var9":F
    :cond_9
    return-void

    .line 252
    .restart local v2    # "gainHist":I
    .restart local v5    # "numFrames":I
    .restart local v6    # "maxGain":D
    .restart local v9    # "var7":[I
    .restart local v12    # "var8":I
    .restart local v13    # "var9":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x0

    aput v5, v14, v15

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x1

    mul-int/lit8 v16, v5, 0x2

    aput v16, v14, v15

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    aput v16, v14, v15

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x2

    mul-int/lit8 v16, v5, 0x3

    aput v16, v14, v15

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x2

    const/high16 v16, 0x40400000    # 3.0f

    aput v16, v14, v15

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    const/4 v15, 0x3

    mul-int/lit8 v16, v5, 0x4

    aput v16, v14, v15

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    const/4 v15, 0x3

    const/high16 v16, 0x40800000    # 4.0f

    aput v16, v14, v15

    .line 260
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    .line 262
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_4
    const/4 v14, 0x4

    if-ge v4, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mLenByZoomLevel:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    sub-int/2addr v14, v15

    if-gtz v14, :cond_9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move-object/from16 v0, p0

    iput v4, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_4
.end method

.method protected drawWaveform(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "ctr"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomFactorByZoomLevel:[F

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mZoomLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getScaledHeight(FI)F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x40100a3d70a3d70aL    # 4.01

    div-double/2addr v0, v2

    double-to-int v6, v0

    .line 116
    .local v6, "h":I
    int-to-float v1, p2

    sub-int v0, p3, v6

    int-to-float v2, v0

    add-int/lit8 v0, p2, 0x3

    int-to-float v3, v0

    add-int/lit8 v0, p3, 0x1

    add-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    return-void
.end method

.method protected getGain(II[I)D
    .locals 10
    .param p1, "i"    # I
    .param p2, "numFrames"    # I
    .param p3, "frameGains"    # [I

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 120
    add-int/lit8 v3, p2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 123
    .local v2, "x":I
    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    .line 124
    aget v3, p3, v2

    int-to-double v0, v3

    .line 133
    .local v0, "gain":D
    :goto_0
    return-wide v0

    .line 125
    .end local v0    # "gain":D
    :cond_0
    if-nez v2, :cond_1

    .line 126
    const/4 v3, 0x0

    aget v3, p3, v3

    int-to-double v4, v3

    div-double/2addr v4, v8

    const/4 v3, 0x1

    aget v3, p3, v3

    int-to-float v3, v3

    float-to-double v6, v3

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .restart local v0    # "gain":D
    goto :goto_0

    .line 127
    .end local v0    # "gain":D
    :cond_1
    add-int/lit8 v3, p2, -0x1

    if-ne v2, v3, :cond_2

    .line 128
    add-int/lit8 v3, p2, -0x2

    aget v3, p3, v3

    int-to-double v4, v3

    div-double/2addr v4, v8

    add-int/lit8 v3, p2, -0x1

    aget v3, p3, v3

    int-to-float v3, v3

    float-to-double v6, v3

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .restart local v0    # "gain":D
    goto :goto_0

    .line 130
    .end local v0    # "gain":D
    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget v3, p3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    aget v4, p3, v2

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v4, p3, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v0, v3

    .restart local v0    # "gain":D
    goto :goto_0
.end method

.method protected getHeight(II[IDDD)F
    .locals 4
    .param p1, "i"    # I
    .param p2, "numFrames"    # I
    .param p3, "frameGains"    # [I
    .param p4, "scaleFactor"    # D
    .param p6, "minGain"    # D
    .param p8, "range"    # D

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getGain(II[I)D

    move-result-wide v2

    mul-double/2addr v2, p4

    sub-double/2addr v2, p6

    div-double v0, v2, p8

    .line 138
    .local v0, "value":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    .line 142
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 143
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 146
    :cond_1
    double-to-float v2, v0

    return v2
.end method

.method protected getNormalHeight(I)F
    .locals 10
    .param p1, "i"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v2

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    iget-wide v4, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    iget-wide v6, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    iget-wide v8, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v0

    return v0
.end method

.method protected getScaledHeight(FI)F
    .locals 3
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 178
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getNormalHeight(I)F

    move-result v0

    .line 186
    .local v0, "scaleHeight":F
    :goto_0
    return v0

    .line 180
    .end local v0    # "scaleHeight":F
    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getZoomedOutHeight(FI)F

    move-result v0

    .restart local v0    # "scaleHeight":F
    goto :goto_0

    .line 183
    .end local v0    # "scaleHeight":F
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getZoomedInHeight(FI)F

    move-result v0

    .restart local v0    # "scaleHeight":F
    goto :goto_0
.end method

.method public getWaveFormImage()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, v2, v2}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->measure(II)V

    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    .local v1, "image":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, "cachedCanvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->drawWave(Landroid/graphics/Canvas;)V

    .line 79
    return-object v1
.end method

.method protected getZoomedInHeight(FI)F
    .locals 16
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    .line 150
    move/from16 v0, p1

    float-to-int v12, v0

    .line 151
    .local v12, "f":I
    if-nez p2, :cond_0

    .line 152
    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v2

    mul-float/2addr v2, v15

    .line 160
    :goto_0
    return v2

    .line 153
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 154
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v2

    goto :goto_0

    .line 155
    :cond_1
    rem-int v2, p2, v12

    if-nez v2, :cond_2

    .line 156
    div-int v2, p2, v12

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v13

    .line 157
    .local v13, "x1":F
    div-int v3, p2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v14

    .line 158
    .local v14, "x2":F
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v13, v14

    mul-float/2addr v2, v3

    goto :goto_0

    .line 160
    .end local v13    # "x1":F
    .end local v14    # "x2":F
    :cond_2
    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v2, v12

    if-nez v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    div-int v3, v2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected getZoomedOutHeight(FI)F
    .locals 16
    .param p1, "zoomLevel"    # F
    .param p2, "i"    # I

    .prologue
    .line 165
    move/from16 v0, p2

    int-to-float v2, v0

    div-float v2, v2, p1

    float-to-int v3, v2

    .line 166
    .local v3, "f":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v14

    .line 167
    .local v14, "x1":F
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    invoke-virtual {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mScaleFactor:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mMinGain:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mRange:D

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getHeight(II[IDDD)F

    move-result v15

    .line 168
    .local v15, "x2":F
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v4, v14, v15

    mul-float/2addr v2, v4

    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    if-lez v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->drawWave(Landroid/graphics/Canvas;)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mWidth:I

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mHeight:I

    .line 87
    return-void
.end method

.method public setSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V
    .locals 0
    .param p1, "soundFile"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->mSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->computeDoublesForAllZoomLevels()V

    .line 71
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->invalidate()V

    .line 72
    return-void
.end method
