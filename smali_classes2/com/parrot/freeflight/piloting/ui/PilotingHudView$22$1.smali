.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$1;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->onMapReady(Lcom/parrot/freeflight/map/IMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$1;->this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$1;->this$1:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterMapMode()V

    .line 1368
    return-void
.end method
