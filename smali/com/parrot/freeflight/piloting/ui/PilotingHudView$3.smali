.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;


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
    .line 336
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraSettingsModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$202(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Z)Z

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$400(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V

    .line 343
    return-void
.end method
