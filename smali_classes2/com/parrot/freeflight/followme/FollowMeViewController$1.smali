.class Lcom/parrot/freeflight/followme/FollowMeViewController$1;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;


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
    .line 181
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftSlide(Lcom/parrot/freeflight/followme/widget/TrackLayout;)V
    .locals 1
    .param p1, "track"    # Lcom/parrot/freeflight/followme/widget/TrackLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/widget/TrackLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$300(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onRightSlide(Lcom/parrot/freeflight/followme/widget/TrackLayout;)V
    .locals 1
    .param p1, "track"    # Lcom/parrot/freeflight/followme/widget/TrackLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$000(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/widget/TrackLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$100(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$200(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/followme/widget/TrackLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->stopLookAt()V

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$1;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$300(Lcom/parrot/freeflight/followme/FollowMeViewController;)V

    goto :goto_0
.end method
