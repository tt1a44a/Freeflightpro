.class public Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
.super Landroid/view/View;
.source "RectangleSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;,
        Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;,
        Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;,
        Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectMode;
    }
.end annotation


# static fields
.field public static final ACCEPT:I = 0x1

.field private static final BOTTOM_KEY:Ljava/lang/String; = "BOTTOM"

.field private static final FINGER_0_INDEX:I = 0x0

.field private static final FINGER_1_INDEX:I = 0x1

.field private static final INTERVAL_OFF_LENGTH:I = 0x5

.field private static final INTERVAL_ON_LENGTH:I = 0xf

.field private static final LEFT_KEY:Ljava/lang/String; = "LEFT"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_MULTIPLE:I = 0x4

.field private static final NB_FINGERS_MOVE_CAMERA:I = 0x2

.field private static final PARENT_DATA_KEY:Ljava/lang/String; = "PARENT_DATA"

.field public static final PENDING:I = 0x2

.field private static final RIGHT_KEY:Ljava/lang/String; = "RIGHT"

.field public static final SELECTING:I = 0x0

.field private static final STROKE_WIDTH:I = 0x3

.field private static final TOP_KEY:Ljava/lang/String; = "TOP"


# instance fields
.field private final mCornerRadius:I

.field private mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDashIntervals:[F

.field private mEditZone:Z

.field private final mFillPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mForwardTouchEventView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHeight:I

.field private final mLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocked:Z

.field private final mMaxDistanceBetweenFingers:I

.field private mMovingCamera:Z

.field private final mRectangle:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReleasePoint:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScrolling:Z

.field private mSelectMode:I

.field private mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTouchEnabled:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTouchPoint:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mDashIntervals:[F

    .line 89
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectMode:I

    .line 93
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchEnabled:Z

    .line 94
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    .line 113
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0602e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCornerRadius:I

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    .line 117
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    .line 125
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    .line 126
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mRectangle:Landroid/graphics/RectF;

    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->resetSelection()V

    .line 129
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$GestureListener;-><init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 131
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMaxDistanceBetweenFingers:I

    .line 133
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    return v0
.end method

.method private detectCameraMovementRequested(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 240
    .local v1, "eventAction":I
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMovingCamera:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 243
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 244
    .local v2, "spanX":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 246
    .local v3, "spanY":I
    int-to-double v4, v2

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 247
    .local v0, "distanceBetweenFingers":I
    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMaxDistanceBetweenFingers:I

    if-ge v0, v4, :cond_1

    .line 248
    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMovingCamera:Z

    .line 253
    .end local v0    # "distanceBetweenFingers":I
    .end local v2    # "spanX":I
    .end local v3    # "spanY":I
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMovingCamera:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 251
    iput-boolean v6, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mMovingCamera:Z

    goto :goto_0
.end method

.method private showAppearAnimation(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 391
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->startAnimation(I)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->stop()V

    goto :goto_0
.end method

.method private startAnimation(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->stop()V

    .line 400
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;-><init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->start()V

    .line 402
    return-void
.end method


# virtual methods
.method public getBottomRightPoint()Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 305
    .local v0, "x":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 307
    .local v1, "y":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ge v0, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 315
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getSelectionHeight()I
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getSelectionWidth()I
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getTopLeftPoint()Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 288
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 289
    .local v0, "x":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 291
    .local v1, "y":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 299
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getTopLeftPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 155
    .local v2, "topLeft":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getBottomRightPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 157
    .local v0, "bottomRight":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mRectangle:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 159
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCornerRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCornerRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 161
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mDashIntervals:[F

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v6}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$200(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCornerRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCornerRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 167
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v3

    if-nez v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 170
    .local v1, "lineColor":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$200(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v1, v4}, Lcom/parrot/freeflight/util/AlphaColorer;->setColorAlpha(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    .end local v1    # "lineColor":I
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 189
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 190
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    const-string v2, "LEFT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "TOP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    const-string v2, "RIGHT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "BOTTOM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 192
    const-string v1, "PARENT_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 193
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 178
    .local v1, "parcelable":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PARENT_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    const-string v2, "LEFT"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v2, "TOP"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v2, "RIGHT"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v2, "BOTTOM"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    .line 149
    iput p2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 197
    iget-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchEnabled:Z

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    .line 198
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v8, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 203
    iput-boolean v6, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    .line 205
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    if-eqz v8, :cond_1

    .line 206
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    invoke-interface {v8}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;->onNewSelectionStarted()V

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 211
    iget-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mScrolling:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    if-eqz v8, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getTopLeftPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 213
    .local v4, "topLeft":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getBottomRightPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 215
    .local v1, "bottomRight":Landroid/graphics/Point;
    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 216
    .local v2, "leftRelative":F
    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 217
    .local v5, "topRelative":F
    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 218
    .local v3, "rightRelative":F
    iget v8, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 220
    .local v0, "bottomRelative":F
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    invoke-interface {v8, v2, v5, v3, v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;->onZoneSelected(FFFF)V

    .line 223
    .end local v0    # "bottomRelative":F
    .end local v1    # "bottomRight":Landroid/graphics/Point;
    .end local v2    # "leftRelative":F
    .end local v3    # "rightRelative":F
    .end local v4    # "topLeft":Landroid/graphics/Point;
    .end local v5    # "topRelative":F
    :cond_2
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mScrolling:Z

    .line 224
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    .line 225
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 228
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 229
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->detectCameraMovementRequested(Landroid/view/MotionEvent;)V

    .line 230
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mForwardTouchEventView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 231
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mForwardTouchEventView:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    :cond_4
    iget-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchEnabled:Z

    if-eqz v8, :cond_5

    :goto_0
    return v6

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public resetSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->setSelectMode(I)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    :cond_0
    return-void
.end method

.method public setForwardTouchEventView(Landroid/view/View;)V
    .locals 0
    .param p1, "forwardTouchEventView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mForwardTouchEventView:Landroid/view/View;

    .line 257
    return-void
.end method

.method public setLockedMode(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    if-eq v0, p1, :cond_0

    .line 371
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLocked:Z

    .line 372
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 374
    :cond_0
    return-void
.end method

.method public setOnSelectionListener(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;)V
    .locals 0
    .param p1, "selectionListener"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectionListener:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;

    .line 265
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 261
    return-void
.end method

.method public setSelectMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const v5, 0x7f0500fe

    const v4, 0x7f0500fd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectMode:I

    if-eq v1, p1, :cond_0

    .line 323
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mSelectMode:I

    .line 324
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->showDashAnimation(Z)V

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 339
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->showAppearAnimation(Z)V

    .line 340
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f050101

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    const v2, 0x7f050102

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 346
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void

    .line 328
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->showAppearAnimation(Z)V

    .line 329
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->showDashAnimation(Z)V

    .line 334
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedZone(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mReleasePoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 274
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 276
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 353
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mTouchEnabled:Z

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mEditZone:Z

    .line 355
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public showDashAnimation(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 380
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 381
    :cond_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->startAnimation(I)V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->mCurrentAnimator:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->stop()V

    goto :goto_0
.end method
