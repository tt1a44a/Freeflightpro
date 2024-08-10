.class Lcom/parrot/freeflight/followme/FollowMeViewController$4;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;


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
    .line 276
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressEnded()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1400(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    .line 285
    return-void
.end method

.method public onLongPressStarted()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1300(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    .line 280
    return-void
.end method

.method public onMovedDuringLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1500(Lcom/parrot/freeflight/followme/FollowMeViewController;Landroid/view/MotionEvent;)V

    .line 290
    return-void
.end method

.method public onTouchUpDuringLongPress()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$4;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$1600(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    .line 295
    return-void
.end method
