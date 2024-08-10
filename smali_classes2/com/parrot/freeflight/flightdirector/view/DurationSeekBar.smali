.class public Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "DurationSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;
    }
.end annotation


# instance fields
.field private mAvailablePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDotBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDurationChangeListener:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLimitIndex:I

.field private mLimitPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLimitTextPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedTextPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTextPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mValueArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    .line 55
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    .line 60
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    .line 65
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitIndex:I

    return v0
.end method

.method static synthetic access$101(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDurationChangeListener:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0500d1

    const/4 v5, 0x2

    .line 98
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mContext:Landroid/content/Context;

    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setMax(I)V

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setSplitTrack(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703cc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDotBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mAvailablePaint:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f0500a8

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mAvailablePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFontVariant(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f050146

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 116
    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitTextPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0500a3

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextBounds:Landroid/graphics/Rect;

    .line 127
    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;-><init>(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-super/range {p0 .. p0}, Landroid/support/v7/widget/AppCompatSeekBar;->getProgress()I

    move-result v6

    .line 179
    .local v6, "progress":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 180
    .local v11, "width":I
    int-to-float v12, v11

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getMax()I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 182
    .local v7, "step":F
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v3, v12, 0x2

    .line 183
    .local v3, "halfThumbWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v4, v12, 0x2

    .line 185
    .local v4, "halfViewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 189
    .local v10, "thumbBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getThumbOffset()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v6

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    float-to-int v12, v12

    sub-int/2addr v12, v3

    sub-int v13, v4, v3

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getThumbOffset()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v6

    mul-float/2addr v15, v7

    add-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v14, v3

    add-int v15, v4, v3

    .line 188
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    array-length v12, v12

    if-ge v5, v12, :cond_4

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->getThumbOffset()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    mul-float/2addr v13, v7

    add-float v2, v12, v13

    .line 197
    .local v2, "dotLeftPosition":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mContext:Landroid/content/Context;

    const v13, 0x7f11022e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    move-object/from16 v16, v0

    aget v16, v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v8, v13, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "dotColor":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 204
    .local v9, "textColor":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitIndex:I

    if-lt v5, v12, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitPaint:Landroid/graphics/Paint;

    .line 211
    :cond_0
    :goto_1
    if-ne v5, v6, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    .line 217
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDotBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v4, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mTextBounds:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int v13, v4, v13

    sub-int/2addr v13, v3

    int-to-float v13, v13

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 206
    :cond_2
    if-le v5, v6, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mAvailablePaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 213
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitIndex:I

    if-lt v5, v12, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitTextPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 221
    .end local v1    # "dotColor":Landroid/graphics/Paint;
    .end local v2    # "dotLeftPosition":F
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "textColor":Landroid/graphics/Paint;
    :cond_4
    monitor-exit p0

    return-void

    .line 176
    .end local v3    # "halfThumbWidth":I
    .end local v4    # "halfViewHeight":I
    .end local v5    # "i":I
    .end local v6    # "progress":I
    .end local v7    # "step":F
    .end local v10    # "thumbBounds":Landroid/graphics/Rect;
    .end local v11    # "width":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public setDurationValueChangeListener(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;)V
    .locals 0
    .param p1, "durationValueChangeListener"    # Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mDurationChangeListener:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;

    .line 73
    return-void
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    array-length v1, v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitIndex:I

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 87
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    .line 88
    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mLimitIndex:I

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->invalidate()V

    .line 92
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 155
    monitor-enter p0

    const/4 v1, 0x0

    .line 158
    .local v1, "progressIndex":I
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    if-eqz v2, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_0

    .line 161
    move v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, v1}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setValueArray([I)V
    .locals 1
    .param p1, "values"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->mValueArray:[I

    .line 77
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setMax(I)V

    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->invalidate()V

    .line 79
    return-void
.end method
