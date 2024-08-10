.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initButtonsOnClickListeners(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

.field final synthetic val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;->val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 769
    const-string v0, "PilotingHudView"

    const-string v1, "click on settings button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;->val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;->onSettingsButtonClick(Landroid/view/View;I)V

    .line 772
    return-void
.end method
