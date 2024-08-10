.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$1;
.super Ljava/lang/Object;
.source "QuadcopterModel.java"

# interfaces
.implements Lcom/parrot/freeflight/core/FollowMeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$002(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;)Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .line 192
    :cond_0
    return-void
.end method
