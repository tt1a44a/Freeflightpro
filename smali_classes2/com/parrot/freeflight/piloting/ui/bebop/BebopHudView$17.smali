.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initBebopButtonsOnClickListeners()V
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
    .line 641
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/followme/FollowMeViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 647
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterStreamingMode()V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$17;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 651
    return-void
.end method
