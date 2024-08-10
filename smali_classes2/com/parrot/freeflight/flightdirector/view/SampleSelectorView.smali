.class public Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;
.super Landroid/view/View;
.source "SampleSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;,
        Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_CLICK_DISTANCE:I = 0x11

.field private static final MAX_CLICK_DURATION:I = 0x47e

.field private static final M_THRESHOLD:I = 0x19


# instance fields
.field private mCurrentSeconds:I

.field private mDelta:F

.field private mHeight:I

.field private mIsRectSelected:Z

.field private mIsSeekRangeMoving:Z

.field private mLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicDuration:I

.field private mOffset:F

.field private mOnPlayButtonClickListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnProgressChangeListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPlayPauseButton:[Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlayPauseButtonXPos:F

.field private mPlaybackLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlayingStatus:I

.field private mPressStartTime:J

.field private mPressedX:F

.field private mPressedY:F

.field private mSampleDuration:I

.field private mSelectionPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectionWhitePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectorWidth:I

.field private mStayedWithinClickDistance:Z

.field private mTimeLineStrokeWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    .line 39
    iput v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mTimeLineStrokeWidth:I

    .line 50
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    .line 69
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    .line 39
    iput v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mTimeLineStrokeWidth:I

    .line 50
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    .line 74
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0500a3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    const v1, 0x7f05012e

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    const v1, 0x7f050138

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mTimeLineStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 99
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mMusicDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mWidth:I

    if-lez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSampleDuration:I

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mMusicDuration:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    .line 154
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    if-lez v0, :cond_2

    .line 155
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    int-to-float v1, v1

    add-float v3, v0, v1

    .line 156
    .local v3, "rightPosition":F
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mHeight:I

    int-to-float v4, v0

    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsRectSelected:Z

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionPaint:Landroid/graphics/Paint;

    :goto_0
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mTimeLineStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mCurrentSeconds:I

    int-to-float v1, v1

    iget v4, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSampleDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mTimeLineStrokeWidth:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v5, v0, v1

    .line 160
    .local v5, "timelineX":F
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mHeight:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    .end local v5    # "timelineX":F
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButtonXPos:F

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButtonXPos:F

    iget v2, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    .end local v3    # "rightPosition":F
    :cond_2
    return-void

    .line 156
    .restart local v3    # "rightPosition":F
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectionWhitePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mWidth:I

    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mHeight:I

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v8, 0x41c80000    # 25.0f

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 171
    .local v4, "x":F
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 172
    .local v1, "rightEdgePosition":F
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mWidth:I

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSelectorWidth:I

    sub-int v0, v5, v6

    .line 174
    .local v0, "maxOffset":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return v11

    .line 176
    :pswitch_0
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    sub-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    add-float v5, v1, v8

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 177
    iput-boolean v11, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    .line 181
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    sub-float v5, v4, v5

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mDelta:F

    .line 183
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressStartTime:J

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressedX:F

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressedY:F

    .line 186
    iput-boolean v11, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mStayedWithinClickDistance:Z

    goto :goto_0

    .line 189
    :pswitch_1
    iget-boolean v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    if-eqz v5, :cond_0

    .line 190
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mDelta:F

    sub-float v5, v4, v5

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    .line 192
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    .line 193
    iput v7, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    .line 198
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnProgressChangeListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;

    if-eqz v5, :cond_3

    .line 199
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnProgressChangeListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    float-to-int v6, v6

    float-to-int v7, v1

    iget v8, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mWidth:I

    invoke-interface {v5, v6, v7, v8}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;->onProgressChange(III)V

    .line 202
    :cond_3
    iget-boolean v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mStayedWithinClickDistance:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressedX:F

    iget v7, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/flightdirector/util/DrawHelper;->distance(Landroid/content/res/Resources;FFFF)F

    move-result v5

    const/high16 v6, 0x41880000    # 17.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 203
    iput-boolean v10, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mStayedWithinClickDistance:Z

    .line 206
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->invalidate()V

    goto :goto_0

    .line 194
    :cond_5
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 195
    int-to-float v5, v0

    iput v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    goto :goto_1

    .line 210
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPressStartTime:J

    sub-long v2, v6, v8

    .line 211
    .local v2, "pressDuration":J
    const-wide/16 v6, 0x47e

    cmp-long v5, v2, v6

    if-gez v5, :cond_7

    iget-boolean v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mStayedWithinClickDistance:Z

    if-eqz v5, :cond_7

    .line 212
    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButtonXPos:F

    sub-float/2addr v5, v12

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButtonXPos:F

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayPauseButton:[Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v5, v12

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_6

    .line 213
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnPlayButtonClickListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;

    if-eqz v5, :cond_6

    .line 214
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnPlayButtonClickListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    invoke-interface {v5, v6}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;->onClick(I)V

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->callOnClick()Z

    .line 220
    :cond_7
    iput-boolean v10, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    .line 222
    .end local v2    # "pressDuration":J
    :pswitch_3
    iput-boolean v10, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsSeekRangeMoving:Z

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentSeconds(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mCurrentSeconds:I

    .line 106
    return-void
.end method

.method public setIsRectSelected(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mIsRectSelected:Z

    .line 126
    return-void
.end method

.method public setOnPlayButtonClickListener(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnPlayButtonClickListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;

    .line 134
    return-void
.end method

.method public setOnProgressChangeListener(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOnProgressChangeListener:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;

    .line 130
    return-void
.end method

.method public setPlayingStatus(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mPlayingStatus:I

    .line 116
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->invalidate()V

    .line 117
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSampleSelector(II)V
    .locals 0
    .param p1, "sampleDuration"    # I
    .param p2, "musicDuration"    # I

    .prologue
    .line 109
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mMusicDuration:I

    .line 110
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mSampleDuration:I

    .line 111
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->invalidate()V

    .line 112
    return-void
.end method

.method public setStartOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 120
    int-to-float v0, p1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->mOffset:F

    .line 121
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->invalidate()V

    .line 122
    return-void
.end method
