.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;
.implements Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowMeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    return-void
.end method


# virtual methods
.method public onBackButtonPressed()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->onBackPressed()Z

    .line 1570
    return-void
.end method

.method public onDisclaimerAgreed()V
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->changeFollowMeState(I)V

    .line 1575
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->stopListeningFollowMeGps()V

    .line 1576
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->hideFollowMeChecking()V

    .line 1578
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->shouldDisplayTuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1581
    :cond_0
    return-void
.end method

.method public onFollowMeLockTutoAgreed()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->onBackPressed()Z

    .line 1586
    return-void
.end method
