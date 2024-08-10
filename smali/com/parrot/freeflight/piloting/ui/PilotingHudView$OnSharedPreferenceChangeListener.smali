.class public Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnSharedPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;


# direct methods
.method protected constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1323
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1346
    :cond_1
    :goto_1
    return-void

    .line 1323
    :sswitch_0
    const-string/jumbo v1, "preset_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "show_map"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "map_type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "show_framing_grid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "max_altitude"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1325
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updatePresetMode(I)V

    goto :goto_1

    .line 1330
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->isPilotingModeMap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$700(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1332
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1333
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$900(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    goto :goto_1

    .line 1337
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    goto :goto_1

    .line 1340
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1100(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    goto :goto_1

    .line 1343
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1200(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    goto :goto_1

    .line 1323
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d7f58e3 -> :sswitch_4
        -0x3fe0fcfd -> :sswitch_0
        -0x142d16e6 -> :sswitch_1
        0xaac9c3d -> :sswitch_2
        0x7179f97d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
