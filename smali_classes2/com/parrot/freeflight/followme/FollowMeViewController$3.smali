.class Lcom/parrot/freeflight/followme/FollowMeViewController$3;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView$OnSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewSelectionStarted()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$700(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/RectangleSelectorView;->resetSelection()V

    .line 247
    return-void
.end method

.method public onPointSelected(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$802(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)Z

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$900(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setLongPressAvailable(Z)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1100(Lcom/parrot/freeflight/followme/FollowMeViewController;FF)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;->onTargetSelected(FF)V

    .line 257
    :cond_0
    return-void
.end method

.method public onZoneSelected(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1200(Lcom/parrot/freeflight/followme/FollowMeViewController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$802(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)Z

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$900(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/TouchController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->setLongPressAvailable(Z)V

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;->onTargetSelected(Landroid/graphics/RectF;)V

    .line 269
    :cond_0
    return-void
.end method
