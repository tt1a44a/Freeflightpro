.class Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;
.super Ljava/lang/Object;
.source "RectangleSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->getAnimator(FFIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$1100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$1100(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8e

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$202(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;F)F

    .line 490
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->invalidate()V

    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$1;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->access$1102(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;J)J

    .line 493
    :cond_1
    return-void
.end method
