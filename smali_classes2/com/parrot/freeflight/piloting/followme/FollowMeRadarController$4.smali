.class Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;
.super Ljava/lang/Object;
.source "FollowMeRadarController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRefresh()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$400(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$4;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$500(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V

    .line 283
    return-void
.end method
