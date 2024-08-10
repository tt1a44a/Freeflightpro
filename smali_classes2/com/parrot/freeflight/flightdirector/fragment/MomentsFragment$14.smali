.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$14;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->animateLoaderBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$14;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$14;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$2600(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 482
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 472
    return-void
.end method
