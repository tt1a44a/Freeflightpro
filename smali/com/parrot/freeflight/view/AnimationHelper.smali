.class public Lcom/parrot/freeflight/view/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# static fields
.field private static final DEFAULT_FADE_DURATION:J = 0xc8L

.field private static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/view/AnimationHelper;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideWithFadeOut(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/view/AnimationHelper;->hideWithFadeOut(Landroid/view/View;J)V

    .line 37
    return-void
.end method

.method public static hideWithFadeOut(Landroid/view/View;J)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # J

    .prologue
    .line 40
    sget-object v0, Lcom/parrot/freeflight/view/AnimationHelper;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/view/AnimationHelper;->hideWithFadeOut(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    .line 41
    return-void
.end method

.method public static hideWithFadeOut(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 44
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 45
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/parrot/freeflight/view/AnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/view/AnimationHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 54
    return-void

    .line 44
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static showWithFadeIn(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 15
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;J)V

    .line 16
    return-void
.end method

.method public static showWithFadeIn(Landroid/view/View;J)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # J

    .prologue
    .line 19
    sget-object v0, Lcom/parrot/freeflight/view/AnimationHelper;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/view/AnimationHelper;->showWithFadeIn(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    .line 20
    return-void
.end method

.method public static showWithFadeIn(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 23
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 24
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/parrot/freeflight/view/AnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/view/AnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 33
    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
