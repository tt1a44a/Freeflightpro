.class Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;
.super Ljava/lang/Object;
.source "FixedWingJoystickSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 65
    :cond_0
    return-void
.end method
