.class Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;
.super Ljava/lang/Object;
.source "BebopJoystickSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 96
    :cond_0
    return-void
.end method