.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;
.super Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;
.source "BebopHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSharedPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1551
    const-string v1, "hand_launch"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getHandLaunchEnabled()Z

    move-result v0

    .line 1554
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setMotionDetectionState(Z)V

    .line 1556
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$OnSharedPreferenceChangeListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMotionState()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->updateMotionState(IZ)V

    .line 1560
    .end local v0    # "enabled":Z
    :goto_1
    return-void

    .line 1556
    .restart local v0    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1558
    .end local v0    # "enabled":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_1
.end method
