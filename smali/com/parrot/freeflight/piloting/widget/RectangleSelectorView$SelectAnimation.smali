.class Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
.super Ljava/lang/Object;
.source "RectangleSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAnimation"
.end annotation


# static fields
.field private static final APPEAR_ANIMATION:I = 0x0

.field private static final APPEAR_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final DASH_ANIMATION:I = 0x1

.field private static final DASH_ANIMATION_DURATION_MS:I = 0x1f4

.field private static final DASH_ANIMATION_FRAME_MIN_INTERVAL_MS:J = 0x8eL


# instance fields
.field private lastFrameTime:J

.field private final mAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgress:F

.field private final mType:I

.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;I)V
    .locals 6
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 456
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->lastFrameTime:J

    .line 457
    iput p2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mType:I

    .line 458
    if-nez p2, :cond_0

    .line 459
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->getAnimator(FFIJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    const/high16 v2, -0x3e600000    # -20.0f

    const/4 v3, -0x1

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->getAnimator(FFIJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .prologue
    .line 440
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->lastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
    .param p1, "x1"    # J

    .prologue
    .line 440
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->lastFrameTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .prologue
    .line 440
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mProgress:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 440
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mProgress:F

    return p1
.end method

.method private getAnimator(FFIJ)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "repeatCount"    # I
    .param p4, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 478
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mProgress:F

    .line 479
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 480
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;-><init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 495
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    new-instance v1, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;-><init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 504
    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 469
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$1002(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .line 474
    return-void
.end method
