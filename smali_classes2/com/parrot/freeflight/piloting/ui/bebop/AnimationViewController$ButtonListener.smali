.class Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;
.super Ljava/lang/Object;
.source "AnimationViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field private mAnimationId:I

.field private mButton:Lcom/parrot/freeflight/view/AAnimationButton;

.field private mLeftOption:F

.field private mRightOption:F

.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;IFF)V
    .locals 0
    .param p2, "button"    # Lcom/parrot/freeflight/view/AAnimationButton;
    .param p3, "animationId"    # I
    .param p4, "leftOption"    # F
    .param p5, "rightOption"    # F

    .prologue
    .line 277
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mButton:Lcom/parrot/freeflight/view/AAnimationButton;

    .line 279
    iput p3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mAnimationId:I

    .line 280
    iput p4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mLeftOption:F

    .line 281
    iput p5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mRightOption:F

    .line 282
    return-void
.end method


# virtual methods
.method public onCloseOptionsClicked()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton;

    .line 310
    return-void
.end method

.method public onLeftOptionClicked()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton;

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mAnimationId:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mLeftOption:F

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startAnimation(IF)V

    .line 298
    return-void
.end method

.method public onOpenOptionsClicked()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$000(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/view/AAnimationButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$000(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/view/AAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->closeOptions()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mButton:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton;

    .line 291
    return-void
.end method

.method public onRightOptionClicked()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton;

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mAnimationId:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->mRightOption:F

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startAnimation(IF)V

    .line 305
    return-void
.end method

.method public onStopClicked()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController$ButtonListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/AnimationViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->stopAnimations()V

    .line 315
    return-void
.end method
