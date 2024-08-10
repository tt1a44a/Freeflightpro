.class Lcom/parrot/freeflight/followme/FollowMeViewController$8;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;->setFlyingButtonOnClickListener()V
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
    .line 424
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$8;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$8;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2100(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$8;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$2100(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeClickListener;->onStopClicked()V

    .line 430
    :cond_0
    return-void
.end method
