.class Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$3;
.super Ljava/lang/Object;
.source "FollowMeRadarController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 271
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$3;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$3;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$300(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/piloting/ui/radar/RadarFollowMeView;->setCompassRotation(FZ)V

    .line 275
    return-void
.end method
