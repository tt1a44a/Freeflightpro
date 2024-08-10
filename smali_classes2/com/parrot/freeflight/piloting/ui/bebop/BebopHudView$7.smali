.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockedModeEntered()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLockedForFollowMe:Z

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePilotingModeNavigationButtons()V

    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onLockedModeEntered()V

    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/RecordingView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)V

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideJoysticks()V

    .line 372
    :cond_0
    return-void
.end method

.method public onLockedModeExited()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->onLockedModeExited()V

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/PilotingToolbarView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/RecordingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iput-boolean v1, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mLockedForFollowMe:Z

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updatePilotingModeNavigationButtons()V

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/followme/FollowMeViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->isAnimationsButtonsDisplayed()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)V

    .line 387
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$2600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$7;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showJoysticks()V

    .line 394
    :cond_1
    return-void
.end method
