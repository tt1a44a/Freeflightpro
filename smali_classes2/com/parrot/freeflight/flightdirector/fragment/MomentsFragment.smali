.class public Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "MomentsFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEMS_COUNT_ON_SCREEN:I = 0x6

.field private static final DEFAULT_MOMENTS_FRAMES_STEP:I = 0x1388

.field private static final UPDATE_PROGRESS_DELAY:I = 0x19


# instance fields
.field private checkSelectedItemPosition:Ljava/lang/Runnable;

.field private hidePlayButtonRunnable:Ljava/lang/Runnable;

.field private mAddButtonBottomLine:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAddButtonTopLine:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAddMomentButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBackwardButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mControlsLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mDuration:I

.field private mFileIndex:I

.field private mFilePath:Ljava/lang/String;

.field private mForwardButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsPreviouslyPlayed:Z

.field private mIsScrolledLeft:Z

.field private mIsScrolledRight:Z

.field private mItemsWidth:F

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLoaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlayButton:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlayerView:Landroid/widget/VideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScrollState:I

.field private mVideoPosition:I

.field private mVideoProgress:Landroid/widget/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWarningLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWidth:I

.field private updateProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledLeft:Z

    .line 66
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledRight:Z

    .line 103
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->hidePlayButtonRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->checkSelectedItemPosition:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mDuration:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mDuration:I

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddMomentButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->onPlayButtonClicked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->loadNextVideo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->loadPreviousVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mWarningLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Lcom/parrot/freeflight/flightdirector/view/MomentsView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mScrollState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mScrollState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsPreviouslyPlayed:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsPreviouslyPlayed:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLoaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledRight:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledRight:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledLeft:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledLeft:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mItemsWidth:F

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mItemsWidth:F

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private animateLoaderBg()V
    .locals 4

    .prologue
    .line 465
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 466
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 467
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 468
    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$14;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$14;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 484
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLoaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    return-void
.end method

.method private init(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 401
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 403
    .local v2, "videoCount":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    if-lez p1, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getHighlights(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 408
    .local v0, "highlightSegments":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    if-nez v0, :cond_1

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "highlightSegments":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .restart local v0    # "highlightSegments":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->stopPlayback()V

    .line 414
    iput v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoPosition:I

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 418
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z

    .line 419
    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFilePath:Ljava/lang/String;

    .line 420
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    .line 422
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->setVideoFilePath(Ljava/lang/String;Ljava/util/List;)V

    .line 423
    return-void

    .end local v0    # "highlightSegments":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 403
    goto :goto_0
.end method

.method private loadNextVideo()V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->saveMoments()V

    .line 428
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->resetProgress()V

    .line 430
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->init(I)V

    .line 432
    :cond_0
    return-void
.end method

.method private loadPreviousVideo()V
    .locals 2

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->saveMoments()V

    .line 437
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->resetProgress()V

    .line 439
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFileIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->init(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;-><init>()V

    .line 161
    .local v0, "fragment":Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    return-object v0
.end method

.method private onPlayButtonClicked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 549
    if-eqz p1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 551
    iput-boolean v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledRight:Z

    .line 552
    iput-boolean v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledLeft:Z

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 555
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 556
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->hidePlayButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 561
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->hidePlayButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 459
    iput v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoPosition:I

    .line 460
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 462
    return-void
.end method

.method private saveMoments()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->getSelectedHighLights()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->setHighlights(Ljava/lang/String;Ljava/util/List;)V

    .line 398
    return-void
.end method

.method private showMomentsWarning()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mWarningLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    return-void
.end method

.method private updateMomentsCounter(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 448
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getMaxMomentsCount(I)I

    move-result v0

    .line 449
    .local v0, "maxCount":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    const v2, 0x7f110221

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    if-lt p1, v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0500a3

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f050146

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 390
    const v0, 0x7f110223

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
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
    const/4 v7, 0x0

    .line 170
    const v3, 0x7f0c0098

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "view":Landroid/view/View;
    new-instance v3, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$RecyclerViewOnGestureListener;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$1;)V

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 175
    const v3, 0x7f0a0314

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    .line 176
    const v3, 0x7f0a0317

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    .line 177
    const v3, 0x7f0a0312

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mControlsLayout:Landroid/view/View;

    .line 178
    const v3, 0x7f0a0309

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    .line 179
    const v3, 0x7f0a0311

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    .line 180
    const v3, 0x7f0a030a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    .line 181
    const v3, 0x7f0a0319

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    .line 182
    const v3, 0x7f0a0318

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    .line 183
    const v3, 0x7f0a0316

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 184
    const v3, 0x7f0a0308

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    .line 185
    const v3, 0x7f0a0306

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddMomentButton:Landroid/widget/ImageView;

    .line 186
    const v3, 0x7f0a0307

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    .line 187
    const v3, 0x7f0a031b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mWarningLayout:Landroid/view/View;

    .line 188
    const v3, 0x7f0a031c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    .local v2, "warningTextView":Landroid/widget/TextView;
    const v3, 0x7f0a031a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "warningCloseIcon":Landroid/view/View;
    const v3, 0x7f0a030f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLoaderView:Landroid/view/View;

    .line 193
    new-instance v3, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    const/16 v4, 0x1388

    invoke-direct {v3, v4, p0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;-><init>(ILcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;)V

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    .line 194
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v7, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 195
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 196
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$4;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$5;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$6;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$6;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v3, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$7;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 231
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->cancelScanTask()V

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->clearBitmaps()V

    .line 381
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onDestroy()V

    .line 382
    return-void
.end method

.method public onHighlightClick(J)V
    .locals 3
    .param p1, "centerTime"    # J

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 499
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledRight:Z

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mIsScrolledLeft:Z

    .line 501
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onHighlightsChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "highlights":Ljava/util/List;, "Ljava/util/List<Lcom/muvee/mvdronecomposer/HighlightSegment;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->setHighlights(Ljava/util/List;)V

    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->setHighlights(Ljava/lang/String;Ljava/util/List;)V

    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getSegmentsCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->updateMomentsCounter(I)V

    .line 513
    return-void
.end method

.method public onHighlightsLimit()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->showMomentsWarning()V

    .line 493
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onPause()V

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoPosition:I

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mBackwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 374
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->saveMoments()V

    .line 375
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onResume()V

    .line 355
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoPosition:I

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 361
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartScan()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 517
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLoaderView:Landroid/view/View;

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mLoaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mControlsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddMomentButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    return-void
.end method

.method public onStopScan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->animateLoaderBg()V

    .line 534
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mControlsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->checkSelectedItemPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mMomentsView:Lcom/parrot/freeflight/flightdirector/view/MomentsView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightdirector/view/MomentsView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddMomentButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 543
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x4

    .line 236
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonTopLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mAddButtonBottomLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$8;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$9;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$9;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$10;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mPlayerView:Landroid/widget/VideoView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$11;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$12;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->mVideoProgress:Landroid/widget/SeekBar;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$13;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$13;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->init(I)V

    .line 350
    return-void
.end method
