.class Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RectangleSelectorView.java"


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
    .line 496
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$1000(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation$2;->this$1:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;->this$0:Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->access$1002(Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$SelectAnimation;

    .line 501
    :cond_0
    return-void
.end method
