.class Lcom/parrot/freeflight/followme/FollowMeViewController$7;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;ZLcom/parrot/freeflight/piloting/ui/TouchController;Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;[Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;)V
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
    .line 368
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$7;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$7;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1702(Lcom/parrot/freeflight/followme/FollowMeViewController;Z)Z

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$7;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->dismiss()V

    .line 376
    :cond_0
    return v2
.end method
