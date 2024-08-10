.class Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;
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
    .line 156
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return-void

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$200(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->land()V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->takeOff()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
