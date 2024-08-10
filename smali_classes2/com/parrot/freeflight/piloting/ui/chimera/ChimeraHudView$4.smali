.class Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$4;
.super Ljava/lang/Object;
.source "ChimeraHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->initChimeraButtonsOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$500(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->stopPilotedPOI()V

    .line 190
    return-void
.end method
