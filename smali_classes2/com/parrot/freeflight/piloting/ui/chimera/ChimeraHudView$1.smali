.class Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;
.super Ljava/lang/Object;
.source "ChimeraHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;
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
    .line 147
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 151
    return-void
.end method
