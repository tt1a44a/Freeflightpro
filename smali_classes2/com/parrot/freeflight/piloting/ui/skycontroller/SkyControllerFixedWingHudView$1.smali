.class Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;
.super Ljava/lang/Object;
.source "SkyControllerFixedWingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->initFixedWingButtonsOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    .line 100
    .local v0, "currentFlyingState":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerFixedWingHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->cancelLanding()V

    .line 103
    :cond_0
    return-void
.end method
