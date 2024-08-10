.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;


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
    .line 361
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAltitudeClick()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;->onSettingsButtonClick(Landroid/view/View;I)V

    .line 387
    return-void
.end method

.method public onDistanceClick()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;->onSettingsButtonClick(Landroid/view/View;I)V

    .line 392
    return-void
.end method

.method public onPresetModeClick()V
    .locals 4

    .prologue
    .line 364
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v0

    .line 366
    .local v0, "currentMode":I
    packed-switch v0, :pswitch_data_0

    .line 372
    const/4 v1, 0x0

    .line 375
    .local v1, "newMode":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->setPresetMode(I)V

    .line 376
    new-instance v3, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-static {v1, v3, v2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->applyValues(ILcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 377
    return-void

    .line 368
    .end local v1    # "newMode":I
    :pswitch_0
    const/4 v1, 0x1

    .line 369
    .restart local v1    # "newMode":I
    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSpeedClick()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;->onSettingsButtonClick(Landroid/view/View;I)V

    .line 382
    return-void
.end method
