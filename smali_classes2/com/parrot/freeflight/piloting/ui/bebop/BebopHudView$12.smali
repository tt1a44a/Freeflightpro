.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$12;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initBebopButtonsOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$12;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$12;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->stopPilotedPOI()V

    .line 588
    return-void
.end method
