.class Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;
.super Landroid/os/CountDownTimer;
.source "PhotoSettingsHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->showImage(Z)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setIndeterminate(Z)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->takePicture()V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mTimerCountdownView:Landroid/widget/ImageView;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/view/AnimationHelper;->hideWithFadeOut(Landroid/view/View;J)V

    .line 127
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3$1;->this$1:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setText(Ljava/lang/String;)V

    .line 117
    return-void
.end method
