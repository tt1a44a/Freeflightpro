.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.super Landroid/view/ViewGroup;
.source "TimelineGroupView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;,
        Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;,
        Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;
    }
.end annotation


# static fields
.field private static final FLING_FRICTION:F = 0.009f

.field private static final MEDIA_ACTION_WEIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TimelineGroupView"


# instance fields
.field private final autoScrollRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mActionListener:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBottomMargin:F

.field private final mChildActionViewMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildPoiViews:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnParams:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividerWidth:F

.field private mDragEventX:F

.field private mDurationCoeff:F

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftmostColumn:I

.field private final mLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinColumnWidth:F

.field private final mNonMediaActionPadding:F

.field private final mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemovedActionViewsCache:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedPoiViewsCache:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;",
            ">;"
        }
    .end annotation
.end field

.field private mRightmostColumn:I

.field private mScaleFactor:F

.field private final mScroller:Landroid/widget/Scroller;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedWPIndex:I

.field private mStartDrawX:F

.field private final mTextPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTopMargin:F

.field private mTotalTime:F

.field private final mVibrator:Landroid/os/Vibrator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWayPointRadius:F

.field private mWpMaxAltitude:F

.field private mWpMinAltitude:F

.field private maxStartDrawX:F

.field private final requestLayoutRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    .line 99
    iput v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScaleFactor:F

    .line 100
    iput v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    .line 103
    iput v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mSelectedWPIndex:I

    .line 104
    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTotalTime:F

    .line 106
    iput v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    .line 107
    iput v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    .line 108
    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDragEventX:F

    .line 130
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 374
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$2;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 1032
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$3;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoScrollRunnable:Ljava/lang/Runnable;

    .line 143
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    .line 145
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-direct {v2, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    .line 146
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setWillNotDraw(Z)V

    .line 148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    const v3, 0x3c1374bc    # 0.009f

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->setFriction(F)V

    .line 151
    :cond_0
    invoke-virtual {p0, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mVibrator:Landroid/os/Vibrator;

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    .line 155
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    .line 156
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    .line 157
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedActionViewsCache:Ljava/util/Queue;

    .line 158
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedPoiViewsCache:Ljava/util/Queue;

    .line 159
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    .line 161
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06033a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    .line 162
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    .line 163
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    .line 164
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060333

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    .line 165
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    .line 168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    .line 171
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;

    invoke-direct {v3, p0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$GestureListener;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 172
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;

    invoke-direct {v3, p0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$ScaleListener;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 173
    .local v1, "scaleDetector":Landroid/view/ScaleGestureDetector;
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;-><init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->maxStartDrawX:F

    return v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionListener()Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;FF)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumnDetailOfEvent(FF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeMediaAction(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTiltAction(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeNavigationAction(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDragEventX:F

    return v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    return v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$301(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isCheckPointParamValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
    .param p1, "x1"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    return-object v0
.end method

.method private addActionForColumn(ILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "actionToAdd"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1423
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-eqz v0, :cond_0

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 1424
    sget-object v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$4;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1494
    const-string v10, "TimelineGroupView"

    const-string v11, "Unknown Action Type"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1427
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeMediaAction(I)V

    .line 1429
    move v5, p1

    .local v5, "mediaActionStartIndex":I
    move v4, p1

    .line 1430
    .local v4, "mediaActionEndIndex":I
    if-lez p1, :cond_1

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1431
    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMediaActionRange(I)Landroid/util/Pair;

    move-result-object v8

    .line 1432
    .local v8, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_3

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1434
    .end local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge p1, v10, :cond_2

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1435
    add-int/lit8 v10, p1, 0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMediaActionRange(I)Landroid/util/Pair;

    move-result-object v8

    .line 1436
    .restart local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_4

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1439
    .end local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    if-ne v5, v4, :cond_5

    .line 1440
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1442
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1443
    .local v2, "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v2, :cond_0

    .line 1444
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto :goto_0

    .line 1432
    .end local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .restart local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1436
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1447
    .end local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    if-ge v5, p1, :cond_6

    if-ne p1, v4, :cond_6

    .line 1448
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1450
    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1451
    .restart local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v2, :cond_0

    .line 1452
    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStopMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v9

    .line 1453
    .local v9, "stopAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    .line 1454
    .local v1, "curEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v1, v9}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto/16 :goto_0

    .line 1457
    .end local v1    # "curEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v9    # "stopAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_6
    if-ne v5, p1, :cond_7

    if-le v4, p1, :cond_7

    .line 1458
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1460
    add-int/lit8 v10, p1, 0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1461
    .restart local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v2, :cond_0

    .line 1462
    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v9

    .line 1463
    .restart local v9    # "stopAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    .line 1464
    .restart local v1    # "curEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v1, v9}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto/16 :goto_0

    .line 1468
    .end local v1    # "curEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v9    # "stopAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_7
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1469
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v11, p1, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTimeLineAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1470
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_3
    if-gt v3, v4, :cond_8

    .line 1471
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1470
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1474
    :cond_8
    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v7

    .line 1475
    .local v7, "prevEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStopMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 1476
    :cond_9
    add-int/lit8 v10, p1, 0x1

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v6

    .line 1477
    .local v6, "nextEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    goto/16 :goto_0

    .line 1481
    .end local v3    # "i":I
    .end local v4    # "mediaActionEndIndex":I
    .end local v5    # "mediaActionStartIndex":I
    .end local v6    # "nextEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v7    # "prevEditor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :pswitch_1
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTimeLineAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1482
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTiltAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1484
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1485
    .restart local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v2, :cond_0

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto/16 :goto_0

    .line 1491
    .end local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :pswitch_2
    const-string v10, "TimelineGroupView"

    const-string v11, "To add a navigator action, please use addNavigationAction function"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private addNavigationAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;I)V
    .locals 4
    .param p1, "navigationAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 1501
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$4;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1521
    const-string v1, "TimelineGroupView"

    const-string v2, "Can\'t find Navigator Action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1508
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v0

    .line 1509
    .local v0, "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto :goto_0

    .line 1512
    .end local v0    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 1513
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    invoke-interface {v1}, Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;->getActionStream()Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto :goto_0

    .line 1515
    :cond_3
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v0

    .line 1516
    .restart local v0    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    goto :goto_0

    .line 1502
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private autoInitColumnParam(I)V
    .locals 13
    .param p1, "viewWidth"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 253
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    if-nez v10, :cond_0

    .line 301
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 255
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 256
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 258
    :cond_1
    iput v12, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    .line 259
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getVisibleMinDis()F

    move-result v10

    iput v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "characteristics":Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionListener()Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v9

    .line 262
    .local v9, "listener":Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->getProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v1

    .line 263
    :cond_2
    if-nez v1, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v10, v11}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v1

    .line 267
    :cond_3
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    iget v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    invoke-direct {v3, v10, v1, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;-><init>(Ljava/util/Map;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;F)V

    .line 268
    .local v3, "columnListGenerator":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    invoke-virtual {v3, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->generate(Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    .line 270
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 271
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->getCurrentMinColumnWidth()F

    move-result v5

    .line 272
    .local v5, "curMinWidth":F
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->getColumnWidths()Ljava/util/List;

    move-result-object v4

    .line 273
    .local v4, "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getVisibleMinDis()F

    move-result v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_5

    .line 274
    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getVisibleMinDis()F

    move-result v11

    div-float/2addr v11, v5

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, "delta":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 277
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    .line 278
    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    sub-float v11, v10, v12

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v6, v10

    .line 280
    :cond_4
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v11

    add-float/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setEndPosition(F)V

    .line 276
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 284
    .end local v6    # "delta":F
    .end local v7    # "i":I
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 285
    .local v0, "calibrationCoeff":F
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v10

    iget v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v8, v10, v11

    .line 286
    .local v8, "lastEndXPosition":F
    int-to-float v10, p1

    cmpg-float v10, v8, v10

    if-gez v10, :cond_6

    .line 287
    int-to-float v10, p1

    div-float v0, v10, v8

    .line 290
    :cond_6
    cmpl-float v10, v0, v12

    if-eqz v10, :cond_8

    .line 291
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 292
    .local v2, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v11

    invoke-direct {p0, v11, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(FF)F

    move-result v11

    invoke-virtual {v2, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setEndPosition(F)V

    goto :goto_2

    .line 294
    .end local v2    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    :cond_7
    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    mul-float/2addr v10, v0

    iput v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    .line 295
    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    mul-float/2addr v10, v0

    iput v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    .line 299
    .end local v0    # "calibrationCoeff":F
    .end local v4    # "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "curMinWidth":F
    .end local v8    # "lastEndXPosition":F
    :cond_8
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->getTotalTime()F

    move-result v10

    iput v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTotalTime:F

    .line 300
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->notifyTotalTimeChanged()V

    goto/16 :goto_0
.end method

.method private calibrateStartDrawX()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 366
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    .line 367
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->computeMaxDrawX()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->maxStartDrawX:F

    .line 368
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->maxStartDrawX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->maxStartDrawX:F

    :goto_1
    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    .line 369
    return-void

    .line 366
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    goto :goto_0

    .line 368
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    goto :goto_1
.end method

.method private computeMaxDrawX()F
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 598
    :goto_0
    return v2

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v1

    .line 592
    .local v1, "lastPosition":F
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    add-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v0

    .line 594
    .local v0, "f":F
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 595
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    add-float/2addr v4, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScaleFactor:F

    move v2, v3

    .line 598
    goto :goto_0
.end method

.method public static computeTimeDuration(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;FFFF)F
    .locals 4
    .param p0, "latLng1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "altitude1"    # F
    .param p2, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "altitude2"    # F
    .param p4, "horizontalSpeed"    # F
    .param p5, "downwardsSpeed"    # F
    .param p6, "upwardsSpeed"    # F

    .prologue
    .line 311
    invoke-static {p0, p2}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v2

    div-float v0, v2, p4

    .line 312
    .local v0, "horizontalDuration":F
    sub-float v2, p1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, p1, p3

    if-lez v3, :cond_0

    .end local p5    # "downwardsSpeed":F
    :goto_0
    div-float v1, v2, p5

    .line 313
    .local v1, "verticalDuration":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .end local v1    # "verticalDuration":F
    .restart local p5    # "downwardsSpeed":F
    :cond_0
    move p5, p6

    .line 312
    goto :goto_0
.end method

.method private computerVisibleColumnIndex()[I
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 604
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 605
    .local v1, "showingIndex":[I
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->findFirstColumnIndex(FI)I

    move-result v2

    aput v2, v1, v3

    .line 606
    aget v2, v1, v3

    if-gez v2, :cond_1

    move v2, v3

    :goto_0
    aput v2, v1, v3

    .line 607
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aget v4, v1, v3

    invoke-direct {p0, v2, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->findFirstColumnIndex(FI)I

    move-result v2

    aput v2, v1, v5

    .line 608
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v3

    .line 609
    .local v0, "lastIndex":I
    :goto_1
    aget v2, v1, v5

    if-gez v2, :cond_3

    .end local v0    # "lastIndex":I
    :goto_2
    aput v0, v1, v5

    .line 610
    return-object v1

    .line 606
    :cond_1
    aget v2, v1, v3

    goto :goto_0

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 609
    .restart local v0    # "lastIndex":I
    :cond_3
    aget v0, v1, v5

    goto :goto_2
.end method

.method private detectPlaceHolder(Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/DragEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 1092
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumnIndexOfEvent(FF)I

    move-result v0

    .line 1094
    .local v0, "checkPointIndex":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isAddActionAllowed(ILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1097
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$402(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1098
    if-eq v0, v3, :cond_0

    .line 1099
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 1100
    .local v1, "dragAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$502(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1101
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$602(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1102
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v3

    const/16 v4, 0xb4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/AlphaColorer;->setColorAlpha(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$502(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1107
    .end local v1    # "dragAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 1109
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 1094
    goto :goto_0
.end method

.method private drawColumnView(ILandroid/graphics/Canvas;)V
    .locals 43
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v4, :cond_18

    if-ltz p1, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-gt v0, v4, :cond_18

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060339

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v6, v9

    sub-float v8, v4, v6

    .line 706
    .local v8, "drawY":F
    invoke-direct/range {p0 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v24

    .line 708
    .local v24, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-nez p1, :cond_3

    const/16 v39, 0x0

    .line 709
    .local v39, "startDrawX":F
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float v39, v4, v6

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    add-float v5, v4, v6

    .line 711
    .local v5, "endDrawX":F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float v5, v4, v6

    .line 712
    if-lez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v34, 0x1

    .line 713
    .local v34, "isPreviousWP":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06033c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v42, v0

    .line 715
    .local v42, "wayPointStroke":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 719
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 722
    :cond_0
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    if-nez v4, :cond_8

    .line 723
    :cond_1
    if-eqz v34, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    add-float v7, v39, v4

    .line 724
    .local v7, "realX":F
    :goto_3
    cmpg-float v4, v7, v5

    if-gez v4, :cond_2

    .line 725
    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v38

    .line 726
    .local v38, "previousWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v38, :cond_7

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v38 .. v38}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMaxAltitude:F

    invoke-static {v6, v9, v15}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 732
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 733
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p2

    move v9, v5

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 818
    .end local v7    # "realX":F
    .end local v38    # "previousWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-ge v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v40

    .line 821
    .local v40, "timeDuration":F
    :goto_6
    const/4 v4, 0x0

    cmpl-float v4, v40, v4

    if-ltz v4, :cond_18

    .line 824
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v40, v4

    if-eqz v4, :cond_16

    .line 825
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTimeText(F)Ljava/lang/String;

    move-result-object v26

    .line 830
    .local v26, "disTimeStr":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f06033d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 832
    const/16 v41, 0x3

    .line 833
    .local v41, "tryTime":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float v6, v5, v39

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v9, v15

    sub-float/2addr v6, v9

    cmpl-float v4, v4, v6

    if-lez v4, :cond_17

    if-ltz v41, :cond_17

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v6, v9

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 835
    add-int/lit8 v41, v41, -0x1

    goto :goto_8

    .line 708
    .end local v5    # "endDrawX":F
    .end local v26    # "disTimeStr":Ljava/lang/String;
    .end local v34    # "isPreviousWP":Z
    .end local v39    # "startDrawX":F
    .end local v40    # "timeDuration":F
    .end local v41    # "tryTime":I
    .end local v42    # "wayPointStroke":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v39

    goto/16 :goto_0

    .line 710
    .restart local v39    # "startDrawX":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v5

    goto/16 :goto_1

    .line 712
    .restart local v5    # "endDrawX":F
    :cond_5
    const/16 v34, 0x0

    goto/16 :goto_2

    .restart local v34    # "isPreviousWP":Z
    .restart local v42    # "wayPointStroke":F
    :cond_6
    move/from16 v7, v39

    .line 723
    goto/16 :goto_3

    .line 729
    .restart local v7    # "realX":F
    .restart local v38    # "previousWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 736
    .end local v7    # "realX":F
    .end local v38    # "previousWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMaxAltitude:F

    invoke-static {v4, v6, v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v21

    .line 737
    .local v21, "thisWayPointColor":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mSelectedWPIndex:I

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v6

    if-ne v4, v6, :cond_9

    const/16 v35, 0x1

    .line 739
    .local v35, "isWayPointSelected":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    if-nez v35, :cond_a

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 744
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v42, v6

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 746
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v6, v0

    div-float v29, v4, v6

    .line 747
    .local v29, "indexCircleDelta":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    const/high16 v6, 0x40200000    # 2.5f

    div-float v30, v4, v6

    .line 751
    .local v30, "indexCircleRadius":F
    add-float v4, v5, v29

    sub-float v6, v8, v29

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v4, v6, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v4, v4, v42

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060339

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 760
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 761
    .local v31, "indexText":Ljava/lang/String;
    add-float v4, v5, v29

    sub-float v6, v8, v29

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTextDrawStartPointY(FLandroid/graphics/Paint;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 767
    .end local v29    # "indexCircleDelta":F
    .end local v30    # "indexCircleRadius":F
    .end local v31    # "indexText":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v35, :cond_b

    const/4 v4, -0x1

    :goto_b
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060339

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 769
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 770
    .local v23, "altitudeText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTextDrawStartPointY(FLandroid/graphics/Paint;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 772
    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v37

    .line 773
    .local v37, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-nez v37, :cond_d

    .line 776
    if-eqz v34, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    add-float v7, v39, v4

    .line 777
    .restart local v7    # "realX":F
    :goto_c
    cmpg-float v4, v7, v5

    if-gez v4, :cond_2

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 780
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v9, v5, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p2

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 737
    .end local v7    # "realX":F
    .end local v23    # "altitudeText":Ljava/lang/String;
    .end local v35    # "isWayPointSelected":Z
    .end local v37    # "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_9
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 763
    .restart local v35    # "isWayPointSelected":Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_b
    move/from16 v4, v21

    .line 767
    goto/16 :goto_b

    .restart local v23    # "altitudeText":Ljava/lang/String;
    .restart local v37    # "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_c
    move/from16 v7, v39

    .line 776
    goto :goto_c

    .line 784
    :cond_d
    invoke-virtual/range {v37 .. v37}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMaxAltitude:F

    invoke-static {v4, v6, v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v14

    .line 785
    .local v14, "previousColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 787
    if-eqz v34, :cond_f

    sub-float v4, v5, v39

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v6, v9

    sub-float v28, v4, v6

    .line 788
    .local v28, "horizontalLineWidth":F
    :goto_d
    const/4 v4, 0x0

    cmpl-float v4, v28, v4

    if-lez v4, :cond_2

    .line 790
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMaxAltitude:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    add-float v36, v4, v6

    .line 791
    .local v36, "middle_altitude":F
    invoke-virtual/range {v37 .. v37}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    cmpl-float v4, v36, v4

    if-lez v4, :cond_10

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    cmpg-float v4, v36, v4

    if-gez v4, :cond_10

    const/16 v32, 0x1

    .line 792
    .local v32, "isMiddle1":Z
    :goto_e
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    cmpl-float v4, v36, v4

    if-lez v4, :cond_11

    invoke-virtual/range {v37 .. v37}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    cmpg-float v4, v36, v4

    if-gez v4, :cond_11

    const/16 v33, 0x1

    .line 794
    .local v33, "isMiddle2":Z
    :goto_f
    if-nez v32, :cond_e

    if-eqz v33, :cond_13

    .line 795
    :cond_e
    invoke-virtual/range {v37 .. v37}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    sub-float v4, v36, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {v37 .. v37}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v6

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v25, v4, v6

    .line 796
    .local v25, "delta_percentage":F
    if-eqz v34, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    add-float v10, v39, v4

    .line 797
    .local v10, "x0":F
    :goto_10
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    sub-float v11, v8, v4

    .line 798
    .local v11, "y0":F
    mul-float v4, v28, v25

    add-float v12, v10, v4

    .line 799
    .local v12, "x1":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    add-float v13, v8, v4

    .line 800
    .local v13, "y1":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    sget v15, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 801
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 803
    move v10, v12

    .line 804
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v12, v5, v4

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/LinearGradient;

    sget v20, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->COLOR_MIDDLE:I

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 806
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 787
    .end local v10    # "x0":F
    .end local v11    # "y0":F
    .end local v12    # "x1":F
    .end local v13    # "y1":F
    .end local v25    # "delta_percentage":F
    .end local v28    # "horizontalLineWidth":F
    .end local v32    # "isMiddle1":Z
    .end local v33    # "isMiddle2":Z
    .end local v36    # "middle_altitude":F
    :cond_f
    sub-float v4, v5, v39

    move-object/from16 v0, p0

    iget v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v28, v4, v6

    goto/16 :goto_d

    .line 791
    .restart local v28    # "horizontalLineWidth":F
    .restart local v36    # "middle_altitude":F
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_e

    .line 792
    .restart local v32    # "isMiddle1":Z
    :cond_11
    const/16 v33, 0x0

    goto/16 :goto_f

    .restart local v25    # "delta_percentage":F
    .restart local v33    # "isMiddle2":Z
    :cond_12
    move/from16 v10, v39

    .line 796
    goto :goto_10

    .line 808
    .end local v25    # "delta_percentage":F
    :cond_13
    if-eqz v34, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    add-float v10, v39, v4

    .line 809
    .restart local v10    # "x0":F
    :goto_11
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    sub-float v11, v8, v4

    .line 810
    .restart local v11    # "y0":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    sub-float v12, v5, v4

    .line 811
    .restart local v12    # "x1":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    add-float v13, v8, v4

    .line 812
    .restart local v13    # "y1":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move/from16 v15, v21

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 813
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .end local v10    # "x0":F
    .end local v11    # "y0":F
    .end local v12    # "x1":F
    .end local v13    # "y1":F
    :cond_14
    move/from16 v10, v39

    .line 808
    goto :goto_11

    .line 820
    .end local v14    # "previousColor":I
    .end local v21    # "thisWayPointColor":I
    .end local v23    # "altitudeText":Ljava/lang/String;
    .end local v28    # "horizontalLineWidth":F
    .end local v32    # "isMiddle1":Z
    .end local v33    # "isMiddle2":Z
    .end local v35    # "isWayPointSelected":Z
    .end local v36    # "middle_altitude":F
    .end local v37    # "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_15
    const/high16 v40, -0x40800000    # -1.0f

    goto/16 :goto_6

    .line 827
    .restart local v40    # "timeDuration":F
    :cond_16
    const/16 v4, 0x221e

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "disTimeStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 838
    .restart local v41    # "tryTime":I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTextDrawStartPointY(FLandroid/graphics/Paint;)F

    move-result v27

    .line 839
    .local v27, "drawYposition":F
    sub-float v4, v5, v39

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float v4, v4, v39

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 842
    .end local v5    # "endDrawX":F
    .end local v8    # "drawY":F
    .end local v24    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v26    # "disTimeStr":Ljava/lang/String;
    .end local v27    # "drawYposition":F
    .end local v34    # "isPreviousWP":Z
    .end local v39    # "startDrawX":F
    .end local v40    # "timeDuration":F
    .end local v41    # "tryTime":I
    .end local v42    # "wayPointStroke":F
    :cond_18
    return-void
.end method

.method private drawPlaceHolder(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x40e00000    # 7.0f

    .line 631
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    if-lt v0, v7, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    add-int/lit8 v7, v7, 0x1

    if-le v0, v7, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 636
    .local v5, "paint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 637
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    sub-float/2addr v0, v7

    const/high16 v7, 0x40400000    # 3.0f

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v7, v8

    sub-float/2addr v0, v7

    div-float v6, v0, v9

    .line 641
    .local v6, "mediaActionHeight":F
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 642
    .local v1, "left":F
    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v1

    .line 643
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float/2addr v1, v0

    .line 644
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    div-float/2addr v0, v10

    add-float/2addr v1, v0

    .line 646
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v0

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mMinColumnWidth:F

    add-float v3, v0, v7

    .line 647
    .local v3, "right":F
    :goto_2
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v3

    .line 648
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float/2addr v3, v0

    .line 649
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    div-float/2addr v0, v10

    sub-float/2addr v3, v0

    .line 651
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    add-float v2, v0, v7

    .local v2, "top":F
    move v4, v2

    .line 653
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_3
    move-object v0, p1

    .line 674
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 641
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v1

    goto :goto_1

    .line 646
    .restart local v1    # "left":F
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v3

    goto :goto_2

    .line 655
    .restart local v2    # "top":F
    .restart local v3    # "right":F
    .restart local v4    # "bottom":F
    :pswitch_0
    mul-float v0, v6, v9

    add-float/2addr v4, v0

    .line 656
    goto :goto_3

    .line 658
    :pswitch_1
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v1, v0

    .line 659
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v3, v0

    .line 660
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v0, v6

    add-float/2addr v2, v0

    .line 661
    mul-float v0, v6, v11

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v0, v7

    add-float/2addr v4, v0

    .line 662
    goto :goto_3

    .line 664
    :pswitch_2
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v1, v0

    .line 665
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v3, v0

    .line 666
    mul-float v0, v6, v11

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v0, v7

    add-float/2addr v2, v0

    .line 667
    mul-float v0, v6, v9

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v0, v7

    add-float/2addr v4, v0

    .line 668
    goto :goto_3

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findFirstColumnIndex(FI)I
    .locals 3
    .param p1, "dis"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 614
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-nez v1, :cond_1

    move v0, v2

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 620
    goto :goto_0
.end method

.method private getActionListener()Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    goto :goto_0
.end method

.method private getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1335
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1336
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-eqz v0, :cond_0

    .line 1337
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    .line 1339
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 4
    .param p1, "column"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1344
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    if-eqz v2, :cond_0

    .line 1345
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 1346
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :goto_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1347
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;->getActionStream()Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->from(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->from(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v0

    .line 1349
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    return-object v0

    .line 1345
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    goto :goto_0

    .line 1346
    .restart local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-object v0, v2

    goto :goto_1
.end method

.method private getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 1288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColumnDetailOfEvent(FF)Landroid/util/Pair;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    .line 1189
    const/4 v3, -0x1

    .line 1190
    .local v3, "section":I
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumnIndexOfEvent(FF)I

    move-result v1

    .line 1191
    .local v1, "columnIndex":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 1192
    const/4 v3, 0x0

    .line 1194
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 1195
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40e00000    # 7.0f

    div-float v2, v4, v5

    .line 1197
    .local v2, "mediaActionHeight":F
    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    add-float/2addr v4, v2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    mul-float v5, v2, v7

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-nez v4, :cond_0

    if-nez v1, :cond_2

    .line 1198
    :cond_0
    const/4 v3, 0x1

    .line 1203
    .end local v0    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v2    # "mediaActionHeight":F
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1199
    .restart local v0    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .restart local v2    # "mediaActionHeight":F
    :cond_2
    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    mul-float v5, v2, v7

    add-float/2addr v4, v5

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1200
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private getColumnForAction(IILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1538
    const/4 v0, -0x1

    .line 1539
    .local v0, "columnIndex":I
    invoke-static {p3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v3

    .line 1540
    .local v3, "section":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-gt p1, p2, :cond_1

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 1541
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    if-gez v0, :cond_1

    .line 1542
    packed-switch v3, :pswitch_data_0

    .line 1541
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    :pswitch_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-ne p3, v4, :cond_0

    .line 1545
    move v0, v1

    goto :goto_1

    .line 1549
    :pswitch_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-ne p3, v4, :cond_0

    .line 1550
    move v0, v1

    goto :goto_1

    .line 1554
    :pswitch_2
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-ne p3, v4, :cond_0

    .line 1555
    move v0, v1

    goto :goto_1

    .line 1562
    .end local v1    # "i":I
    :cond_1
    if-ltz v0, :cond_2

    if-nez v3, :cond_2

    .line 1564
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMediaActionRange(I)Landroid/util/Pair;

    move-result-object v2

    .line 1565
    .local v2, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1567
    .end local v2    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    return v0

    .line 1542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getColumnIndexOfEvent(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, -0x1

    .line 1165
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isCheckPointParamValid()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1176
    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1169
    goto :goto_0

    .line 1172
    :cond_3
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->findFirstColumnIndex(FI)I

    move-result v0

    .line 1173
    .local v0, "column":I
    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getMediaActionRange(I)Landroid/util/Pair;
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1300
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1301
    move v3, p1

    .local v3, "startIndex":I
    move v1, p1

    .line 1302
    .local v1, "endIndex":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1303
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 1304
    move v3, v2

    .line 1302
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1309
    :cond_0
    add-int/lit8 v2, p1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1310
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1311
    move v1, v2

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1316
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 1318
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "startIndex":I
    :goto_2
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1324
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 1330
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 1324
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1330
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getRecycledActionView()Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedActionViewsCache:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    return-object v0
.end method

.method private getRecycledPoiView()Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedPoiViewsCache:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    return-object v0
.end method

.method private getTextDrawStartPointY(FLandroid/graphics/Paint;)F
    .locals 4
    .param p1, "centerY"    # F
    .param p2, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 845
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 846
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v2, v3

    .line 847
    .local v1, "textHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    add-float/2addr v2, p1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v3

    return v2
.end method

.method private getTimeDurationDis(F)F
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 317
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDurationCoeff:F

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTimeDurationDis(FF)F

    move-result v0

    return v0
.end method

.method public static getTimeDurationDis(FF)F
    .locals 2
    .param p0, "durationCoeff"    # F
    .param p1, "duration"    # F

    .prologue
    .line 321
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 322
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Oops, time duration is negative..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    return v0
.end method

.method private getVisibleMinDis()F
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private isAddActionAllowed(ILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z
    .locals 5
    .param p1, "addCPI"    # I
    .param p2, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 1142
    const/4 v0, 0x0

    .line 1143
    .local v0, "allowed":Z
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1144
    const/4 v0, 0x1

    .line 1145
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->findNextWayPoint(I)I

    move-result v1

    .line 1146
    .local v1, "firstWayPointCPI":I
    invoke-static {p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v2

    .line 1149
    .local v2, "section":I
    if-gt p1, v1, :cond_1

    if-ne v2, v4, :cond_1

    .line 1150
    const/4 v0, 0x0

    .line 1161
    .end local v1    # "firstWayPointCPI":I
    .end local v2    # "section":I
    :cond_0
    :goto_0
    return v0

    .line 1153
    .restart local v1    # "firstWayPointCPI":I
    .restart local v2    # "section":I
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 1154
    const/4 v0, 0x0

    goto :goto_0

    .line 1157
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCheckPointParamValid()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureAndLayoutCellView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;Landroid/view/View;II)V
    .locals 14
    .param p1, "actionEnum"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cellView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startCPI"    # I
    .param p4, "endCPI"    # I

    .prologue
    .line 489
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-nez v9, :cond_0

    .line 532
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    iget v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40e00000    # 7.0f

    div-float v6, v9, v10

    .line 492
    .local v6, "mediaActionHeight":F
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 493
    .local v5, "left":F
    :goto_1
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v5

    .line 494
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float/2addr v5, v9

    .line 495
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v5, v9

    .line 497
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v9

    invoke-direct {p0, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v7

    .line 498
    .local v7, "right":F
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float/2addr v7, v9

    .line 499
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDividerWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v7, v9

    .line 501
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    add-float v8, v9, v10

    .local v8, "top":F
    move v2, v8

    .line 503
    .local v2, "bottom":F
    sget-object v9, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$4;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 527
    :goto_2
    sub-float v9, v7, v5

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 528
    .local v4, "childWidth":I
    sub-float v9, v2, v8

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 529
    .local v3, "childHeight":I
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->measure(II)V

    .line 531
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-int v9, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-int v10, v10

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v11, v12

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 492
    .end local v2    # "bottom":F
    .end local v3    # "childHeight":I
    .end local v4    # "childWidth":I
    .end local v5    # "left":F
    .end local v7    # "right":F
    .end local v8    # "top":F
    :cond_1
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v10, p3, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v5

    goto/16 :goto_1

    .line 506
    .restart local v2    # "bottom":F
    .restart local v5    # "left":F
    .restart local v7    # "right":F
    .restart local v8    # "top":F
    :pswitch_0
    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v9, v6

    add-float/2addr v2, v9

    .line 507
    goto :goto_2

    .line 512
    :pswitch_1
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v5, v9

    .line 513
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v7, v9

    .line 514
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v9, v6

    add-float/2addr v8, v9

    .line 515
    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v6

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 516
    goto :goto_2

    .line 518
    :pswitch_2
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v5, v9

    .line 519
    iget v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v7, v9

    .line 520
    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v6

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    add-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 521
    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v9, v6

    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mNonMediaActionPadding:F

    sub-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 522
    goto :goto_2

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyTotalTimeChanged()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTotalTime:F

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->onTotalTimeChanged(F)V

    .line 308
    :cond_0
    return-void
.end method

.method private positionChildren([ILjava/util/Set;)V
    .locals 13
    .param p1, "showingIndex"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "actionToShowList":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 445
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 446
    aget v4, p1, v11

    .local v4, "i":I
    :goto_0
    aget v8, p1, v12

    if-gt v4, v8, :cond_4

    .line 447
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getAttachedActions()Ljava/util/List;

    move-result-object v5

    .line 448
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    if-eqz v5, :cond_3

    .line 449
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 450
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 451
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 453
    move v7, v4

    .local v7, "startCheckPointIndex":I
    move v3, v4

    .line 454
    .local v3, "endCheckPointIndex":I
    instance-of v8, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    if-nez v8, :cond_1

    instance-of v8, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    if-eqz v8, :cond_2

    .line 456
    :cond_1
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMediaActionRange(I)Landroid/util/Pair;

    move-result-object v6

    .line 457
    .local v6, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    .line 458
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 459
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 463
    .end local v6    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 464
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v1

    .line 465
    .local v1, "actionType":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    invoke-direct {p0, v1, v2, v7, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->measureAndLayoutCellView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;Landroid/view/View;II)V

    goto :goto_1

    .line 446
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v1    # "actionType":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "endCheckPointIndex":I
    .end local v7    # "startCheckPointIndex":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    :cond_4
    aget v8, p1, v11

    if-nez v8, :cond_5

    .line 473
    sget-object v9, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TAKEOFF:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v9, v8, v11, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->measureAndLayoutCellView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;Landroid/view/View;II)V

    .line 478
    .end local v4    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 479
    aget v4, p1, v11

    .restart local v4    # "i":I
    :goto_2
    aget v8, p1, v12

    if-gt v4, v8, :cond_7

    .line 480
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 481
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 482
    sget-object v8, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TILT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    invoke-direct {p0, v8, v2, v4, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->measureAndLayoutCellView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;Landroid/view/View;II)V

    .line 479
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 486
    .end local v2    # "childView":Landroid/view/View;
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method private processDrop(Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/DragEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1112
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumnIndexOfEvent(FF)I

    move-result v1

    .line 1114
    .local v1, "columnIndex":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 1116
    .local v2, "dragAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isAddActionAllowed(ILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1117
    const/4 v4, 0x0

    .line 1138
    :goto_0
    return v4

    .line 1119
    :cond_0
    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v3

    .line 1120
    .local v3, "dragActionSection":I
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1121
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    packed-switch v3, :pswitch_data_0

    .line 1138
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1124
    :pswitch_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1125
    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->addActionForColumn(ILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1126
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    goto :goto_1

    .line 1130
    :pswitch_1
    invoke-direct {p0, v2, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->addNavigationAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;I)V

    .line 1131
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->refreshView()V

    goto :goto_1

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 893
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedActionViewsCache:Ljava/util/Queue;

    check-cast p1, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 895
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRemovedPoiViewsCache:Ljava/util/Queue;

    check-cast p1, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeAllViewForCheckPoint(ILjava/util/Set;)V
    .locals 2
    .param p1, "index"    # I
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, "actionToShowList":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 536
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-eqz v0, :cond_6

    .line 537
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 538
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewAttachedAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 541
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 542
    :cond_2
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewAttachedAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 545
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    :cond_4
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewAttachedAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 549
    :cond_5
    if-nez p1, :cond_6

    .line 551
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewAttachedAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 555
    :cond_6
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removePoiView(I)V

    .line 556
    return-void
.end method

.method private removeMediaAction(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x0

    .line 1353
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v1

    .line 1354
    .local v1, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    const/4 v0, 0x0

    .line 1356
    .local v0, "actionToRemove":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getMediaActionRange(I)Landroid/util/Pair;

    move-result-object v8

    .line 1357
    .local v8, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    .line 1358
    .local v4, "mediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 1359
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1360
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    .line 1368
    :cond_0
    invoke-virtual {v1, v10}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1369
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTimeLineAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1372
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1373
    .local v2, "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v9

    .line 1374
    .local v9, "startMediaAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :goto_2
    if-nez v9, :cond_1

    .line 1375
    add-int/lit8 v11, p1, -0x1

    invoke-direct {p0, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v7

    .line 1376
    .local v7, "previousColumnStream":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v7, :cond_1

    .line 1377
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    .line 1380
    .end local v7    # "previousColumnStream":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :cond_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v2

    .line 1381
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeStopMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v10

    .line 1382
    .local v10, "stopMediaAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_2
    if-nez v10, :cond_3

    .line 1383
    add-int/lit8 v11, p1, 0x1

    invoke-direct {p0, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v6

    .line 1384
    .local v6, "nextColumnStream":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v6, :cond_3

    .line 1385
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->addStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    .line 1389
    .end local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v6    # "nextColumnStream":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v9    # "startMediaAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v10    # "stopMediaAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_3
    return-void

    .end local v4    # "mediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    move-object v8, v10

    .line 1356
    goto :goto_0

    .restart local v8    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    move-object v4, v10

    .line 1357
    goto :goto_1

    .line 1361
    .restart local v4    # "mediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_6
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, p1, :cond_0

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge p1, v11, :cond_0

    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v11, :cond_0

    .line 1362
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v5

    .line 1363
    .local v5, "newMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_3
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v3, v11, :cond_0

    .line 1364
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v11, v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1363
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v5    # "newMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .restart local v2    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :cond_7
    move-object v9, v10

    .line 1373
    goto :goto_2
.end method

.method private removeNavigationAction(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 1403
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1404
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1405
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeMediaAction(I)V

    .line 1406
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTiltAction(I)V

    .line 1407
    const/4 v2, 0x0

    .line 1408
    .local v2, "mediaMergeable":Z
    if-lez p1, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    .line 1409
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v4

    .line 1410
    .local v4, "previousMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v3

    .line 1411
    .local v3, "nextMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1413
    const/4 v2, 0x1

    .line 1416
    .end local v3    # "nextMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v4    # "previousMediaAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_0
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    .line 1417
    .local v1, "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeNavigatorAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 1419
    .end local v1    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .end local v2    # "mediaMergeable":Z
    :cond_1
    return-void
.end method

.method private removeNonVisibleViewAddVisibleView([I)V
    .locals 14
    .param p1, "showingIndex"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 383
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    if-nez v8, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 386
    .local v7, "viewToRemoveCheckPointIndexs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    if-eq v8, v13, :cond_5

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    if-eq v8, v13, :cond_5

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    aget v9, p1, v12

    if-ne v8, v9, :cond_2

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    aget v9, p1, v11

    if-eq v8, v9, :cond_5

    .line 387
    :cond_2
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    .local v2, "i":I
    :goto_1
    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    if-gt v2, v8, :cond_5

    .line 388
    aget v8, p1, v12

    if-lt v2, v8, :cond_3

    aget v8, p1, v11

    if-le v2, v8, :cond_4

    .line 389
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v2    # "i":I
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v1, "actionToShowList":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    aget v2, p1, v12

    .restart local v2    # "i":I
    :goto_2
    aget v8, p1, v11

    if-gt v2, v8, :cond_7

    .line 397
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getAttachedActions()Ljava/util/List;

    move-result-object v4

    .line 398
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    if-eqz v4, :cond_6

    .line 399
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 403
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    :cond_7
    aget v8, p1, v12

    if-nez v8, :cond_8

    .line 405
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAutoTakeOffAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_8
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 410
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 411
    .local v3, "index":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeAllViewForCheckPoint(ILjava/util/Set;)V

    goto :goto_3

    .line 416
    .end local v3    # "index":Ljava/lang/Integer;
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 417
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    .line 418
    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->setActionValueSavedListener(Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;)V

    .line 419
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getRecycledActionView()Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    move-result-object v10

    invoke-virtual {v9, v0, v10, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->getView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    move-result-object v5

    .line 420
    .local v5, "newChildView":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    instance-of v9, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    if-nez v9, :cond_b

    instance-of v9, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    if-eqz v9, :cond_c

    .line 423
    :cond_b
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {p0, v5, v12, v9, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_4

    .line 425
    :cond_c
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {p0, v5, v13, v9, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_4

    .line 431
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v5    # "newChildView":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    :cond_d
    aget v2, p1, v12

    :goto_5
    aget v8, p1, v11

    if-gt v2, v8, :cond_f

    .line 432
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v6

    .line 433
    .local v6, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v6, :cond_e

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e

    .line 434
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getRecycledPoiView()Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    move-result-object v9

    invoke-virtual {v8, v6, v9, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->getView(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    move-result-object v5

    .line 435
    .local v5, "newChildView":Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v5, v13, v8, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 431
    .end local v5    # "newChildView":Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 440
    .end local v6    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->positionChildren([ILjava/util/Set;)V

    goto/16 :goto_0
.end method

.method private removePoiView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 570
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;

    .line 571
    .local v0, "cell":Lcom/parrot/freeflight/flightplan/timeline/TimelinePoiCell;
    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->recycleView(Landroid/view/View;)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewInLayout(Landroid/view/View;)V

    .line 574
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 576
    :cond_0
    return-void
.end method

.method private removeTiltAction(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumn(I)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 1393
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeTimeLineAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1395
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTiltAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v1

    .line 1398
    .local v1, "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->removeTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 1400
    .end local v1    # "editor":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :cond_0
    return-void
.end method

.method private removeTimeLineAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 2
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 581
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->recycleView(Landroid/view/View;)V

    .line 583
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewInLayout(Landroid/view/View;)V

    .line 584
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v0    # "actionView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private removeViewAttachedAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 2
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 559
    if-eqz p1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    .line 561
    .local v0, "cell":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->recycleView(Landroid/view/View;)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeViewInLayout(Landroid/view/View;)V

    .line 564
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .end local v0    # "cell":Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;
    :cond_0
    return-void
.end method

.method private uniformToScale(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 333
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(FF)F

    move-result v0

    return v0
.end method

.method private uniformToScale(FF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "coeffi"    # F

    .prologue
    .line 329
    mul-float v0, p1, p2

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->drawPlaceHolder(Landroid/graphics/Canvas;)V

    .line 628
    return-void
.end method

.method public findNextWayPoint(I)I
    .locals 2
    .param p1, "currentCheckPointIndex"    # I

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1528
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1534
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1528
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1534
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTimeText(F)Ljava/lang/String;
    .locals 8
    .param p1, "seconds"    # F

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 851
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 852
    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 868
    :goto_0
    return-object v2

    .line 854
    :cond_0
    div-float v2, p1, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 855
    .local v0, "min":I
    rem-float v2, p1, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 858
    .local v1, "sec":I
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 859
    add-int/lit8 v0, v0, 0x1

    .line 860
    const/4 v1, 0x0

    .line 863
    :cond_1
    if-nez v0, :cond_2

    .line 864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d\""

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 865
    :cond_2
    if-nez v1, :cond_3

    .line 866
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d\'"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 868
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d\' %d\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 1057
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1088
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1065
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$402(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1066
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    goto :goto_0

    .line 1070
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mPlaceHolderParam:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->access$402(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I

    .line 1071
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    goto :goto_0

    .line 1075
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTopMargin:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mBottomMargin:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointRadius:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1077
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mDragEventX:F

    .line 1081
    :goto_1
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->detectPlaceHolder(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1085
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1086
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->processDrop(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, -0x1

    .line 679
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    if-gt v1, v2, :cond_2

    .line 680
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 681
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->drawColumnView(ILandroid/graphics/Canvas;)V

    .line 684
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    if-gt v0, v1, :cond_1

    .line 685
    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->drawColumnView(ILandroid/graphics/Canvas;)V

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->uniformToScale(F)F

    move-result v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->drawColumnView(ILandroid/graphics/Canvas;)V

    .line 692
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->autoInitColumnParam(I)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mStartDrawX:F

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->calibrateStartDrawX()V

    .line 350
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->invalidate()V

    .line 352
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->computerVisibleColumnIndex()[I

    move-result-object v0

    .line 353
    .local v0, "showingIndex":[I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeNonVisibleViewAddVisibleView([I)V

    .line 355
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    .line 356
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    .line 358
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 363
    .end local v0    # "showingIndex":[I
    :cond_3
    return-void
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mSelectedWPIndex:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->refreshView(I)V

    .line 188
    return-void
.end method

.method public refreshView(I)V
    .locals 1
    .param p1, "selectedWPIndex"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mSelectedWPIndex:I

    .line 192
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeAllViewsInLayout()V

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 199
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getChildCount()I

    move-result v0

    .line 204
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->recycleView(Landroid/view/View;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 208
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 209
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildPoiViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 210
    return-void
.end method

.method public saveActionValue(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 26
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mLeftmostColumn:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mRightmostColumn:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getColumnForAction(IILcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v6

    .line 1209
    .local v6, "columnIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1210
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v4

    .line 1211
    .local v4, "actionType":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    sget-object v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$4;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->refreshActionView(Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 1250
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$4;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 1281
    .end local v4    # "actionType":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .end local p1    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 1214
    .restart local v4    # "actionType":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .restart local p1    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :pswitch_2
    const/4 v13, 0x0

    .line 1215
    .local v13, "isRequestLayout":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 1216
    .local v5, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getActionDuration()F

    move-result v9

    .line 1217
    .local v9, "duration":F
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v21

    const v22, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_2

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v21

    sub-float v21, v21, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fb999999999999aL    # 0.1

    cmpl-double v21, v22, v24

    if-lez v21, :cond_6

    .line 1218
    :cond_2
    if-nez v6, :cond_3

    const/16 v17, 0x0

    .line 1219
    .local v17, "startX":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v21

    sub-float v8, v21, v17

    .line 1220
    .local v8, "delta":F
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTimeDurationDis(F)F

    move-result v21

    sub-float v8, v21, v8

    .line 1222
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v21, v22, v24

    if-lez v21, :cond_6

    .line 1223
    move v12, v6

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_4

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual/range {v22 .. v22}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v22

    add-float v22, v22, v8

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setEndPosition(F)V

    .line 1223
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1218
    .end local v8    # "delta":F
    .end local v12    # "i":I
    .end local v17    # "startX":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    add-int/lit8 v22, v6, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v17

    goto :goto_2

    .line 1227
    .restart local v8    # "delta":F
    .restart local v12    # "i":I
    .restart local v17    # "startX":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v21

    const v22, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_5

    .line 1228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTotalTime:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v21

    sub-float v21, v9, v21

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mTotalTime:F

    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->notifyTotalTimeChanged()V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mColumnParams:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTimeDuration(F)V

    .line 1232
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->removeAllViewsInLayout()V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 1234
    const/4 v13, 0x1

    .line 1237
    .end local v8    # "delta":F
    .end local v12    # "i":I
    .end local v17    # "startX":F
    :cond_6
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mChildActionViewMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;->refreshActionView(Lcom/parrot/freeflight/flightplan/timeline/TimelineActionCell;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    goto/16 :goto_0

    .line 1252
    .end local v5    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v9    # "duration":F
    .end local v13    # "isRequestLayout":Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;

    .local v14, "panoramaAction":Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;
    move-object/from16 v16, p1

    .line 1253
    check-cast v16, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    .line 1254
    .local v16, "rotateAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;->setHorizontalAngle(F)V

    .line 1255
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;->setHorizontalSpeed(F)V

    goto/16 :goto_1

    .line 1258
    .end local v14    # "panoramaAction":Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;
    .end local v16    # "rotateAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;

    .line 1259
    .local v7, "delayAction":Lcom/parrot/freeflight/flightplan/model/action/DelayAction;
    check-cast p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    .end local p1    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;->setDelay(F)V

    goto/16 :goto_1

    .line 1262
    .end local v7    # "delayAction":Lcom/parrot/freeflight/flightplan/model/action/DelayAction;
    .restart local p1    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :pswitch_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v10

    .line 1263
    .local v10, "editor1":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->getStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v15

    .line 1264
    .local v15, "photoAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :goto_4
    instance-of v0, v15, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v18, p1

    .line 1265
    check-cast v18, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    .local v18, "takePictureAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    move-object/from16 v21, v15

    .line 1266
    check-cast v21, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->setPeriod(F)V

    .line 1267
    check-cast v15, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    .end local v15    # "photoAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-virtual/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getResolution()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->setResolution(F)V

    goto/16 :goto_1

    .line 1263
    .end local v18    # "takePictureAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 1271
    .end local v10    # "editor1":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    :pswitch_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getActionStream(I)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;

    move-result-object v11

    .line 1272
    .local v11, "editor2":Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;->getTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v19

    .line 1273
    .local v19, "tiltAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :goto_5
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v20, p1

    .line 1274
    check-cast v20, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .local v20, "timelineTiltAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    move-object/from16 v21, v19

    .line 1275
    check-cast v21, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getRealAngle()F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->setVerticalAngle(F)V

    .line 1276
    check-cast v19, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .end local v19    # "tiltAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->setVerticalSpeed(F)V

    goto/16 :goto_1

    .line 1272
    .end local v20    # "timelineTiltAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    :cond_8
    const/16 v19, 0x0

    goto :goto_5

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1250
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public setActionEditor(Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWayPointActionProvider:Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;

    .line 235
    return-void
.end method

.method public setActionInterface(Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mActionListener:Ljava/lang/ref/WeakReference;

    .line 241
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mAdapter:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    .line 215
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->requestLayout()V

    .line 218
    :cond_0
    return-void
.end method

.method public setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 0
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 222
    return-void
.end method

.method public setProductCharacteristics(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMinAltitude:F

    .line 226
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mWpMaxAltitude:F

    .line 227
    return-void
.end method

.method public setSelectedWayPointIndex(I)V
    .locals 0
    .param p1, "selectedWPIndex"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->mSelectedWPIndex:I

    .line 231
    return-void
.end method
