.class Lcom/parrot/freeflight/view/AAnimationButton$6;
.super Ljava/lang/Object;
.source "AAnimationButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;IILandroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/AAnimationButton;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;

.field final synthetic val$viewToShow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/AAnimationButton;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/AAnimationButton;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/parrot/freeflight/view/AAnimationButton$6;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    iput-object p2, p0, Lcom/parrot/freeflight/view/AAnimationButton$6;->val$viewToShow:Landroid/view/View;

    iput-object p3, p0, Lcom/parrot/freeflight/view/AAnimationButton$6;->val$openAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$6;->val$viewToShow:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton$6;->val$openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 407
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 397
    return-void
.end method
