.class Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;
.super Ljava/lang/Object;
.source "TimeLapseSettingsHudView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->initButtonsAndMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 126
    int-to-float v1, p2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v0, v1, v2

    .line 127
    .local v0, "interval":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v1

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$400(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110125

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$502(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;Z)Z

    .line 134
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$502(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;Z)Z

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setTimeLapseInterval(F)V

    .line 140
    return-void
.end method
