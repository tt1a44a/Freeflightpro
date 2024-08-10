.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$1;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingModeChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V

    .line 324
    return-void
.end method
